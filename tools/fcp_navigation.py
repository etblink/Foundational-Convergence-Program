#!/usr/bin/env python3
"""Deterministic FCP repository navigation refresh, integrity check, and summary."""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
from pathlib import Path
from typing import Any, Iterable


SCHEMA_VERSION = "0.1.0"
SCHEMA_PATH = "meta/FCP_NAVIGATION_SCHEMA_0_1_0.json"
INDEX_PATH = "meta/FCP_CANONICAL_INDEX.json"
OPERATION_REGISTRY_PATH = "meta/FCP_OPERATION_REGISTRY.jsonl"
ARTIFACT_REGISTRY_PATH = "meta/FCP_ARTIFACT_REGISTRY.jsonl"
HANDOFF_PATH = "handoffs/FCP_REPOSITORY_NAVIGATION_LAYER_HANDOFF_0_1_0.md"

SELF_EXCLUDED_PATHS = {
    INDEX_PATH,
    OPERATION_REGISTRY_PATH,
    ARTIFACT_REGISTRY_PATH,
}

NAVIGATION_LAYER_PATHS = {
    "governance/FCP_REPOSITORY_NAVIGATION_LAYER_PREREGISTRATION_0_1_0.md",
    SCHEMA_PATH,
    INDEX_PATH,
    OPERATION_REGISTRY_PATH,
    ARTIFACT_REGISTRY_PATH,
    "tools/fcp_navigation.py",
    HANDOFF_PATH,
}

INDEX_REQUIRED_FIELDS = {
    "schema_version",
    "authority_model",
    "indexed_scientific_baseline",
    "navigation_coverage",
    "core_authorities",
    "current_method",
    "program_state",
    "open_dockets",
    "read_profiles",
    "registries",
}

OPERATION_REQUIRED_FIELDS = {
    "schema_version",
    "operation_id",
    "display_name",
    "operation_class",
    "status",
    "method_version",
    "base_commit",
    "result_commit",
    "routing_commit",
    "input_paths",
    "output_paths",
    "canonical_evidence_paths",
    "handoff_path",
    "supersedes",
    "superseded_by",
    "downstream_consumers",
    "next_operations",
}

ARTIFACT_REQUIRED_FIELDS = {
    "schema_version",
    "path",
    "blob",
    "byte_count",
    "git_mode",
    "object_type",
    "top_level_class",
}

CAPSULE_REQUIRED_FIELDS = {
    "capsule_schema_version",
    "operation_id",
    "status",
    "indexed_scientific_baseline_commit",
    "method_version",
    "must_read",
    "outputs",
    "open_dockets",
    "next_recommended_operation",
    "forbidden_next_actions",
}

READ_PROFILE_IDS = {
    "GENERAL_PROJECT_ORIENTATION",
    "SOURCE_INTAKE",
    "FRAMEWORK_TAXONOMY",
    "PAIRWISE_COMPARISON",
    "RECURRENCE",
    "EXTERNAL_AUDIT",
}

SHA1_RE = re.compile(r"^[0-9a-f]{40}$")
CAPSULE_BEGIN = "<!-- FCP_HANDOFF_CAPSULE_BEGIN -->"
CAPSULE_END = "<!-- FCP_HANDOFF_CAPSULE_END -->"


class NavigationError(RuntimeError):
    """Raised for deterministic navigation failures."""


def git(repo: Path, *args: str, input_text: str | None = None) -> str:
    process = subprocess.run(
        ["git", *args],
        cwd=repo,
        input=input_text,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        encoding="utf-8",
        errors="strict",
        check=False,
    )
    if process.returncode != 0:
        command = "git " + " ".join(args)
        detail = process.stderr.strip() or process.stdout.strip()
        raise NavigationError(f"{command} failed: {detail}")
    return process.stdout


def repository_root() -> Path:
    process = subprocess.run(
        ["git", "rev-parse", "--show-toplevel"],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        encoding="utf-8",
        errors="strict",
        check=False,
    )
    if process.returncode != 0:
        raise NavigationError("run this tool from within the FCP Git repository")
    return Path(process.stdout.strip()).resolve()


def resolve_commit(repo: Path, ref: str) -> str:
    commit = git(repo, "rev-parse", "--verify", f"{ref}^{{commit}}").strip()
    if not SHA1_RE.fullmatch(commit):
        raise NavigationError(f"resolved ref is not a SHA-1 commit: {ref}")
    return commit


def commit_tree(repo: Path, commit: str) -> str:
    tree = git(repo, "show", "-s", "--format=%T", commit).strip()
    if not SHA1_RE.fullmatch(tree):
        raise NavigationError(f"invalid tree identity for commit {commit}")
    return tree


def commit_message(repo: Path, commit: str) -> str:
    return git(repo, "show", "-s", "--format=%s", commit).rstrip("\r\n")


