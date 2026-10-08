# BFSS SU(2) G4-A — Gate #99 exterior-algebra SU(2) action acceptance 0.1.0

**Date:** 2026-10-08
**Verdict:** `PASS__GENUINE_24_ORBITAL_EXTERIOR_SU2_ACTION_AND_CREATOR_ANNIHILATOR_COVARIANCE`

## Exact compiler and source authority

- Branch `research/openai-math-su2-concrete-potential`, qualified HEAD `f3c7d525b03bbb532a1e46c551eaaf700b7bee5f`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4AExteriorGaugeActionProbe.lean`, Git blob `1b1c1099dfa486f76ede75a082f84c19b29155b5`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, Git blob `a7d0122a0fe7ed5dc5fea3a05c6cd525f2204e88`.
- [Gate #99](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37824961756), run `37824961756`, job `113475312798`; verified run/head exact match, successful workflow/job/compilation step, `lake env lean SU2BFSSG4AExteriorGaugeActionProbe.lean` succeeded. No errors or `sorryAx`.
- Pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged.
- The following nine printed declarations each depend on exactly `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSSU2GaugeG4A.orbitalGauge_one
FCP.BFSSSU2GaugeG4A.orbitalGauge_mul
FCP.BFSSSU2GaugeG4A.exteriorGauge_one
FCP.BFSSSU2GaugeG4A.exteriorGauge_mul
FCP.BFSSSU2GaugeG4A.exteriorGauge_inv
FCP.BFSSSU2GaugeG4A.exteriorGauge_vacuum
FCP.BFSSSU2GaugeG4A.projection_orbitalGauge
FCP.BFSSSU2GaugeG4A.annihilate_exteriorGauge
FCP.BFSSSU2GaugeG4A.create_exteriorGauge
```

## Certified mathematics

Using the *actual* G3-C 24-mode SU(2) one-particle unitary matrices, G4-A defines `orbitalGauge : GaugeGroup 2 → (Orbital 23 →ₗ[ℂ] Orbital 23)` and `exteriorGauge g := ExteriorAlgebra.map (orbitalGauge g) : Space 23 →ₐ[ℂ] Space 23`. The Lean kernel verifies pointwise identity, composition, inverse action, and preservation of the exterior unit (algebraic vacuum). It additionally verifies the *genuine* underlying Laughlin Fock `create i` and `annihilate i` covariance with exact `complexOneParticleMatrix g` row/column orientation.

This is a **genuine algebraic** SU(2) exterior-automorphism action, not a `Fermion 2 ≃ₗᵢ[ℂ]` action on the `2^{24}`-dimensional BFSS fermionic Hilbert space. In particular, isometry relative to the pinned `fockMass` / canonical occupation inner product is not yet proved; nor is transported theta covariance, joint continuity or full `GaugeData`. The algebraic vacuum equation here is not yet a transported Hilbert-vacuum invariance theorem.

## Next accurate bounded task

Using the accepted exact `fockCoordinates 23 : Space 23 ≃ₗ[ℂ] FockCoordinateSpace 23` and `FCP.BFSSFermionF1.fockBFSSUnitary : FockCoordinateSpace 23 ≃ₗᵢ[ℂ] Fermion 2`, first **transport the actual G4-A algebra action to a complex-linear group representation on the precise BFSS Fermion 2 type**, proving action identity/composition and pointwise intertwining. Do not call it unitary until the norm-isometry theorem is independently discharged. Then prove finite-occupation Fock-norm invariance and upgrade to the `GaugeData.fermion` field with theta covariance and continuity.

G0–G3-C certified milestones and K1–K10 unchanged. No upstream, main, PR or public issue modifications.

**Principle:** verify actual mathematics, do not conflate algebraic and Hilbert-space representations.
