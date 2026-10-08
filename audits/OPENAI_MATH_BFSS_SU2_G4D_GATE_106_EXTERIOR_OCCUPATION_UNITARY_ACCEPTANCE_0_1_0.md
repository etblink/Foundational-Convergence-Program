# BFSS SU(2) G4-D — Gate #106 exact exterior occupation-inner-product isometry acceptance 0.1.0

**Date:** 2026-10-08
**Disposition:** `PASS__EXACT_SU2_EXTERIOR_OCCUPATION_INNER_PRODUCT_AND_NORM_INVARIANCE`

## Source, compiler and run identity

- Research branch `research/openai-math-su2-concrete-potential`.
- Qualified commit `01b152412c2c5fd116fa088c3e9009656a0fb75b`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4DExteriorOccupationIsometryProbe.lean`, Git blob `85c9d998a9e01fbca2d32f5610fe6b7bf925d507`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `585ff898b6d167286df5d0731eed9afe970bf5f4`.
- [Gate #106](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37847401340), run `37847401340`, job `113551592111`; run SHA exact match, completed workflow, job and compilation step SUCCESS. `lake env lean SU2BFSSG4DExteriorOccupationIsometryProbe.lean` succeeded without Lean errors or `sorryAx`.
- Pinned Lean 4.34.1, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.

Each of these six declarations depends on **exactly** `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG4D.orbitalDual_gauge
FCP.BFSSSU2GaugeG4D.vectorAnnihilate_gauge
FCP.BFSSSU2GaugeG4D.exteriorGauge_ι_mul
FCP.BFSSSU2GaugeG4D.occupationInner_scalar_gauge
FCP.BFSSSU2GaugeG4D.exteriorGauge_occupationInner
FCP.BFSSSU2GaugeG4D.exteriorGauge_occupationNormSq
```

## What the Lean kernel actually proves

For the **actual qualified** BFSS SU(2) `GaugeGroup 2` acting through `G3C.complexOneParticleMatrix` and `G4A.exteriorGauge` on pinned `OAI.Laughlin.Fock.Space 23`, not an unrelated upstream `SourceSU2` spin representation, it verifies:
```lean
occupationInner 23 (exteriorGauge g x) (exteriorGauge g y)
    = occupationInner 23 x y
occupationNormSq 23 (exteriorGauge g x)
    = occupationNormSq 23 x
```
For **all** x, y and g. The key dual-contraction covariance uses the independently accepted exact 24×24 complex matrix unitarity. Pinned `OAI/Analysis/Laughlin/Exterior/SpinUnitary.lean` guided the induction, but was not inappropriately imported as a theorem about our BFSS SU(2).

Gate #105 failed at a redundant `Matrix.star_eq_conjTranspose` rewrite: Lean had already produced the conjugate transpose. Gate #106 removed only that rewrite, retaining all mathematical statements and source pins.

## Still open

The accepted statement concerns the pinned **exterior occupation** norm, not yet the native `OAI.BFSSQuantum.Fermion 2` Hilbert norm. The exact bridge must use `occupationBasis` = `fockBasis`, `Complex.normSq_eq_norm_sq`, `fockMass`, `fockCoordinates_norm_sq`, and the accepted norm-preserving `fockBFSSUnitary`. Then construct a genuine `GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`. Do **not** claim `GaugeData.fermion` until the full field type plus continuity and real 48-theta covariance are discharged. Physical Hamiltonian spectral problems remain untouched.

No changes to FCP main, pinned upstream, public PR/issues or FCP scientific claims K1–K10.

**Keep the distinction between accepted theorems and intended consequences explicit.**
