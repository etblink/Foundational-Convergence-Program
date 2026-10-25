# BFSS S3L5J1 Gate50 #1 — STRICT RED / first compiler diagnosis

**Project Lead independently verified 2026-10-25.** [Original Actions run 40208092135](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40208092135), job `121213265586`, completed/failure, original source/workflow research SHA `f0fb87195dc13eef7953a13167eb8a8cd47d233c`. **0/2 S3L5J1 roots newly accepted**; all earlier qualified historical source theorem roots remain unchanged. Qualified J1 source cache was NOT saved. Original failure artifact #12604349215 SHA256 `243132b063017dfdde25e387ddea1b605fb83c78bfe04bed991ed89fb772b648`.

## Actual first causal Lean compiler output

All frozen original math, Lean4.34.1 and pinned Mathlib, canonical SHA/worktree pins and earlier exact-proof compatibility checks passed; Gate49 source child cache MISS, separately accepted Gate23 original ancestor HIT. Original R4A 116 source-module DAG, 40 missing .olean on base. Exactly 22 historical original-statement source ancestors fresh compiled `lake env lean -DwarningAsError=true`, permitted axioms `propext, Classical.choice, Quot.sound` and true .olean; actual original S3E compiled 91.443s, S3L4D 57.382s, and I3 10.228s.

Original unchanged J1 `SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe.lean`, Git blob `966d79fa3f033bbfadfbf3ff37a979168db6476e`, compiled for 11.176s, EXIT 1 from STRICT Lean 4.34.1 **unused simp argument warnings promoted to errors**:
```text
Source...J1...lean:76:17: error: This simp argument is unused:
  Ne.symm hij
Hint: Omit it from the simp argument list.
  simp [hij]
Source...J1...lean:79:14: error: This simp argument is unused:
  hij
Hint: Omit it from the simp argument list.
  simp [hki, Ne.symm hij]
Source...J1...lean:79:24: error: This simp argument is unused:
  Ne.symm hij
Hint: Omit it from the simp argument list.
  simp [hij, hki]
```
Original source proof lines:
```lean
    · subst k
      simp [hij, Ne.symm hij]
    · by_cases hkj : k = j
      · subst k
        simp [hij, hki, Ne.symm hij]
      · simp [hki, hkj]
```
Both original theorem `#print axioms` reports nevertheless displayed ONLY `propext, Classical.choice, Quot.sound` with no `sorryAx`. **Source compiler exit 1 means neither declaration is accepted by the strict gate.** These diagnostics are proof-tactic/linter redundancy, **NOT** a refutation of source orbital reindexing or Clifford gamma identities.

## Permitted repair and invariants

Create a distinct proof-only S3L5J1 recovery source file, exact byte-for-byte identical to original except removal of the two redundant simplification-list fragments (three reported unused hints). Candidate branch simplifications `simp [hij]` at original line 76 and `simp [hki]` at line 79. These must be independently and strictly COMPILER-tested; neither candidate nor theorem is presumed green. Retain exact original theorem statements, gamma sign, source operator structures, all physics, true Fock, permitted axiom checker, warning-as-error and full unique original source pinning. Verification script must check full original-versus-proof-only text difference and both Git/worktree SHAs prior to compiling the original module under its canonical name. Do NOT disable unused-simp-args linter, suppress warnings, omit J1 proof, accept a sorry or dilute source fidelity. Allow qualified Gate49 cache or recompile all qualified original predecessors from Gate23. Launch separate bounded **Gate50 #2**, preserve Gate50 #1 negative knowledge, and accept two J1 roots only if fresh strict source compilation, whitelist, .olean and new qualified cache save all pass.

Unproved regardless of outcome: complex -Complex.I transport J2, operator-level kinetic spinor contraction, cubic source charge, full 16 charges, R4A/R4D and BFSS spectral existence. Frozen upstream math, canonical main and draft PR25 untouched.
