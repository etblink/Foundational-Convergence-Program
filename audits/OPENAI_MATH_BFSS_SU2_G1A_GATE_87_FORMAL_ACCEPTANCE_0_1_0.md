# BFSS SU(2) G1-A — Gate #87 explicit paired algebra formal acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__EXPLICIT_SPIN_PAIRED_COLOR_MODE_LABELING_AND_SECOND_ALGEBRADATA2_KERNEL_VERIFIED`

## Compiler identity and evidence

- FCP research branch `research/openai-math-su2-concrete-potential`.
- Exact qualified commit `41cb213ccd6c12877cd76b2bbb1d6d82bc214db7`.
- `experiments/openai-math-su2-concrete-potential/SU2BFSSG1APairedThetaProbe.lean`, Git blob `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `2b2323e3f29ed04dd0d92b15dbe4edd30fad42b1`.
- Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1.
- [BFSS SU2 Concrete Color Gate #87](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37776063148), run `37776063148`, job `113307099770`; run, job and compile step success, exact HEAD matches, `lake env lean SU2BFSSG1APairedThetaProbe.lean` compiles.

All eleven printed axiom reports are **exactly** `[propext, Classical.choice, Quot.sound]`, with no `sorryAx`, new custom axiom, or Lean error:

```text
'FCP.BFSSSU2GaugeG1A.pairedLabel_even' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedLabel_odd' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedTheta_even' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedTheta_odd' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedTheta_selfAdjoint' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedTheta_CAR' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedTheta_irreducible' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedAlgebraData' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedAlgebraData_color' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedAlgebraData_gamma' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2GaugeG1A.pairedAlgebraData_theta' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Two non-blocking Lean deprecation warnings (`if_pos`/`if_neg`) only.

## Mathematical acceptance

The compiler checked:
- `spinPairEquiv : SpinIndex ≃ Fin 8 × Fin 2` with the explicit `finProdFinEquiv` inverse;
- `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24`;
- `pairedLabelEquiv : (SpinIndex × ColorIndex 2) ≃ Fin 24 × Fin 2`, preserving each color-specific complex mode;
- exact even/odd label identities, and `pairedTheta_even/odd`, using the **same actual mode** `colorModeEquiv(j,A)`;
- new paired `theta` is self-adjoint, normalized CAR and irreducible on the genuine `Fermion 2`;
- a **second exact upstream `OAI.BFSSQuantum.AlgebraData 2` inhabitant** `pairedAlgebraData` with the accepted color/gamma fields and paired theta;
- three `rfl` identity lemmas for new color, gamma and theta.

The old `FCP.BFSSSU2Full.concreteAlgebraData` and its accepted potential theorems remain unchanged and valid. Reindexing the Majorana family was not proven a unitary *intertwiner* between the two full `AlgebraData 2` records, and must not be represented as such. However all color-only potential identities also apply to the new record if needed because its color fields are exactly equal.

## Scientific / next gate bounds

This qualifies the spin/color-index pairing chosen for the manuscript's 24 annihilator modes but does **not** yet certify the formula `c_j^A = (θ_{2j}^A+iθ_{2j+1}^A)/√2` with the actual Fock annihilator, let alone a continuous unitary group representation `GaugeData`. Stage G1-B should directly prove that formula with exact normalization, and optionally its conjugate creator identity, using the already verified definitions, no new axioms.

The manuscript's Spin(48) lift, SU(2) gauge action, vacuum line, continuous `GaugeData`, physical space, invariant core and positive eigenvalues remain independently open in Lean.

FCP scientific T6/Family270B remains model-level only, K1–K10 unchanged; no FCP main or upstream `openai/math` edits, PRs or issues. New candidate is UNCOMPILED until the human owner reports its GREEN/RED status.

**Operating principle:** seek mathematical truth, not green checks.
