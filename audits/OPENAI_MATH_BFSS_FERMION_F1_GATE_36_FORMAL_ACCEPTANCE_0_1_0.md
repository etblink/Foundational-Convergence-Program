# BFSS 24-mode fermion Stage F1 — Gate #36 formal acceptance 0.1.0

**Research date:** 2026-10-07 Pacific (GitHub Actions run recorded 2026-10-08 UTC)
**Disposition:** `PASS__24_MODE_FOCK_TRANSPORT_AND_FIRST_MAJORANA_CAR_KERNEL_VERIFIED`
**Scope:** Stage F1 only; a 24-mode Fock space and individually normalized real Majorana from each mode on *exactly* the pinned BFSS `Fermion 2` Hilbert space. **Not** a complete 48-theta realization or the BFSS positive-eigenvalues theorem.

## Exact proof authority

- FCP research branch: `research/openai-math-su2-concrete-potential`
- **Accepted source/workflow commit:** `effb498f30a00be11573f72c1efbf991df84a366`
- **Proof source:** `experiments/openai-math-su2-concrete-potential/SU2FermionFockProbe.lean`
- **Proof blob:** `dd6881b3394372bbcbb143ba8606916f0206c166`
- **Workflow:** `.github/workflows/openai-math-su2-concrete-potential.yml`
- **GitHub Actions:** BFSS SU2 Concrete Color Gate **#36**, run `37723878325`, job `113137499215`
- **Run URL:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37723878325
- **GitHub run evidence:** completed/success, `head_sha=effb498f30a00be11573f72c1efbf991df84a366`; job `color-cross` completed/success.
- **Upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean 4.34.1, pinned upstream mathlib.
- **Build evidence:** `Build completed successfully (8931 jobs)` and later `Build completed successfully (3219 jobs)`, then `lake env lean SU2FermionFockProbe.lean` completed without error. Existing color and gamma probes also compiled in the same workflow.

## Kernel reports

```text
'FCP.BFSSFermionF1.fockBFSSUnitary' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF1.creator_annihilator_car' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF1.creator_adjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF1.majorana0_selfAdjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF1.majorana0_car' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The accepted reports have **no `sorryAx`** or custom axioms. The older unsuccessful Gates #33–#35 each had compiler failures; they did not qualify `majorana0_car`. Gate #36 is the first complete green F1 proof gate. `fockBFSSUnitary` is a definition, not an independent proposition.

## Constructed result

1. **Exact index transport:** `occupationIndexEquiv : Finset (Fin 24) ≃ Fin (2^24)` and `fockBFSSUnitary : FockCoordinateSpace 23 ≃ₗᵢ[ℂ] OAI.BFSSQuantum.Fermion 2`. This uses a reindexing isometry and never enumerates a 2^24-square matrix.
2. **Continuous Fock operators:** `creator i` and `annihilator i` are bounded `ContinuousLinearMap` endomorphisms of the *actual* `Fermion 2`, transported from pinned upstream creation/annihilation CAR/adjoint APIs.
3. **Same-mode CAR/adjoints:** For every `i : Fin 24`, `annihilator i * creator i + creator i * annihilator i = 1`; `star (creator i) = annihilator i`. The source also proves both operator squares zero.
4. **Normalized self-adjoint Majorana:** `majorana0 i := (sqrt(2)/2 : ℂ) • (creator i + annihilator i)`; `majorana0_selfAdjoint`; `majorana0_car` establishes `majorana0 i * majorana0 i + majorana0 i * majorana0 i = 1`. This is the exact BFSS **delta=1** normalization, not delta=2.

The accepted SU2 color witness and nine real gamma matrices are separately preserved and checked in the same successful workflow. These independent pieces do **not** yet assemble into `AlgebraData 2`.

## Remaining obligations and sequencing

**Not proved by F1:**
- complementary imaginary Majorana `i(c-a)/sqrt(2)` with self-adjointness and same-mode CAR;
- off-diagonal Majorana CAR for distinct modes and cross-pairs;
- full indexing from `SpinIndex × ColorIndex 2` to 48 Majorana labels;
- `theta_irreducible` for arbitrary invariant complex submodules;
- compatible SU(2) gauge representation and commuting Spin(9) action;
- full physical Hamiltonian/operator correspondence, closable supercharge form and spectrum.

**Recommended Stage F2 (separate bounded authorization/implementation gate):** Prove a complete generic 24-mode Majorana CAR family, with both normalized components per complex mode, self-adjointness, all same-mode and distinct-mode CAR, and an explicit 48-label index equivalence. Reuse `mixed_car`, `create_anticommute`, `annihilate_anticommute` transported through `fockOperator` and `conjStarAlgEquiv`. Stop before irreducibility or gauge implementation. Avoid interpreting a same-index theorem alone as a full Clifford representation.

**Later F3:** prove irreducibility from number projections/occupation basis, for *all* invariant submodules. **Later F4:** consider full `AlgebraData 2`, gauge and physical spectral bridge. These remain proposals, not accepted code.

## Sources, review provenance and controls

FCP source-first inventory `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md` and the FCP Family270-B and FCP-24 source ledgers constrain the scientific interpretation. Technical reusable proofs were pinned upstream: `OAI.Laughlin.Fock` CAR and `OAI.ContinuumCoulomb.HubbardGlobal.fockOperator` + adjoints.

An independent **Grok reviewer** supplied the final read-only suggestion to specify the `ℂ` scalar ring explicitly in `add_smul` rather than using an ambiguous `two_smul` rewrite. The Project Lead applied that small repair; **the GitHub Lean CI gate, not Grok's uncompiled proposal, provides formal acceptance**. The original reviewer did not claim a local compile.

This document is an acceptance/provenance record, **not a new proof run**. FCP `main` and `openai/math` must remain unchanged; no public PR/issues, upstream contribution or repo merge is authorized.

**Operating maxim:** Protect the quality threshold, not the opportunity.
