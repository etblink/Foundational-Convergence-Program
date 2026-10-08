# BFSS SU(2) G4-D — exact exterior occupation-inner-product gauge invariance 0.1.0

**Date:** 2026-10-08
**State:** `G4D_UNCOMPILED_SCOPE_FROZEN`

## Exact accepted parent

- [BFSS SU2 Concrete Color Gate #104](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37843030873), run `37843030873`, job `113536914773`. Qualified research commit `94a57bddfaa6fded53daf9324ce983db62950844`, source `SU2BFSSG4CFermionOperatorCovarianceProbe.lean` blob `83e3fe5ffc3d521c38f9c20069b96aa6627ece06`, workflow blob `8db7e89f6dbd2ae081b6631d230fe80951580315`. Four declarations printed only `[propext, Classical.choice, Quot.sound]`.
- G3-C [Gate #98] qualified `complexOneParticleMatrix_left_unitary` and `complexOneParticleUnitaryHom` for exact SU(2) color-adjoint (24\times24) matrix.
- G4-A [Gate #99] qualified `orbitalGauge`, `exteriorGauge`, CAR creation/annihilation covariance.
- G4-B [Gate #101] qualified `fermionGaugeLinearHom` on the true `Fermion 2`. G4-C [Gate #104] qualified operator covariance.

Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Crucial exact upstream proof route

Read-only pinned `OAI/Analysis/Laughlin/Exterior/VectorAdjoint.lean`, blob `01bba04588ef02eee881357f29f92079eb96001c`:
- `orbitalDual Q v`, `vectorAnnihilate Q v`, `vectorCreate_adjoint`, and `vectorAnnihilate_rotation` lines 10–49.
- The `orbitalDual_rotation` proof lines 33–42 reduces to the *actual matrix unitarity* `UᴴU=1`, using `Matrix.star_mulVec`, `Matrix.dotProduct_mulVec`, `Matrix.vecMul_vecMul`, `Matrix.star_eq_conjTranspose` and `Matrix.vecMul_one`.

Read-only pinned `OAI/Analysis/Laughlin/Exterior/SpinUnitary.lean`, blob `a44e3319b3d6f4bdfff6ad5188c75fccc2d58762`:
- `occupationInner_scalar_wedge_zero` lines 17–21.
- `exteriorRotation_unitary` lines 36–49 proves full `occupationInner` preservation by `CliffordAlgebra.left_induction`, using the preceding dual-contraction covariance and `vectorCreate_adjoint`.
- `exteriorRotation_norm` lines 51–55 proves full `occupationNormSq` preservation from the same inner-product equation.

**Important distinction:** those pinned source theorems concern upstream `SourceSU2` and `orbitalRotation` and are **not BFSS SU(2) theorems**. G4-D independently instantiates/adapts the exact proof argument for our already qualified `FCP.BFSSSU2GaugeG4A.orbitalGauge` and `exteriorGauge` with `complexOneParticleMatrix`. Do not replace this construction with `SourceSU2` or change the source pins.

## Frozen bounded proof candidate

Prove on the **actual** exterior algebra `Space 23`:
1. `(orbitalDual 23 (orbitalGauge g v)).comp (orbitalGauge g) = orbitalDual 23 v` using the already proved exact complex `U(g)ᴴ*U(g)=1`.
2. `vectorAnnihilate 23 (orbitalGauge g v) (exteriorGauge g x) = exteriorGauge g (vectorAnnihilate 23 v x)` from pinned generic `contraction_map`.
3. The wedge creation law and scalar-vacuum bra invariance.
4. `occupationInner 23 (exteriorGauge g x) (exteriorGauge g y) = occupationInner 23 x y` **for all x,y**, by pinned Clifford/exterior induction method.
5. `occupationNormSq 23 (exteriorGauge g x) = occupationNormSq 23 x` for all x.

A GREEN should certify an honest *occupation-inner-product isometry on exterior Space 23*, not yet assert exact `Fermion 2 ≃ₗᵢ[ℂ]`. The later G4-E proof must connect `occupationNormSq`, `fockMass`, `fockCoordinates 23` and accepted `fockBFSSUnitary` to upgrade the G4-B linear action to a genuine unitary equivalence. Only then may `GaugeData.fermion` be proposed, with covariance/continuity separate.

Do not use `sorry`, `admit`, new axioms, or proof-introducing assumptions. Do not change FCP main, OpenAI Math upstream, public PR/issues, dependency pins, CI resource limits, or accepted model definitions. Commit one bounded source and workflow gate on research branch, **STOP without inspecting next workflow until owner GREEN/RED**.