def git_is_ancestor(repo: Path, ancestor: str, descendant: str) -> bool:
    process = subprocess.run(
        ["git", "merge-base", "--is-ancestor", ancestor, descendant],
        cwd=repo,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        encoding="utf-8",
        errors="strict",
        check=False,
    )
    if process.returncode == 0:
        return True
    if process.returncode == 1:
        return False
    detail = process.stderr.strip() or process.stdout.strip()
    raise NavigationError(f"git merge-base --is-ancestor failed: {detail}")


def blob_identity(repo: Path, commit: str, path: str) -> str:
    blob = git(repo, "rev-parse", "--verify", f"{commit}:{path}").strip()
    if not SHA1_RE.fullmatch(blob):
        raise NavigationError(f"invalid blob identity for {path} at {commit}")
    object_type = git(repo, "cat-file", "-t", blob).strip()
    if object_type != "blob":
        raise NavigationError(f"core authority is not a blob: {path}")
    return blob


def _ls_tree_entries(repo: Path, commit: str) -> list[tuple[str, str, str, str]]:
    process = subprocess.run(
        ["git", "ls-tree", "-r", "-z", "--full-tree", commit],
        cwd=repo,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=False,
    )
    if process.returncode != 0:
        detail = process.stderr.decode("utf-8", errors="replace").strip()
        raise NavigationError(f"git ls-tree failed: {detail}")

    entries: list[tuple[str, str, str, str]] = []
    for raw_entry in process.stdout.split(b"\0"):
        if not raw_entry:
            continue
        metadata, raw_path = raw_entry.split(b"\t", 1)
        mode, object_type, object_id = metadata.decode("ascii").split(" ")
        path = raw_path.decode("utf-8", errors="strict")
        entries.append((mode, object_type, object_id, path))
    return entries


def _object_sizes(repo: Path, object_ids: Iterable[str]) -> dict[str, int]:
    unique_ids = sorted(set(object_ids))
    if not unique_ids:
        return {}
    query = "\n".join(unique_ids) + "\n"
    output = git(
        repo,
        "cat-file",
        "--batch-check=%(objectname) %(objecttype) %(objectsize)",
        input_text=query,
    )
    sizes: dict[str, int] = {}
    for line in output.splitlines():
        object_id, object_type, raw_size = line.split(" ")
        if object_type != "blob":
            raise NavigationError(f"tracked object is not a blob: {object_id}")
        sizes[object_id] = int(raw_size)
    if set(sizes) != set(unique_ids):
        raise NavigationError("Git object-size query returned an incomplete object set")
    return sizes


def artifact_records_for_ref(repo: Path, commit: str) -> list[dict[str, Any]]:
    entries = [
        entry
        for entry in _ls_tree_entries(repo, commit)
        if entry[1] == "blob" and entry[3] not in SELF_EXCLUDED_PATHS
    ]
    sizes = _object_sizes(repo, (entry[2] for entry in entries))
    records: list[dict[str, Any]] = []
    for mode, object_type, object_id, path in sorted(entries, key=lambda item: item[3]):
        top_level_class = path.split("/", 1)[0] if "/" in path else "ROOT"
        records.append(
            {
                "blob": object_id,
                "byte_count": sizes[object_id],
                "git_mode": mode,
                "object_type": object_type,
                "path": path,
                "schema_version": SCHEMA_VERSION,
                "top_level_class": top_level_class,
            }
        )
    return records


def stable_json(value: Any, *, indent: int | None = None) -> str:
    return json.dumps(
        value,
        ensure_ascii=False,
        sort_keys=True,
        indent=indent,
        separators=(",", ":") if indent is None else None,
    )


def write_text_atomic(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".tmp")
    with temporary.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(text)
    os.replace(temporary, path)


def write_json(path: Path, value: Any) -> None:
    write_text_atomic(path, stable_json(value, indent=2) + "\n")


def write_jsonl(path: Path, records: Iterable[dict[str, Any]]) -> None:
    write_text_atomic(path, stable_jsonl(records))


def stable_jsonl(records: Iterable[dict[str, Any]]) -> str:
    return "".join(stable_json(record) + "\n" for record in records)


def load_json(path: Path) -> Any:
    raw = path.read_bytes()
    if b"\r" in raw:
        raise NavigationError(f"non-LF line ending in {path.as_posix()}")
    if not raw.endswith(b"\n"):
        raise NavigationError(f"missing final LF in {path.as_posix()}")
    return json.loads(raw.decode("utf-8"))


def load_jsonl(path: Path) -> list[dict[str, Any]]:
    raw = path.read_bytes()
    if b"\r" in raw:
        raise NavigationError(f"non-LF line ending in {path.as_posix()}")
    if not raw.endswith(b"\n"):
        raise NavigationError(f"missing final LF in {path.as_posix()}")
    records: list[dict[str, Any]] = []
    for line_number, raw_line in enumerate(raw.splitlines(), start=1):
        if not raw_line:
            raise NavigationError(f"blank JSONL record at {path.as_posix()}:{line_number}")
        value = json.loads(raw_line.decode("utf-8"))
        if not isinstance(value, dict):
            raise NavigationError(f"JSONL record is not an object at {path.as_posix()}:{line_number}")
        records.append(value)
    return records


