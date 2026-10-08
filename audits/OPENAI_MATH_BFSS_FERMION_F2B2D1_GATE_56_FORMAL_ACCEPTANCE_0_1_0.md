# BFSS fermions F2-B2d1 — Gate #56 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2D1_48_INDEXED_MAJORANA_CAR_KERNEL_VERIFIED`

## Exact qualification identity

- FCP repo `etblink/Foundational-Convergence-Program`, research branch `research/openai-math-su2-concrete-potential`
- Accepted source/workflow HEAD `ff68998ea384ab2c7b84e192c41fcdfa6a017bfb`
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2IndexedProbe.lean`, blob `a61f2e3080a60b18a9298336a79643b2d25359a2`
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `0b11834d32681e77ac598a2d8f53af3091b00619`
- Upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `leanprover/lean4:v4.34.1`
- **Gate #56**, run `37736665852`, job `113177641826`; exact run head matched accepted commit; workflow, job and compiler step completed **success**.
- Run URL: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37736665852
- Existing accepted predecessor modules and the new `SU2FermionF2B2IndexedProbe.lean` were compiled, with `lake env lean SU2FermionF2B2IndexedProbe.lean` successful.

## Verbatim kernel-axiom report

```text
'FCP.BFSSFermionF2B2Indexed.majoranaCandidate_car' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom in the accepted theorem.

## Exactly proved

```lean
theorem majoranaCandidate_car (p q : Fin 24 × Fin 2) :
    majoranaCandidate p * majoranaCandidate q +
      majoranaCandidate q * majoranaCandidate p =
        (if p = q then (1 : ℂ) else 0) • (1 : BFSSOp)
```

Here `majoranaCandidate` is the preexisting F2-A 48-label family on the **exact** `OAI.BFSSQuantum.Fermion 2` continuous-linear-operator type. All four component cases use the separately kernel-verified real/real (Gate #49), imaginary/imaginary (Gate #50), and all-mode mixed (Gate #55) CAR relations. Equality tests on the product index are proved, not presumed.

## Firm boundaries

- **Next F2-B2d2:** transport through the existing `thetaLabelEquiv` bijection to `thetaCandidate` and prove the precise pinned `AlgebraData.theta_CAR` field expression:
```lean
  ∀ α β A B,
    thetaCandidate α A * thetaCandidate β B +
      thetaCandidate β B * thetaCandidate α A =
      (if α = β ∧ A = B then 1 else 0) •
        (1 : OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2)
```
- F3 `theta_irreducible`: every complex submodule stable under all `thetaCandidate` is either bottom or top.
- F4 complete `AlgebraData 2` after all required fields have full proofs.

This result does **not** prove the exact upstream theta field, irreducibility, gauge/Spin(9) invariance, BFSS spectral positivity, or broader FCP classification. No K1–K10 field changes.

No writes to FCP `main`, pinned OpenAI `openai/math`, or independent reviewer scripts. No public upstream PR/issue without owner approval. New proof candidates require an exact-head green gate plus standard-only axiom output, and gate-inspection discipline requires stopping after each submission until owner GREEN/RED.

**Operating principle:** Protect the quality threshold, not the opportunity.
