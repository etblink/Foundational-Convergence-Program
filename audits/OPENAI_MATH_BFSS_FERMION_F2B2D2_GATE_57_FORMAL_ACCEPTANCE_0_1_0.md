# BFSS fermions F2-B2d2 — Gate #57 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2D2_EXACT_UPSTREAM_THETA_CAR_KERNEL_VERIFIED`

## Exact verification

- FCP branch: `research/openai-math-su2-concrete-potential`
- Accepted proof/workflow HEAD: `e5b67dd87382089018ba3e8b5885b6e199af32f7`
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2ThetaProbe.lean`, blob `04acfa41a3ab0183bb9038549c0ef8c6fba68c23`
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `4d7f53c1aaef325c9469ab73a3f31a6a481917f0`
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned `OAI/MathematicalPhysics/BFSS/Core.lean` blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`.
- `leanprover/lean4:v4.34.1`.
- GitHub Actions run [BFSS SU2 Concrete Color Gate #57](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37737545794), ID `37737545794`, job `113180428725`.
- Exact job/run head matched accepted commit; build and theorem compilation steps completed **success**, with `lake env lean SU2FermionF2B2ThetaProbe.lean` executed after re-building accepted F1–F2-B2d1 predecessor sources.

## Verbatim Lean axiom output

```text
'FCP.BFSSFermionF2B2Theta.thetaCandidate_CAR' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No custom axioms and no `sorryAx`.

## Exact upstream field-shaped result

```lean
theorem thetaCandidate_CAR :
    ∀ (α β : OAI.BFSSQuantum.SpinIndex)
      (A B : OAI.BFSSQuantum.ColorIndex 2),
      thetaCandidate α A * thetaCandidate β B +
        thetaCandidate β B * thetaCandidate α A =
          (if α = β ∧ A = B then (1 : ℂ) else 0) • (1 : BFSSOp)
```

`BFSSOp` is precisely `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The theorem proves the `AlgebraData 2` **theta_CAR** field for the *existing*, unchanged `thetaCandidate`, by transporting accepted Gate #56 indexed CAR through the already defined bijection `thetaLabelEquiv`.

The accepted F2-A `thetaCandidate_selfAdjoint` theorem independently discharges the separate upstream `theta_selfAdjoint` field.

## Remaining independent obligation

**F3 irreducibility:** for every `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)`, if every `thetaCandidate α A` sends members of `W` back to `W`, then `W = ⊥ ∨ W = ⊤`. Neither CAR nor self-adjointness alone logically substitutes for a proof at this representation and dimension. A constructive approach should transfer invariance through `thetaLabelEquiv`, convert to creator/annihilator invariance, and then use explicit Fock occupation basis generation or a valid finite Clifford-module irreducibility theorem.

A complete `AlgebraData 2` witness may only be constructed after this last field has its own actual kernel proof; external gauge action, physical spectral positivity, BFSS conjectures, and any FCP K1–K10 classification changes remain unproved.

**Control:** work solely on the FCP research branch. Never edit main, pinned upstream sources or independent reviewer scripts. No upstream public issue/PR without owner authorization. Submit one new proof gate and stop without polling it until owner reports GREEN or RED. Protect the quality threshold, not the opportunity.