def refresh(repo: Path, ref: str) -> int:
    commit = resolve_commit(repo, ref)
    tree = commit_tree(repo, commit)
    message = commit_message(repo, commit)
    index_file = repo / INDEX_PATH
    index = load_json(index_file)
    if not isinstance(index, dict):
        raise NavigationError("canonical index must be a JSON object")
    if index.get("schema_version") != SCHEMA_VERSION:
        raise NavigationError("canonical index schema version is incompatible")

    artifact_records = artifact_records_for_ref(repo, commit)

    baseline = index["indexed_scientific_baseline"]
    baseline["commit"] = commit
    baseline["tree"] = tree
    baseline["message"] = message

    for authority in index["core_authorities"]:
        authority["blob"] = blob_identity(repo, commit, authority["path"])

    method_artifact = index["current_method"]["artifact"]
    method_artifact["blob"] = blob_identity(repo, commit, method_artifact["path"])

    coverage = index["navigation_coverage"]
    coverage["artifact_record_count"] = len(artifact_records)
    coverage["operation_record_count"] = len(load_jsonl(repo / OPERATION_REGISTRY_PATH))

    write_jsonl(repo / ARTIFACT_REGISTRY_PATH, artifact_records)
    write_json(index_file, index)

    print(f"REFRESHED_BASELINE_COMMIT = {commit}")
    print(f"REFRESHED_BASELINE_TREE = {tree}")
    print(f"ARTIFACT_RECORD_COUNT = {len(artifact_records)}")
    return 0


def _require(condition: bool, errors: list[str], message: str) -> None:
    if not condition:
        errors.append(message)


def _is_nullable_sha1(value: Any) -> bool:
    return value is None or (isinstance(value, str) and SHA1_RE.fullmatch(value) is not None)


def validate_schema(schema: Any) -> list[str]:
    errors: list[str] = []
    _require(isinstance(schema, dict), errors, "schema document is not an object")
    if not isinstance(schema, dict):
        return errors
    _require(schema.get("schema_version") == SCHEMA_VERSION, errors, "schema version mismatch")
    definitions = schema.get("$defs")
    _require(isinstance(definitions, dict), errors, "schema $defs is missing")
    if isinstance(definitions, dict):
        for family in ("CANONICAL_INDEX", "OPERATION_RECORD", "ARTIFACT_RECORD", "HANDOFF_CAPSULE"):
            _require(family in definitions, errors, f"schema record family missing: {family}")
    return errors


