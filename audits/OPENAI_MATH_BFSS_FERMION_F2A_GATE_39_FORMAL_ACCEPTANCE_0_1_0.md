# BFSS 24-mode Fermions — Stage F2-A Gate #39 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific (GitHub Actions records UTC 2026-10-08)
**Disposition:** `PASS__F2A_CROSS_MODE_FOCK_CAR__48_LABEL_SELFADJOINT_CANDIDATE`
**Bound:** This is *not yet* the 48-generator Majorana CAR theorem, irreducibility, or BFSS spectral result.

## Provenance and exact compiler evidence

- Research branch: `research/openai-math-su2-concrete-potential`
- Accepted proof/workflow commit: `454327191995081ce1551867e509cf80fd1069a5`
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF2Probe.lean`
- Gate: **BFSS SU2 Concrete Color Gate #39**, run `37725249498`, job `113141828444`.
- https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37725249498
- Run head SHA exact; completed **success**; job **success**.
- All three color/gamma/F1 witnesses recompiled with no errors; dependencies built successfully (8,931 and 3,219 jobs).
- F2 Lean file compiled successfully against the pinned dependency/import environment.

## Axiom reports (verbatim content without timestamp)

```text
'FCP.BFSSFermionF2.creator_creator_car' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF2.annihilator_annihilator_car' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF2.annihilator_creator_car' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF2.majorana1_selfAdjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF2.thetaLabelEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF2.thetaCandidate_selfAdjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms. Earlier Gate #38 failed on a deterministic `isDefEq` elaboration heartbeat timeout within `majorana1_selfAdjoint`; its `sorryAx` was the failed elaboration term, not an explicit source placeholder. Final repair specified `IsSelfAdjoint.add_star_self (Complex.I • creator i)` explicitly, without increasing heartbeats, modifying theorem statement or weakening any theorem.

## Exact verified progress

All `i j : Fin 24`, on `OAI.BFSSQuantum.Fermion 2`:
- `{creator i, creator j} = 0`.
- `{annihilator i, annihilator j} = 0`.
- `{annihilator i, creator j} = (if i = j then 1 else 0) • 1`.

The complementary `majorana1 i := (sqrt 2 / 2 : ℂ) • ((Complex.I • creator i) + star (Complex.I • creator i))` is self-adjoint. `thetaLabelEquiv` bijects the upstream exact `SpinIndex × ColorIndex 2` with `Fin 24 × Fin 2`; `thetaCandidate` has precisely the upstream continuous-operator signature and every member is self-adjoint. This relies on the separately accepted F1 `majorana0`.

**Not yet proven:** Majorana1 same-index anticommutator; mixed 0/1 anticommution; all off-diagonal 0/0, 1/1, 0/1 anticommutators; combined `thetaCandidate` delta-CAR; `theta_irreducible`; `AlgebraData 2`; gauge representation or spectral theorem.

## Next authorized F2-B

Project Lead may begin **F2-B** under the owner's general F2 approval now that F2-A is formally accepted. Work exclusively on research branch, use the accepted F2-A code as source-bound dependencies, and prove the pairwise Majorana Clifford relations with exact `δ=1` BFSS normalization. Avoid speculative claims of full F2 before Lean CI acceptance.

Do not poll a newly triggered gate until the owner reports its GREEN or RED verdict. No changes to FCP main, pinned OpenAI math, independent review scripts, or public upstream PR/issues.

**Operating maxim:** Protect the quality threshold, not the opportunity.
