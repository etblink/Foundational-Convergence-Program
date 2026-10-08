# BFSS SU(2) G4-B — exterior action transported to exact fermionic Hilbert type 0.1.0

**Date:** 2026-10-08. **Candidate state:** `UNCOMPILED_PENDING_G4B_GATE`.

## Qualified parent evidence

Gate #99 [run 37824961756](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37824961756), job `113475312798`, exact HEAD `f3c7d525b03bbb532a1e46c551eaaf700b7bee5f`, source `SU2BFSSG4AExteriorGaugeActionProbe.lean` blob `1b1c1099dfa486f76ede75a082f84c19b29155b5`, workflow blob `a7d0122a0fe7ed5dc5fea3a05c6cd525f2204e88`, nine declarations with only standard kernel axioms. G4-A establishes a genuine exterior algebra SU(2) action and exact creator/annihilator covariance.

Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1. Exact anchored Fock source `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`, blob `17e71994583e7096c26a1af2fe97671f94336d84`, lines 281–304. The certified `fockCoordinates 23 : Space 23 ≃ₗ[ℂ] FockCoordinateSpace 23` and `FCP.BFSSFermionF1.fockBFSSUnitary : FockCoordinateSpace 23 ≃ₗᵢ[ℂ] Fermion 2` compose to an *exact* complex linear equivalence, not an approximate or replacement 2^24-dimensional space.

## G4-B bounded target

1. Give an actual `Space 23 ≃ₗ[ℂ] Space 23` for `G4A.exteriorGauge g`, using the independently proved group inverse `g⁻¹` to discharge both inverse laws.
2. Transport this equivalence via the actual `fockCoordinates 23` and `fockBFSSUnitary` to an exact `Fermion 2 ≃ₗ[ℂ] Fermion 2`.
3. Kernel-verify for **every** `g` and exterior `x` the exact commuting-square intertwiner on the full fermionic type.
4. Construct `GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)`, with identity/composition theorems, and prove invariance of the transported algebra-unit (vacuum) vector.

These are structural *complex-linear* equivalence/representation results; **do not** represent them as the `GaugeData.fermion` field because that field demands a `≃ₗᵢ[ℂ]` isometry equivalence, which requires a genuine inner-product preservation proof. Do not assume coordinate occupation norm invariance, theta covariance, or joint continuity.

## Subsequent mathematics

Source-first norm-isometry proof for `exteriorGauge` with the pinned Fock occupation inner product; then strengthen to `Fermion 2 ≃ₗᵢ[ℂ]`; then prove covariance of the exact accepted paired Majorana theta family and joint continuity. No full `GaugeData` or spectrum until each field is compiled with only standard axioms.

## Operational constraints

No `sorry`, `admit`, `sorryAx`, custom axioms, workaround representation or changes to pinned sources, accepted witnesses, CI resources, FCP main or upstream. Print axioms of substantive declarations. Commit one bounded compiler gate, stop without viewing the newly triggered run until owner GREEN/RED.