def validate_index_shape(index: Any) -> list[str]:
    errors: list[str] = []
    _require(isinstance(index, dict), errors, "canonical index is not an object")
    if not isinstance(index, dict):
        return errors
    _require(index.get("schema_version") == SCHEMA_VERSION, errors, "index schema version mismatch")
    _require(INDEX_REQUIRED_FIELDS.issubset(index), errors, "index required top-level fields are incomplete")

    authority = index.get("authority_model", {})
    expected_authority = {
        "git": "PROVENANCE_AUTHORITY",
        "canonical_markdown": "SCIENTIFIC_AND_GOVERNANCE_AUTHORITY",
        "structured_navigation": "DERIVED_NAVIGATION_ONLY",
        "conflict_rule": "UNDERLYING_CANONICAL_ARTIFACT_WINS",
    }
    _require(authority == expected_authority, errors, "authority model differs from frozen hierarchy")

    baseline = index.get("indexed_scientific_baseline", {})
    _require(isinstance(baseline, dict), errors, "indexed baseline is not an object")
    if isinstance(baseline, dict):
        _require(baseline.get("repository") == "etblink/Foundational-Convergence-Program", errors, "indexed repository mismatch")
        _require(isinstance(baseline.get("commit"), str) and SHA1_RE.fullmatch(baseline["commit"]) is not None, errors, "invalid indexed commit")
        _require(isinstance(baseline.get("tree"), str) and SHA1_RE.fullmatch(baseline["tree"]) is not None, errors, "invalid indexed tree")
        _require(isinstance(baseline.get("message"), str), errors, "invalid indexed message")

    coverage = index.get("navigation_coverage", {})
    _require(isinstance(coverage, dict), errors, "navigation coverage is not an object")
    if isinstance(coverage, dict):
        _require(
            coverage.get("artifact_inventory_scope")
            == "ENTIRE_TRACKED_INDEXED_BASELINE_TREE_EXCLUDING_SELF_REFERENTIAL_NAVIGATION_FILES",
            errors,
            "artifact inventory scope mismatch",
        )
        _require(coverage.get("operation_registry_scope") == "CURRENT_DEPENDENCY_CLOSURE", errors, "operation registry scope mismatch")
        _require(coverage.get("historical_operation_completeness_claimed") is False, errors, "historical completeness must be false")
        _require(
            coverage.get("self_excluded_paths") == sorted(SELF_EXCLUDED_PATHS),
            errors,
            "self-excluded path set mismatch",
        )

    core = index.get("core_authorities")
    _require(isinstance(core, list), errors, "core authorities must be an array")
    if isinstance(core, list):
        _require(bool(core), errors, "core authorities must not be empty")
        ids = [record.get("authority_id") for record in core if isinstance(record, dict)]
        _require(len(ids) == len(core), errors, "core authority record is not an object")
        _require(len(set(ids)) == len(ids), errors, "duplicate core authority ID")
        for record in core:
            if isinstance(record, dict):
                _require(isinstance(record.get("authority_id"), str) and bool(record["authority_id"]), errors, "core authority ID is invalid")
                _require(isinstance(record.get("path"), str) and bool(record["path"]), errors, f"core authority path is invalid: {record.get('authority_id')}")
                _require(isinstance(record.get("blob"), str) and SHA1_RE.fullmatch(record["blob"]) is not None, errors, f"core authority blob is invalid: {record.get('authority_id')}")

    current_method = index.get("current_method", {})
    _require(isinstance(current_method, dict), errors, "current method is not an object")
    if isinstance(current_method, dict):
        _require(isinstance(current_method.get("version"), str) and bool(current_method["version"]), errors, "current method version is invalid")
        _require(isinstance(current_method.get("status"), str) and bool(current_method["status"]), errors, "current method status is invalid")
        _require(isinstance(current_method.get("artifact"), dict), errors, "current method artifact is missing")
        if isinstance(current_method.get("artifact"), dict):
            artifact = current_method["artifact"]
            _require(isinstance(artifact.get("path"), str) and bool(artifact["path"]), errors, "current method artifact path is invalid")
            _require(isinstance(artifact.get("blob"), str) and SHA1_RE.fullmatch(artifact["blob"]) is not None, errors, "current method artifact blob is invalid")
        evidence_paths = current_method.get("evidence_paths")
        _require(isinstance(evidence_paths, list) and all(isinstance(path, str) for path in evidence_paths), errors, "current method evidence paths are invalid")

    program_state = index.get("program_state", {})
    _require(isinstance(program_state, dict), errors, "program state is not an object")
    if isinstance(program_state, dict):
        _require(bool(program_state), errors, "program state must not be empty")

    dockets = index.get("open_dockets")
    _require(isinstance(dockets, list), errors, "open dockets must be an array")
    if isinstance(dockets, list):
        docket_ids = [record.get("docket_id") for record in dockets if isinstance(record, dict)]
        _require(len(docket_ids) == len(dockets), errors, "open docket record is not an object")
        _require(len(set(docket_ids)) == len(docket_ids), errors, "duplicate open docket ID")
        for docket in dockets:
            if isinstance(docket, dict):
                _require(isinstance(docket.get("docket_id"), str) and bool(docket["docket_id"]), errors, "open docket ID is invalid")
                _require(isinstance(docket.get("status"), str) and bool(docket["status"]), errors, f"open docket status is invalid: {docket.get('docket_id')}")
                evidence_paths = docket.get("evidence_paths")
                _require(isinstance(evidence_paths, list) and all(isinstance(path, str) for path in evidence_paths), errors, f"open docket evidence paths are invalid: {docket.get('docket_id')}")

    profiles = index.get("read_profiles")
    _require(isinstance(profiles, dict), errors, "read profiles must be an object")
    if isinstance(profiles, dict):
        _require(READ_PROFILE_IDS.issubset(profiles), errors, "required read profiles are incomplete")
        for profile_id, paths in profiles.items():
            _require(isinstance(paths, list) and paths and all(isinstance(path, str) for path in paths), errors, f"invalid read profile: {profile_id}")

    registries = index.get("registries", {})
    _require(isinstance(registries, dict), errors, "registries object is missing")
    if isinstance(registries, dict):
        expected = {
            "schema": SCHEMA_PATH,
            "operations": OPERATION_REGISTRY_PATH,
            "artifacts": ARTIFACT_REGISTRY_PATH,
        }
        _require(registries == expected, errors, "registry path map mismatch")
    return errors


