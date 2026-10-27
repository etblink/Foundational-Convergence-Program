#!/usr/bin/env python3
"""Regenerate FCP BFSS local Lean import dependencies (not theorem provenance).

Stdlib only; run from an exact FCP research-branch checkout. Import edges do
not imply theorem invocation, strict CI acceptance, or physical validation.
"""
from __future__ import annotations

import argparse
from collections import defaultdict, deque
import hashlib
import json
from pathlib import Path
import re
import sys

ROOTS = (
    "experiments/openai-math-su2-concrete-potential",
    "experiments/openai-math-su2-physical-domain",
)
IMPORT = re.compile(r"^\s*import\s+(.+?)\s*$")
NAME = re.compile(r"^[A-Za-z_][A-Za-z_0-9.']*$")


def lean_imports(source: str) -> list[str]:
    """Extract imports and skip nested Lean comments (including line comments)."""
    out = []
    level = 0
    for line in source.splitlines():
        clean = []
        i = 0
        while i < len(line):
            two = line[i:i + 2]
            if two == "/-":
                level += 1
                i += 2
            elif two == "-/" and level:
                level -= 1
                i += 2
            elif level:
                i += 1
            elif two == "--":
                break
            else:
                clean.append(line[i])
                i += 1
        m = IMPORT.fullmatch("".join(clean))
        if m:
            out.extend(w for w in m.group(1).split() if NAME.fullmatch(w))
    return sorted(set(out))


