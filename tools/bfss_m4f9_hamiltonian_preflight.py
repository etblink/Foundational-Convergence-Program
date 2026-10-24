#!/usr/bin/env python3
"""BFSS M4F9 H1: source-exact original physical Hamiltonian ancestry plan.

This is a *preflight*, not a theorem prover. It verifies original Git blobs,
the AY→BH dependency DAG, the source theorem inventories, and the 1/16
normalization. Lean and the strict axiom validator remain authoritative.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
from pathlib import Path

ROOT = Path("experiments/openai-math-su2-physical-domain")
# The following Git blob objects are audited historic pinned proofs and
# are unchanged on the active M4F8 research branch as of DE4 Gate #5.
STAGES = [
    ("AY", "SU2BFSSPhysicalDomainL6H5E8AYOriginalPhysicalHilbertChargeGraphProbe", "050f744b3d00b0424fd59192340b98ed2b51406c", ()),
    ("AZ", "SU2BFSSPhysicalDomainL6H5E8AZOriginalPhysicalChargeDomainDensityReductionProbe", "cd900c47e2bcbccd0c8761df1beb69553430b68a", ("AY",)),
    ("BA", "SU2BFSSPhysicalDomainL6H5E8BAOriginalPhysicalChargeUnconditionalDensityProbe", "1af9c320d547631e7d428010f220ea5e22c8e45b", ("AZ",)),
    ("BB", "SU2BFSSPhysicalDomainL6H5E8BBOriginalPhysicalHilbertChargeAdjointProbe", "51305150567a4e4d70f285a673732cbe657ac338", ("BA",)),
    ("BC", "SU2BFSSPhysicalDomainL6H5E8BCOriginalPhysicalChargeNaturalAdjointSquareProbe", "18d96cda9bb8e57665cf963455c5ceb305d3a109", ("BB",)),
    ("BD", "SU2BFSSPhysicalDomainL6H5E8BDOriginalPhysicalChargeAdjointSquareSelfAdjointProbe", "4464861e8cb8f04a1a9a6a340a83ac4298253d72", ("BC",)),
    ("BE", "SU2BFSSPhysicalDomainL6H5E8BEOriginalNormalizedPhysicalHamiltonianProbe", "bbe48532f9f66a7ef493e051453c00d40642752e", ("BD",)),
    ("BF", "SU2BFSSPhysicalDomainL6H5E8BFOriginalSourceGraphAndPairedHamiltonianProbe", "2f280ec5f84c03c39d70156e8e3053ffca662b42", ("BE",)),
    ("BG", "SU2BFSSPhysicalDomainL6H5E8BGOriginalHistoricalPhysicalHilbertChargeEqualityProbe", "e201161085514434c43895cd1c250c885882e3a9", ("BF",)),
    ("BH", "SU2BFSSPhysicalDomainL6H5E8BHOriginalHistoricalPairedHamiltonianEqualityProbe", "05a540772eb1b0e5c8570fd4eca101be76bbdd9b", ("BG",)),
]
REQUIRED_NAMES = {
    "BA": {"originalMinimalPhysicalHilbertChargeColumn_domain_dense_unconditional"},
    "BE": {"originalMinimalPhysicalNormalizedHamiltonian_domain",
           "originalMinimalPhysicalNormalizedHamiltonian_selfAdjoint",
           "originalMinimalPhysicalNormalizedHamiltonian_weakForm_iff"},
    "BF": {"originalMinimalClosedGraph_eq_exactSourceGaugeGraph",
           "pairedOriginalPhysicalNormalizedHamiltonian_domain",
           "pairedOriginalPhysicalNormalizedHamiltonian_selfAdjoint"},
    "BG": {"originalMinimalPhysicalHilbertChargeColumn_eq_historical",
           "originalMinimalPhysicalHilbertChargeColumn_domain_eq_historical"},
    "BH": {"originalMinimalPhysicalNormalizedHamiltonian_domain_eq_historical",
           "pairedOriginalPhysicalNormalizedHamiltonian_eq_historical"},
}
REQUIRED_EDGES = {
    "BB": "SU2BFSSPhysicalDomainL6H5E8BAOriginalPhysicalChargeUnconditionalDensityProbe",
    "BC": "SU2BFSSPhysicalDomainL6H5E8BBOriginalPhysicalHilbertChargeAdjointProbe",
    "BD": "SU2BFSSPhysicalDomainL6H5E8BCOriginalPhysicalChargeNaturalAdjointSquareProbe",
    "BE": "SU2BFSSPhysicalDomainL6H5E8BDOriginalPhysicalChargeAdjointSquareSelfAdjointProbe",
    "BF": "SU2BFSSPhysicalDomainL6H5E8BEOriginalNormalizedPhysicalHamiltonianProbe",
    "BG": "SU2BFSSPhysicalDomainL6H5E8BFOriginalSourceGraphAndPairedHamiltonianProbe",
    "BH": "SU2BFSSPhysicalDomainL6H5E8BGOriginalHistoricalPhysicalHilbertChargeEqualityProbe",
}
PINNED_UPSTREAM = "adc7f1241b42e322a6451854ab7e4b4c146bf78a"
PINNED_MATHLIB = "d13f23b723b8a846827a245b89c10fc7d3f11612"
PINNED_LEAN = "leanprover/lean4:v4.34.1"


def git(*args: str) -> str:
    return subprocess.check_output(["git", *args], text=True).strip()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-json", type=Path)
    args = parser.parse_args()
    assert Path("upstream-math/lean/lean-toolchain").read_text().strip() == PINNED_LEAN
    assert subprocess.check_output(["git", "-C", "upstream-math", "rev-parse", "HEAD"],
                                   text=True).strip() == PINNED_UPSTREAM
    manifest = json.loads(Path("upstream-math/lean/lake-manifest.json").read_text())
    assert next(p["rev"] for p in manifest["packages"] if p["name"] == "mathlib") == PINNED_MATHLIB

    rows = []
    completed = set()
    for stage, stem, sha, deps in STAGES:
        assert set(deps).issubset(completed), ("NOT_TOPOLOGICAL", stage, deps)
        p = ROOT / (stem + ".lean")
        assert p.is_file(), ("MISSING_FILE", str(p))
        assert git("rev-parse", "HEAD:" + p.as_posix()) == sha, ("TREE_PIN", stage)
        assert git("hash-object", "--no-filters", str(p)) == sha, ("WORKTREE_PIN", stage)
        txt = p.read_text()
        assert "sorryAx" not in txt
        body = txt.split("noncomputable section", 1)[-1]
        assert not re.search(r"(?m)^\s*(?:sorry|admit|axiom)\b", body), ("PROOF_HOLE", stage)
        claimed = set(re.findall(r"(?m)^#print axioms\s+(\S+)", txt))
        assert REQUIRED_NAMES.get(stage, set()).issubset(claimed), ("ROOT_INVENTORY", stage)
        if stage in REQUIRED_EDGES:
            assert "import " + REQUIRED_EDGES[stage] in txt, ("IMPORT_EDGE", stage)
        rows.append({"stage": stage, "source": p.as_posix(), "blob": sha,
                     "ancestors": list(deps), "axiom_roots": len(claimed)})
        completed.add(stage)
    source_be = (ROOT / (STAGES[6][1] + ".lean")).read_text()
    assert "(1 / 16 : ℂ)" in source_be, "NORMALIZATION_DRIFT"
    assert "originalMinimalPhysicalNormalizedHamiltonian" in source_be
    bf = (ROOT / (STAGES[7][1] + ".lean")).read_text()
    assert "pairedOriginalPhysicalNormalizedHamiltonian" in bf
    bh = (ROOT / (STAGES[9][1] + ".lean")).read_text()
    assert "pairedOriginalPhysicalNormalizedHamiltonian_eq_historical" in bh

    output = {
        "status": "SOURCE_PROVENANCE_AND_DEPENDENCY_DAG_ONLY_PASS",
        "mathematical_proof_accepted_by_this_script": False,
        "original_math": PINNED_UPSTREAM, "mathlib": PINNED_MATHLIB,
        "lean_toolchain": PINNED_LEAN, "plan": rows,
        "required_next_lean_gate": "fresh compiled AY→BH dependency chain; exact per-theorem permitted axioms; reusable .olean archive",
        "next_analytic_obligations": [
            "physical Hilbert input/output unitary for original source and independent E2",
            "typed partial-operator conjugacy with entire natural domains",
            "true adjoint and T-adjoint-T conjugacy",
            "exact (1/16) normalization and source Hamiltonian identity",
        ],
    }
    if args.output_json:
        args.output_json.parent.mkdir(parents=True, exist_ok=True)
        args.output_json.write_text(json.dumps(output, indent=2, sort_keys=True) + "\n")
    print(json.dumps({"status": output["status"], "verified_stages": len(rows),
                      "axiom_declarations": sum(r["axiom_roots"] for r in rows),
                      "root_namespaces": [r["stage"] for r in rows]}, sort_keys=True))


if __name__ == "__main__":
    main()