def validate_artifact_records(records: list[dict[str, Any]]) -> list[str]:
    errors: list[str] = []
    paths: list[str] = []
    for index, record in enumerate(records, start=1):
        _require(ARTIFACT_REQUIRED_FIELDS.issubset(record), errors, f"artifact record {index} missing required fields")
        _require(record.get("schema_version") == SCHEMA_VERSION, errors, f"artifact record {index} schema mismatch")
        path = record.get("path")
        _require(isinstance(path, str) and bool(path), errors, f"artifact record {index} has invalid path")
        if isinstance(path, str):
            paths.append(path)
            _require(path not in SELF_EXCLUDED_PATHS, errors, f"self-excluded artifact path present: {path}")
        _require(isinstance(record.get("blob"), str) and SHA1_RE.fullmatch(record["blob"]) is not None, errors, f"artifact record {index} has invalid blob")
        _require(isinstance(record.get("byte_count"), int) and record["byte_count"] >= 0, errors, f"artifact record {index} has invalid byte count")
        _require(isinstance(record.get("git_mode"), str), errors, f"artifact record {index} has invalid Git mode")
        _require(record.get("object_type") == "blob", errors, f"artifact record {index} is not a blob")
        _require(isinstance(record.get("top_level_class"), str), errors, f"artifact record {index} has invalid top-level class")
    _require(len(paths) == len(set(paths)), errors, "duplicate artifact path")
    _require(paths == sorted(paths), errors, "artifact records are not path-sorted")
    return errors


def validate_operation_records(records: list[dict[str, Any]]) -> list[str]:
    errors: list[str] = []
    operation_ids: list[str] = []
    array_fields = (
        "input_paths",
        "output_paths",
        "supersedes",
        "superseded_by",
        "downstream_consumers",
        "next_operations",
        "canonical_evidence_paths",
    )
    for index, record in enumerate(records, start=1):
        _require(OPERATION_REQUIRED_FIELDS.issubset(record), errors, f"operation record {index} missing required fields")
        _require(record.get("schema_version") == SCHEMA_VERSION, errors, f"operation record {index} schema mismatch")
        operation_id = record.get("operation_id")
        _require(isinstance(operation_id, str) and bool(operation_id), errors, f"operation record {index} has invalid ID")
        if isinstance(operation_id, str):
            operation_ids.append(operation_id)
        for field in ("display_name", "operation_class", "status"):
            _require(isinstance(record.get(field), str) and bool(record[field]), errors, f"operation {operation_id} has invalid {field}")
        _require(record.get("method_version") is None or isinstance(record.get("method_version"), str), errors, f"operation {operation_id} has invalid method version")
        for field in ("base_commit", "result_commit", "routing_commit"):
            _require(_is_nullable_sha1(record.get(field)), errors, f"operation {operation_id} has invalid {field}")
        for field in array_fields:
            value = record.get(field)
            _require(isinstance(value, list) and all(isinstance(item, str) for item in value), errors, f"operation {operation_id} has invalid {field}")
            if isinstance(value, list):
                _require(len(value) == len(set(value)), errors, f"operation {operation_id} has duplicate {field}")
        handoff = record.get("handoff_path")
        _require(handoff is None or isinstance(handoff, str), errors, f"operation {operation_id} has invalid handoff path")
    _require(len(operation_ids) == len(set(operation_ids)), errors, "duplicate operation ID")
    _require(operation_ids == sorted(operation_ids), errors, "operation records are not ID-sorted")
    return errors


def _cycle_exists(adjacency: dict[str, list[str]]) -> bool:
    visiting: set[str] = set()
    visited: set[str] = set()

    def visit(node: str) -> bool:
        if node in visiting:
            return True
        if node in visited:
            return False
        visiting.add(node)
        for target in adjacency.get(node, []):
            if visit(target):
                return True
        visiting.remove(node)
        visited.add(node)
        return False

    return any(visit(node) for node in adjacency)


def parse_handoff_capsule(path: Path) -> dict[str, Any]:
    text = path.read_text(encoding="utf-8")
    if text.count(CAPSULE_BEGIN) != 1 or text.count(CAPSULE_END) != 1:
        raise NavigationError("handoff capsule sentinels must occur exactly once")
    begin = text.index(CAPSULE_BEGIN) + len(CAPSULE_BEGIN)
    end = text.index(CAPSULE_END)
    if begin >= end:
        raise NavigationError("handoff capsule sentinels are out of order")
    body = text[begin:end]
    match = re.fullmatch(r"\s*```json\n(.*?)\n```\s*", body, flags=re.DOTALL)
    if not match:
        raise NavigationError("handoff capsule must contain exactly one JSON fenced block")
    value = json.loads(match.group(1))
    if not isinstance(value, dict):
        raise NavigationError("handoff capsule JSON is not an object")
    return value