def git_blob_sha(source: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()


def scan(repo: Path) -> dict:
    files = sorted(p for root in ROOTS for p in (repo / root).rglob("*.lean"))
    files = [p for p in files if p.is_file()]
    index = defaultdict(list)
    for path in files:
        index[path.stem].append(path)
    result = {}
    for path in files:
        rel = path.relative_to(repo).as_posix()
        data = path.read_bytes()
        imports = lean_imports(data.decode("utf-8"))
        local, external, ambiguous = [], [], {}
        for module in imports:
            candidates = index[module]
            if len(candidates) == 1:
                local.append(candidates[0].relative_to(repo).as_posix())
            elif len(candidates) > 1:
                ambiguous[module] = [c.relative_to(repo).as_posix() for c in candidates]
            else:
                external.append(module)
        result[rel] = {
            "module": path.stem, "blob_sha": git_blob_sha(data),
            "imports": imports, "local": sorted(set(local)),
            "external": external, "ambiguous": ambiguous,
        }
    return result


def closure(nodes: dict, focus: list[str], direction: str, depth: int) -> dict:
    byname = defaultdict(list)
    reverse = defaultdict(set)
    for path, info in nodes.items():
        byname[info["module"]].append(path)
        for dep in info["local"]:
            reverse[dep].add(path)
    starts = []
    for item in focus:
        found = [item] if item in nodes else byname[item]
        if len(found) != 1:
            raise ValueError(f"Focus {item!r} resolved to {len(found)} modules; use exact path")
        starts.extend(found)
    dist = {path: 0 for path in starts}
    q = deque(starts)
    while q:
        path = q.popleft()
        if dist[path] >= depth:
            continue
        neighbors = nodes[path]["local"] if direction == "deps" else reverse[path]
        for dep in neighbors:
            if dep not in dist:
                dist[dep] = dist[path] + 1
                q.append(dep)
    return dist


def short(name: str) -> str:
    for prefix in ("SU2BFSSPhysicalDomain", "SU2BFSS", "FCPM4F9"):
        if name.startswith(prefix):
            name = name[len(prefix):]
            break
    return name.removesuffix("Probe")


def render(nodes: dict, selected: dict, fmt: str) -> str:
    paths = sorted(selected, key=lambda p: (selected[p], p))
    ids = {p: f"N{i}" for i, p in enumerate(paths)}
    edges = sorted((a, b) for a in paths for b in nodes[a]["local"] if b in ids)
    if fmt == "json":
        return json.dumps({
            "edge_semantics": "importer -> prerequisite, not theorem dependency",
            "nodes": [{"path": p, "depth": selected[p], **nodes[p]} for p in paths],
            "edges": [{"importer": a, "prerequisite": b} for a, b in edges],
        }, indent=2) + "\n"
    if fmt == "dot":
        lines = ['digraph BFSS {', '  rankdir=LR;', '  node [shape=box];']
        for p in paths:
            title = short(nodes[p]["module"]).replace('"', "'")
            lines.append(f'  {ids[p]} [label="{title}"];')
        lines += [f'  {ids[a]} -> {ids[b]};' for a, b in edges]
        return "\n".join([*lines, "}"]) + "\n"
    lines = ["flowchart LR"]
    for p in paths:
        title = short(nodes[p]["module"]).replace('"', "'")
        lines.append(f'  {ids[p]}["{title}"]')
    lines += [f'  {ids[a]} --> {ids[b]}' for a, b in edges]
    if fmt == "mermaid":
        return "\n".join(lines) + "\n"
    out = ["# BFSS generated Lean import dependency view", "",
           "**Edges:** importer → imported prerequisite. Not proof-use or acceptance.", "",
           "```mermaid", *lines, "```", "",
           "| Module | Imported local nodes shown | Git blob |",
           "|---|---:|---|"]
    out += [f'| `{nodes[p]["module"]}` | {sum(x in ids for x in nodes[p]["local"])} | `{nodes[p]["blob_sha"][:12]}` |'
            for p in paths]
    return "\n".join(out) + "\n"


def validate_receipts(nodes: dict, manifest: Path) -> list[str]:
    if not manifest.exists():
        return [f"Qualification manifest missing: {manifest}"]
    data = json.loads(manifest.read_text(encoding="utf-8"))
    errors = []
    entries = data.get("qualified", [])
    for item in entries:
        path = item["path"]
        if path not in nodes:
            errors.append(f"QUALIFIED PATH MISSING: {path}")
        elif nodes[path]["blob_sha"] != item["blob_sha"]:
            errors.append(f"STALE QUALIFICATION: {path}: expected {item['blob_sha']}; current {nodes[path]['blob_sha']}")
        if item.get("basis") not in ("strict-log-inspected", "historical-audit-recorded"):
            errors.append(f"UNKNOWN QUALIFICATION BASIS: {path}")
        if not item.get("source_url"):
            errors.append(f"MISSING EVIDENCE URL: {path}")
    if len({x["path"] for x in entries}) != len(entries):
        errors.append("DUPLICATE QUALIFICATION PATHS")
    return errors


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--repo", type=Path, default=Path(__file__).resolve().parents[1])
    ap.add_argument("--focus", action="append", default=[], help="Lean module basename or repo-relative path (repeatable)")
    ap.add_argument("--direction", choices=("deps", "dependents"), default="deps")
    ap.add_argument("--depth", type=int, default=3)
    ap.add_argument("--format", choices=("markdown", "mermaid", "dot", "json"), default="markdown")
    ap.add_argument("--max-nodes", type=int, default=90)
    ap.add_argument("--check-evidence", action="store_true")
    ap.add_argument("--manifest", type=Path, default=None)
    args = ap.parse_args()
    if args.depth < 0:
        ap.error("Depth must be nonnegative")
    repo = args.repo.resolve()
    nodes = scan(repo)
    if args.check_evidence:
        manifest = args.manifest or repo / "meta" / "bfss-dependency-qualification.json"
        errors = validate_receipts(nodes, manifest)
        if errors:
            print("\n".join(errors), file=sys.stderr)
            return 2
        count = len(json.loads(manifest.read_text(encoding="utf-8"))["qualified"])
        print(f"Verified {count} Git blob qualification pins.", file=sys.stderr)
    if not args.focus:
        print(f"Indexed {len(nodes)} local Lean files; provide --focus to draw a bounded graph.", file=sys.stderr)
        return 0
    try:
        selected = closure(nodes, args.focus, args.direction, args.depth)
    except ValueError as err:
        ap.error(str(err))
    if len(selected) > args.max_nodes:
        ap.error(f"{len(selected)} nodes exceeds --max-nodes {args.max_nodes}; reduce depth")
    print(render(nodes, selected, args.format), end="")
    return 0


if __name__ == "__main__":
    sys.exit(main())
