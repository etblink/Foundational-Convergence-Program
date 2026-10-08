# BFSS fermion Stage F2-B1 — Gate #46 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B1_IMAGINARY_MAJORANA_SAME_MODE_SELF_CAR_KERNEL_VERIFIED`
**Authority:** Exact GitHub Actions compilation and Lean 4.34.1 axiom output, not a narrative or uncompiled reviewer assessment.

## Exact identity and provenance

- FCP repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- **Accepted source and workflow commit:** `108db09b50d8df4c45686b7b7bfa72bfa731ec2b`.
- **Source:** `experiments/openai-math-su2-concrete-potential/SU2FermionF2BProbe.lean`.
- **Source blob:** `b8218829e576c3c94800dffaeeb74f1211a9740c`.
- **Workflow:** `.github/workflows/openai-math-su2-concrete-potential.yml` (workflow blob `99ed3f1916a9113dfe193c12b7f503b1d7bc4a3e`).
- **Gate:** BFSS SU2 Concrete Color Gate **#46**; run `37729612874`; job `113155522421`.
- **Run:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37729612874
- Exact run head SHA matched accepted commit; run `completed/success`, `color-cross` job `completed/success`, final compilation step `success`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, verified in job log at checkout; Lean toolchain asserted `leanprover/lean4:v4.34.1`.
- Both dependencies and probes compiled: `Build completed successfully (8931 jobs)`, then `Build completed successfully (3219 jobs)`; F1 and F2-A each emitted an importable `.olean`; F2-B1 command `lake env lean SU2FermionF2BProbe.lean` exited successfully.

## Axiom evidence

Verbatim Lean output:

```text
'FCP.BFSSFermionF2B.majorana1_car' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom in this theorem. Color/gamma/F1/F2-A axiom reports in the same run also listed only standard Lean axioms or subsets.

## What was established

For **every** `i : Fin 24`, on the **exact** BFSS fermion Hilbert space `OAI.BFSSQuantum.Fermion 2`, define `BFSSOp := Fermion 2 →L[ℂ] Fermion 2`. The existing F2-A definition `majorana1 i` is self-adjoint (accepted Gate #39). Gate #46 kernel-checks the separate exact delta-one normalization:

```lean
theorem majorana1_car (i : Fin 24) :
    majorana1 i * majorana1 i + majorana1 i * majorana1 i = (1 : BFSSOp)
```

This complements the real component's independently accepted `majorana0_car` (Gate #36). The proof uses complex-phase-rotated creator/annihilator operations with zero squares and a mixed CAR, the real `sqrt 2 / 2` normalization, and a pointwise `ext x; simp` proof for each scalar-multiplied zero operator. The accepted repaired source does **not** weaken the target, insert a placeholder, or alter F1/F2-A.

## Failure and repair history

- #40 GREEN was only a source-add build before F2-B1 was incorporated in the workflow and is **not** F2-B1 acceptance.
- #41 and #42 RED had zero-scalar simplification failures.
- #43 RED attempted `smul_zero _`, leaving polymorphic typeclass metavariables.
- #44 RED used explicitly typed complex scalars in `smul_zero`, but the module type remained unresolved.
- #45 RED attempted `simp only [..., smul_zero]`, leaving scalar actions on operator zero unresolved; that simp argument was unused.
- #46 GREEN fixed only the two zero-square helpers with `ext x; simp`, proving the remaining equations at the vector level.

An independent Grok consultation advised the #45 simplifier route but explicitly marked it UNCOMPILED; Gate #45 correctly rejected it. The accepted #46 repair is established by the Lean compiler, not by that consultation alone.

## Boundaries and forward sequence

F2-B1 is **not** a theorem of full 48-generator canonical anticommutation. Unproved F2-B2 obligations include:

1. All `majorana0`/ `majorana0` pairs, including distinct modes.
2. All `majorana1`/ `majorana1` pairs, including distinct modes.
3. Every `majorana0`/ `majorana1` pair, including same mode.
4. Full `thetaCandidate` delta-CAR, with `SpinIndex × ColorIndex 2` and the exact pinned `AlgebraData.theta_CAR` right-hand-side normalization.

Separate later stage F3 must establish `theta_irreducible` for **all** invariant complex submodules before an `AlgebraData 2` witness can be assembled. No physical Hamiltonian, gauge/Spin(9), domain or spectral theorem follows automatically. FCP's accepted Family270-B T6 source-delta classification remains model-level strengthening only; K1–K10 unchanged. Original papers, independent computational tests, and Lean kernel evidence remain distinct classes.

## Governance and operational note

Maintain FCP's source-first crosswalk and original FCP source register. Work on this research branch only; do not edit FCP `main`, the pinned OpenAI repository, or reviewer scripts. Do not submit upstream issues/PRs without express authorization. For the next submitted Lean gate, wait for the human owner to report GREEN/RED **before** inspecting that newly triggered run.

**Operating principle:** Protect the quality threshold, not the opportunity.