def validate_capsule(capsule: dict[str, Any]) -> list[str]:
    errors: list[str] = []
    _require(CAPSULE_REQUIRED_FIELDS.issubset(capsule), errors, "handoff capsule required fields are incomplete")
    _require(capsule.get("capsule_schema_version") == SCHEMA_VERSION, errors, "handoff capsule schema mismatch")
    _require(isinstance(capsule.get("operation_id"), str) and bool(capsule["operation_id"]), errors, "handoff capsule operation is invalid")
    _require(isinstance(capsule.get("status"), str) and bool(capsule["status"]), errors, "handoff capsule status is invalid")
    _require(isinstance(capsule.get("indexed_scientific_baseline_commit"), str) and SHA1_RE.fullmatch(capsule["indexed_scientific_baseline_commit"]) is not None, errors, "handoff capsule baseline commit is invalid")
    _require(isinstance(capsule.get("method_version"), str) and bool(capsule["method_version"]), errors, "handoff capsule method version is invalid")
    for field in ("must_read", "outputs", "open_dockets", "forbidden_next_actions"):
        value = capsule.get(field)
        _require(isinstance(value, list) and all(isinstance(item, str) for item in value), errors, f"handoff capsule {field} is invalid")
    _require(isinstance(capsule.get("next_recommended_operation"), str), errors, "handoff capsule next operation is invalid")
    return errors


