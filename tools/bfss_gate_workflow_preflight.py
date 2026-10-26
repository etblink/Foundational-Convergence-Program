#!/usr/bin/env python3
"""Offline static preflight for a proposed BFSS GitHub Actions gate workflow.

Check syntax with PyYAML AND require agreement between the workflow filename
'gateNN.yml' and the displayed 'Gate NN' title. The latter specifically
catches the Gate87 inherited Gate86 display title. The parser catches
mis-indented multiline shell/Python blocks like the historical Gate85 failure.

Usage:
  python tools/bfss_gate_workflow_preflight.py PATH_TO_NEW_WORKFLOW.yml
  python tools/bfss_gate_workflow_preflight.py --self-test

This is a *workflow-source preflight*, NOT acceptance of any mathematics.
No network access, Git writes, Actions API, cache or Lean are required.
PyYAML is an explicit offline tooling dependency; if unavailable fail closed.
"""
import argparse
import re
from pathlib import Path
from tempfile import TemporaryDirectory


def audit(path: Path) -> None:
    try:
        import yaml
    except ImportError as exc:
        raise RuntimeError("PyYAML is required for fail-closed YAML syntax checking") from exc

    src = path.read_text(encoding="utf-8")
    filename_match = re.search(r"gate([0-9]+)\.ya?ml$", path.name, re.IGNORECASE)
    if filename_match is None:
        raise ValueError("Workflow filename must terminate in gateNN.yml")
    gate = int(filename_match.group(1))

    # A YAML parser alone cannot detect a plausible but stale display title.
    title_line = re.search(r"(?m)^name:\s*([^\r\n]+)\s*$", src)
    if title_line is None:
        raise ValueError("Missing workflow display name")
    title = title_line.group(1).strip().strip('"\'')
    title_match = re.search(r"\bGate\s+([0-9]+)\b", title, re.IGNORECASE)
    if title_match is None or int(title_match.group(1)) != gate:
        raise ValueError(f"Workflow title/gate mismatch: {path.name!r} vs {title!r}")

    document = yaml.safe_load(src)
    if not isinstance(document, dict):
        raise ValueError("Workflow YAML must be a mapping")
    if document.get("name") != title:
        raise ValueError("Parsed workflow name does not match header")
    if not isinstance(document.get("jobs"), dict) or not document["jobs"]:
        raise ValueError("No jobs mapping found")
    # PyYAML's YAML 1.1 treats 'on' as boolean True. Both forms are handled.
    on = document.get("on", document.get(True))
    if on is None:
        raise ValueError("No on: trigger declaration found")
    for job, spec in document["jobs"].items():
        if not isinstance(spec, dict):
            raise ValueError(f"Malformed job {job}")
        for step in spec.get("steps", []):
            if not isinstance(step, dict):
                raise ValueError(f"Malformed job step {step!r}")
            if "run" in step and not isinstance(step["run"], str):
                raise ValueError(f"Non-string run: block in job {job}")
    # The historical Gate89 #2 copied the commit blob pin but forgot its
    # matching worktree blob pin. A checked-in source cannot have two hashes.
    pins: dict[str, dict[str, str]] = {}
    for kind, pattern in (
        ("commit", r'git rev-parse HEAD:([^\s)]+)\)"\s*=\s*"([0-9a-f]{40})"'),
        ("worktree", r'git hash-object --no-filters ([^\s)]+)\)"\s*=\s*"([0-9a-f]{40})"'),
    ):
        for match in re.finditer(pattern, src):
            file_path, sha = match.groups()
            slot = pins.setdefault(file_path, {})
            if kind in slot and slot[kind] != sha:
                raise ValueError(f"Conflicting {kind} pins for {file_path}")
            slot[kind] = sha
    for file_path, pair in pins.items():
        if "commit" in pair and "worktree" in pair:
            if pair["commit"] != pair["worktree"]:
                raise ValueError(
                    f"Commit/worktree source hash mismatch for {file_path}: "
                    f"{pair['commit']} != {pair['worktree']}"
                )

    print(f"WORKFLOW_SOURCE_PREFLIGHT_PASS gate={gate} path={path}")


def self_test() -> None:
    with TemporaryDirectory() as d:
        good = Path(d) / "bfss-example-gate87.yml"
        good.write_text(
            "name: BFSS Example Strict Gate 87\non:\n  workflow_dispatch:\n"
            "jobs:\n  verify:\n    runs-on: ubuntu-latest\n"
            "    steps:\n      - run: |\n          echo ok\n",
            encoding="utf-8",
        )
        audit(good)
        good.write_text(good.read_text().replace("Gate 87", "Gate 86"))
        try:
            audit(good)
        except ValueError as e:
            assert "mismatch" in str(e)
        else:
            raise AssertionError("Title mismatch not caught")
        good.write_text(
            "name: BFSS Example Strict Gate 87\non:\n  workflow_dispatch:\n"
            "jobs:\n  verify:\n    runs-on: ubuntu-latest\n"
            "    steps:\n      - run: |\n          python3 - <<'PY'\n"
            "  print('incorrectly dedented Python')\n          PY\n",
            encoding="utf-8",
        )
        try:
            audit(good)
        except Exception:
            pass  # Expected parser failure: invalid YAML scalar indentation.
        else:
            raise AssertionError("Invalid multiline block indentation not caught")
        # Regression: Gate89 #2 had contradictory pins for one file.
        good.write_text(
            "name: BFSS Example Strict Gate 87\non:\n  workflow_dispatch:\n"
            "jobs:\n  verify:\n    runs-on: ubuntu-latest\n"
            "    steps:\n      - run: |\n"
            '          test "$(git rev-parse HEAD:foo.py)" = "' + "a"*40 + '"\n'
            '          test "$(git hash-object --no-filters foo.py)" = "' + "b"*40 + '"\n',
            encoding="utf-8",
        )
        try:
            audit(good)
        except ValueError as e:
            assert "source hash mismatch" in str(e)
        else:
            raise AssertionError("Contradictory source pins not caught")
        good.write_text(good.read_text().replace("b"*40, "a"*40))
        audit(good)
    print("WORKFLOW_PREFLIGHT_SELF_TEST_PASS")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("workflows", nargs="*", type=Path)
    parser.add_argument("--self-test", action="store_true")
    args = parser.parse_args()
    if args.self_test:
        self_test()
    if not args.workflows and not args.self_test:
        parser.error("Supply workflow path(s) or --self-test")
    for p in args.workflows:
        audit(p)


if __name__ == "__main__":
    main()
