# BFSS S1V19 — strict original G4IA–G4J gauge continuity and exact upstream GaugeData

**Date:** October 19, 2026 PDT. **Disposition:** `G4I_G4J_24_ORIGINAL_ROOTS_KERNEL_PASS__SIX_FIELD_PAIRED_GAUGEDATA_ACCEPTED__SOURCE_QUARTER_BRIDGE_STILL_OPEN`.

## Actual verified primary acceptance

- [Original G4I–G4J Continuity and Exact GaugeData Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39304517087), job `118237979903`, **all steps success** at pinned isolated-branch workflow commit `ff2d2b4e3b7b1e32e27d7fd9df15f6be2b94309f`.
- Immutable original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; the unchanged seven original source files had their SHA1 Git hashes checked on Actions. Previously accepted original G4H theta and G2B bosonic continuity `.olean` dependencies were restored from their verified exact cache; no rewritten source math.
- **Exact compiled modules, blobs and #print axioms roots**:
  1. `SU2BFSSG4IAOneParticleContinuityProbe.lean`, Git blob `f8dcadce8b6c3183da6c0170966ff59410b15f7d` (**2 roots**): `adjointColorMatrix_entry_continuous`, `complexOneParticleMatrix_continuous`.
  2. `SU2BFSSG4IB1ExteriorFockSeedContinuityProbe.lean`, Git blob `0658557712a78f40a4a8eeb3192d8c643033d929` (**7 roots**): `orbitalGauge_parameter_continuous`, `fockSeedCoordinateLinear`, `fockSeedCoordinateLinear_apply`, `fockSeedCoordinateLinear_continuous`, `exteriorGauge_seedCoordinate_continuous`, `exteriorGauge_vacuum_coordinates_continuous`, `exteriorGauge_singleton_coordinates_continuous`.
  3. `SU2BFSSG4IB2ExteriorFockTwoWedgeContinuityProbe.lean`, Git blob `0579e38a9f2c2fcceee69a06c4526e430b320e38` (**4 roots**): `wedgePairCoordinate`, `wedgePairCoordinate_expansion`, `exteriorGauge_wedgePair_coordinates_continuous`, `exteriorGauge_modePair_coordinates_continuous`.
  4. `SU2BFSSG4IB3ExteriorFockAllContinuityProbe.lean`, Git blob `6a508c0f7fd7e1b36ee75094c6ec520a625c7a3a` (**5 roots**): `fockProductBasisCoordinate`, `fockProductCoordinates_expansion`, `fockCoordinateProduct`, `fockCoordinateProduct_jointContinuous`, `exteriorGauge_allCoordinates_continuous`.
  5. `SU2BFSSG4IC1FermionParameterContinuityProbe.lean`, Git blob `8167fa4698a75cc95467cfb02732280b1207e284` (**1 roots**): `fermionGauge_parameter_continuous`.
  6. `SU2BFSSG4IC2FermionJointContinuityProbe.lean`, Git blob `a90f8799cae1c6752993ba554476037c39b3168d` (**1 roots**): `fermionGauge_jointContinuous`.
  7. `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean`, Git blob `dd82ff793918e448a2d91781edb84d273a664cd4` (**4 roots**): `pairedGaugeData`, `pairedGaugeData_boson_exact`, `pairedGaugeData_fermion_exact`, `pairedGaugeData_fermion_jointContinuous`.
- The original compiler printed `#print axioms` for **all 24 fully qualified source declarations**, with only the standard `[propext, Classical.choice, Quot.sound]` axiom set. The strict validator required exactly each declaration and only the permitted axioms, and rejected any `sorryAx` or `error:`; all seven source files compiled to fresh `.olean`, then validator printed:
  ```
  SU2BFSSG4IAOneParticleContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 2
  SU2BFSSG4IB1ExteriorFockSeedContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 7
  SU2BFSSG4IB2ExteriorFockTwoWedgeContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 4
  SU2BFSSG4IB3ExteriorFockAllContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 5
  SU2BFSSG4IC1FermionParameterContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 1
  SU2BFSSG4IC2FermionJointContinuityProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 1
  SU2BFSSG4JExactGaugeDataAssemblyProbe ORIGINAL_G4I_G4J_AXIOM_CLEAN_PASS 4
  ORIGINAL_SOURCE_G4I_G4J_24_ROOTS_EXACT_GAUGEDATA_KERNEL_PASS
  ```
- Action confirmed **cache saved** under `bfss-s1v19-isolated-g4j-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Exact original mathematical scope

This is the literal six-field OAI `pairedAlgebraData.GaugeData` in `FCP.BFSSSU2GaugeG4J.pairedGaugeData`, not a separately substituted representation. It has the source-defined real boson unitary action, the exact complex fermion Hilbert-space unitary group action, original B/output versus A/input adjoint color theta field covariance for **all 16 spin labels × 3 colors**, and action joint continuity. Its definitional fields satisfy `pairedGaugeData_boson_exact` and `pairedGaugeData_fermion_exact`.

**Not implied:** original `sourcePlusIGaugeCurve` at `(π/2)√2` equals the literal quarter diagonal matrix; a continuous global lift into an *independent manuscript* Spin(48) Clifford representation; manuscript Hilbert module/unitary intertwiner; physical Gauss/charge domains across representations; or positive BFSS spectral gap. The S1V22 candidate is uncompiled and its transitive `L6G6X → L6G5 → L6G4` physical-operator imports are expensive. Do NOT relabel it accepted because G4J passed.

## Next Project Lead objective

Preserve this cache and perform a **proof dependency/provenance cut** on sourceZ + original quarter expression, favoring actual original group/curve and pairedAlgebraData adjointCoefficient rather than finite-dimensional surrogates. Seek an *accepted existing* source curve `.olean` cache or independent small source-exact lemma before committing to a full L6G6X import closure. If staging a light proof, maintain a separate theorem connecting its object to original `sourcePlusIGaugeCurve` by definitional equality; do not claim literal quarter bridge without this.

The literal upstream SU(2) `GaugeData` construction is completed in the original pinned code. No actions against main, active PR #25, or pinned upstream math.