def check(repo: Path, ref: str) -> int:
    categories: dict[str, list[str]] = {
        "NAVIGATION_SCHEMA": [],
        "CANONICAL_INDEX": [],
        "ARTIFACT_REGISTRY": [],
        "OPERATION_REGISTRY": [],
        "HANDOFF_CAPSULE": [],
        "DETERMINISTIC_SERIALIZATION": [],
        "GIT_ANCESTRY": [],
        "REFERENTIAL_INTEGRITY": [],
    }

    schema: Any = None
    index: Any = None
    artifact_records: list[dict[str, Any]] = []
    operation_records: list[dict[str, Any]] = []
    capsule: dict[str, Any] | None = None

    try:
        schema = load_json(repo / SCHEMA_PATH)
        categories["NAVIGATION_SCHEMA"].extend(validate_schema(schema))
        _require((repo / SCHEMA_PATH).read_text(encoding="utf-8") == stable_json(schema, indent=2) + "\n", categories["DETERMINISTIC_SERIALIZATION"], "schema serialization is not canonical")
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        categories["NAVIGATION_SCHEMA"].append(str(exc))

    try:
        index = load_json(repo / INDEX_PATH)
        categories["CANONICAL_INDEX"].extend(validate_index_shape(index))
        _require((repo / INDEX_PATH).read_text(encoding="utf-8") == stable_json(index, indent=2) + "\n", categories["DETERMINISTIC_SERIALIZATION"], "index serialization is not canonical")
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        categories["CANONICAL_INDEX"].append(str(exc))

    try:
        artifact_records = load_jsonl(repo / ARTIFACT_REGISTRY_PATH)
        categories["ARTIFACT_REGISTRY"].extend(validate_artifact_records(artifact_records))
        _require((repo / ARTIFACT_REGISTRY_PATH).read_text(encoding="utf-8") == stable_jsonl(artifact_records), categories["DETERMINISTIC_SERIALIZATION"], "artifact-registry serialization is not canonical")
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        categories["ARTIFACT_REGISTRY"].append(str(exc))

    try:
        operation_records = load_jsonl(repo / OPERATION_REGISTRY_PATH)
        categories["OPERATION_REGISTRY"].extend(validate_operation_records(operation_records))
        _require((repo / OPERATION_REGISTRY_PATH).read_text(encoding="utf-8") == stable_jsonl(operation_records), categories["DETERMINISTIC_SERIALIZATION"], "operation-registry serialization is not canonical")
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        categories["OPERATION_REGISTRY"].append(str(exc))

    try:
        capsule = parse_handoff_capsule(repo / HANDOFF_PATH)
        categories["HANDOFF_CAPSULE"].extend(validate_capsule(capsule))
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        categories["HANDOFF_CAPSULE"].append(str(exc))

    if isinstance(index, dict):
        try:
            requested_commit = resolve_commit(repo, ref)
            baseline = index["indexed_scientific_baseline"]
            indexed_commit = baseline["commit"]
            _require(requested_commit == indexed_commit, categories["REFERENTIAL_INTEGRITY"], "--ref does not match indexed baseline commit")
            resolved_indexed_commit = resolve_commit(repo, indexed_commit)
            _require(resolved_indexed_commit == indexed_commit, categories["REFERENTIAL_INTEGRITY"], "indexed baseline commit does not resolve exactly")
            _require(commit_tree(repo, indexed_commit) == baseline["tree"], categories["REFERENTIAL_INTEGRITY"], "indexed baseline tree mismatch")
            _require(commit_message(repo, indexed_commit) == baseline["message"], categories["REFERENTIAL_INTEGRITY"], "indexed baseline message mismatch")

            expected_artifacts = artifact_records_for_ref(repo, indexed_commit)
            _require(artifact_records == expected_artifacts, categories["REFERENTIAL_INTEGRITY"], "artifact registry differs from exact indexed tree facts")

            artifact_by_path = {record["path"]: record for record in artifact_records if isinstance(record.get("path"), str)}
            core = index.get("core_authorities", [])
            for authority in core:
                path = authority.get("path")
                blob = authority.get("blob")
                _require(path in artifact_by_path, categories["REFERENTIAL_INTEGRITY"], f"core authority missing from artifact registry: {path}")
                if path in artifact_by_path:
                    _require(blob == artifact_by_path[path]["blob"], categories["REFERENTIAL_INTEGRITY"], f"core authority blob mismatch: {path}")
                _require(blob == blob_identity(repo, indexed_commit, path), categories["REFERENTIAL_INTEGRITY"], f"core authority Git blob mismatch: {path}")

            method_artifact = index.get("current_method", {}).get("artifact", {})
            method_path = method_artifact.get("path")
            _require(method_path in artifact_by_path, categories["REFERENTIAL_INTEGRITY"], "current Method artifact is absent from artifact registry")
            if method_path in artifact_by_path:
                _require(method_artifact.get("blob") == artifact_by_path[method_path]["blob"], categories["REFERENTIAL_INTEGRITY"], "current Method artifact blob mismatch")

            coverage = index.get("navigation_coverage", {})
            _require(coverage.get("artifact_record_count") == len(artifact_records), categories["REFERENTIAL_INTEGRITY"], "artifact record count mismatch")
            _require(coverage.get("operation_record_count") == len(operation_records), categories["REFERENTIAL_INTEGRITY"], "operation record count mismatch")

            operation_by_id = {record["operation_id"]: record for record in operation_records if isinstance(record.get("operation_id"), str)}
            operation_ids = set(operation_by_id)
            artifact_paths = set(artifact_by_path)

            for record in operation_records:
                operation_id = record["operation_id"]
                for field in ("supersedes", "superseded_by", "downstream_consumers", "next_operations"):
                    for reference in record.get(field, []):
                        _require(reference in operation_ids, categories["REFERENTIAL_INTEGRITY"], f"unknown operation reference {reference} in {operation_id}.{field}")
                for field in ("input_paths", "output_paths", "canonical_evidence_paths"):
                    for path in record.get(field, []):
                        _require(path in artifact_paths, categories["REFERENTIAL_INTEGRITY"], f"unknown artifact reference {path} in {operation_id}.{field}")
                handoff = record.get("handoff_path")
                if handoff is not None:
                    _require(handoff in artifact_paths, categories["REFERENTIAL_INTEGRITY"], f"unknown handoff artifact {handoff} in {operation_id}")
                for field in ("base_commit", "result_commit", "routing_commit"):
                    commit = record.get(field)
                    if commit is not None:
                        try:
                            _require(resolve_commit(repo, commit) == commit, categories["REFERENTIAL_INTEGRITY"], f"non-exact commit reference {commit} in {operation_id}.{field}")
                        except NavigationError as exc:
                            categories["REFERENTIAL_INTEGRITY"].append(str(exc))

                base_commit = record.get("base_commit")
                result_commit = record.get("result_commit")
                routing_commit = record.get("routing_commit")
                if base_commit is not None and result_commit is not None:
                    try:
                        _require(
                            git_is_ancestor(repo, base_commit, result_commit),
                            categories["GIT_ANCESTRY"],
                            f"chronology violation: {operation_id}.base_commit is not an ancestor of result_commit",
                        )
                    except NavigationError as exc:
                        categories["GIT_ANCESTRY"].append(str(exc))
                if result_commit is not None and routing_commit is not None:
                    try:
                        _require(
                            git_is_ancestor(repo, result_commit, routing_commit),
                            categories["GIT_ANCESTRY"],
                            f"chronology violation: {operation_id}.result_commit is not an ancestor of routing_commit",
                        )
                    except NavigationError as exc:
                        categories["GIT_ANCESTRY"].append(str(exc))

                for older in record.get("supersedes", []):
                    _require(operation_id != older, categories["REFERENTIAL_INTEGRITY"], f"supersession self-edge: {operation_id}")
                    if older in operation_by_id:
                        _require(operation_id in operation_by_id[older].get("superseded_by", []), categories["REFERENTIAL_INTEGRITY"], f"missing reciprocal superseded_by edge: {older} -> {operation_id}")
                for newer in record.get("superseded_by", []):
                    _require(operation_id != newer, categories["REFERENTIAL_INTEGRITY"], f"supersession self-edge: {operation_id}")
                    if newer in operation_by_id:
                        _require(operation_id in operation_by_id[newer].get("supersedes", []), categories["REFERENTIAL_INTEGRITY"], f"missing reciprocal supersedes edge: {newer} -> {operation_id}")

            supersession_graph = {record["operation_id"]: list(record.get("supersedes", [])) for record in operation_records}
            _require(not _cycle_exists(supersession_graph), categories["REFERENTIAL_INTEGRITY"], "supersession cycle detected")

            program_state = index.get("program_state", {})
            for field in (
                "current_operation",
                "predecessor_operation",
                "latest_completed_science_operation",
                "latest_completed_external_audit_chain",
                "latest_completed_maintenance_operation",
                "next_recommended_operation",
            ):
                reference = program_state.get(field)
                _require(reference in operation_ids, categories["REFERENTIAL_INTEGRITY"], f"unknown program-state operation: {field}={reference}")

            for profile_id, paths in index.get("read_profiles", {}).items():
                for path in paths:
                    _require(path in artifact_paths or path in NAVIGATION_LAYER_PATHS, categories["REFERENTIAL_INTEGRITY"], f"unknown read-profile path {path} in {profile_id}")

            docket_ids = {record.get("docket_id") for record in index.get("open_dockets", [])}
            for docket in index.get("open_dockets", []):
                for path in docket.get("evidence_paths", []):
                    _require(path in artifact_paths, categories["REFERENTIAL_INTEGRITY"], f"unknown docket evidence path: {path}")

            if capsule is not None:
                _require(capsule.get("indexed_scientific_baseline_commit") == indexed_commit, categories["REFERENTIAL_INTEGRITY"], "capsule baseline differs from index")
                _require(capsule.get("method_version") == index.get("current_method", {}).get("version"), categories["REFERENTIAL_INTEGRITY"], "capsule method differs from index")
                _require(capsule.get("next_recommended_operation") in operation_ids, categories["REFERENTIAL_INTEGRITY"], "capsule next operation is unknown")
                for docket_id in capsule.get("open_dockets", []):
                    _require(docket_id in docket_ids, categories["REFERENTIAL_INTEGRITY"], f"capsule open docket is unknown: {docket_id}")
                for field in ("must_read", "outputs"):
                    for path in capsule.get(field, []):
                        _require(path in artifact_paths or path in NAVIGATION_LAYER_PATHS, categories["REFERENTIAL_INTEGRITY"], f"capsule path is unknown: {path}")
                        _require((repo / path).is_file(), categories["REFERENTIAL_INTEGRITY"], f"capsule path is absent from working tree: {path}")
        except (KeyError, TypeError, NavigationError) as exc:
            categories["REFERENTIAL_INTEGRITY"].append(str(exc))

    all_pass = all(not errors for errors in categories.values())
    for category, errors in categories.items():
        print(f"{category} = {'PASS' if not errors else 'FAIL'}")
    print(f"NAVIGATION_INTEGRITY = {'PASS' if all_pass else 'FAIL'}")
    if not all_pass:
        for category, errors in categories.items():
            for error in errors:
                print(f"{category}: {error}", file=sys.stderr)
        return 1
    return 0


def summary(repo: Path) -> int:
    index = load_json(repo / INDEX_PATH)
    operations = load_jsonl(repo / OPERATION_REGISTRY_PATH)
    artifacts = load_jsonl(repo / ARTIFACT_REGISTRY_PATH)
    baseline = index["indexed_scientific_baseline"]
    state = index["program_state"]
    print(f"INDEXED_BASELINE = {baseline['commit']} ({baseline['tree']})")
    print(f"CURRENT_METHOD = {index['current_method']['version']}")
    print(f"LATEST_NUMBERED_PHASE = {state['latest_numbered_phase']}")
    print(f"LATEST_COMPLETED_SCIENCE = {state['latest_completed_science_operation']}")
    print(f"LATEST_COMPLETED_AUDIT = {state['latest_completed_external_audit_chain']}")
    print(f"LATEST_COMPLETED_MAINTENANCE = {state['latest_completed_maintenance_operation']}")
    print(f"NEXT_RECOMMENDED_OPERATION = {state['next_recommended_operation']}")
    print(f"OPEN_DOCKET_COUNT = {len(index['open_dockets'])}")
    print(f"OPERATION_RECORD_COUNT = {len(operations)}")
    print(f"ARTIFACT_RECORD_COUNT = {len(artifacts)}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    refresh_parser = subparsers.add_parser("refresh", help="refresh deterministic Git facts")
    refresh_parser.add_argument("--ref", required=True, help="Git ref identifying the scientific baseline")

    check_parser = subparsers.add_parser("check", help="check navigation integrity")
    check_parser.add_argument("--ref", required=True, help="Git ref expected to equal the indexed baseline")

    subparsers.add_parser("summary", help="print compact repository orientation")
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    arguments = parser.parse_args(argv)
    try:
        repo = repository_root()
        if arguments.command == "refresh":
            return refresh(repo, arguments.ref)
        if arguments.command == "check":
            return check(repo, arguments.ref)
        if arguments.command == "summary":
            return summary(repo)
        parser.error("unknown command")
    except (OSError, UnicodeError, json.JSONDecodeError, NavigationError) as exc:
        print(f"NAVIGATION_INTEGRITY = FAIL", file=sys.stderr)
        print(str(exc), file=sys.stderr)
        return 1
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
