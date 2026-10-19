# BFSS S1V19 — after original Majorana covariance, qualify joint continuity and actual GaugeData

**Date:** October 19, 2026 (PDT). **Status:** gated *next* execution plan; no G4F/H acceptance before run #39300590971 is green and fully logged.

## Qualified prior result

- [G4C–G4E Hilbert-unitary source gate #39298927950](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39298927950) **STRICT PASS**, 18 root checks, exact `[propext, Classical.choice, Quot.sound]` only.
- New reusable exact cache `bfss-s1v19-isolated-g4e-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`, log confirmed saved.
- Complete acceptance audit `OPENAI_MATH_BFSS_SU2_S1V19_ORIGINAL_G4C_G4E_18_ROOTS_STRICT_GATE1_ACCEPTANCE_2026_10_19.md`.

## Current gate is distinct

The source-exact G4F/G4G/G4H 15-root gate [#39300590971](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39300590971) was triggered by the isolated workflow commit `e6caebdcdee30f9e109762581963a78b388b3199`. It restores G4E, compiles unchanged G4F (4), G4G (6), G4H (5), audits all exact names/axioms, and caches original exact theta only if successful. **Not accepted before full log, actual kernel compilation, strict identity checks and cache save.**

## Next forward-only stage once G4H qualifies

From unchanged original source files, all in `experiments/openai-math-su2-concrete-potential/`:
1. `SU2BFSSG4IAOneParticleContinuityProbe.lean` `f8dcadce8b6c3183da6c0170966ff59410b15f7d`: `adjointColorMatrix_entry_continuous`, `complexOneParticleMatrix_continuous` (**2**).
2. `SU2BFSSG4IB1ExteriorFockSeedContinuityProbe.lean` `0658557712a78f40a4a8eeb3192d8c643033d929`: `orbitalGauge_parameter_continuous`, `fockSeedCoordinateLinear`, `fockSeedCoordinateLinear_apply`, `fockSeedCoordinateLinear_continuous`, `exteriorGauge_seedCoordinate_continuous`, `exteriorGauge_vacuum_coordinates_continuous`, `exteriorGauge_singleton_coordinates_continuous` (**7**).
3. `SU2BFSSG4IB2ExteriorFockTwoWedgeContinuityProbe.lean` `0579e38a9f2c2fcceee69a06c4526e430b320e38`: `wedgePairCoordinate`, `wedgePairCoordinate_expansion`, `exteriorGauge_wedgePair_coordinates_continuous`, `exteriorGauge_modePair_coordinates_continuous` (**4**).
4. `SU2BFSSG4IB3ExteriorFockAllContinuityProbe.lean` `6a508c0f7fd7e1b36ee75094c6ec520a625c7a3a`: `fockProductBasisCoordinate`, `fockProductCoordinates_expansion`, `fockCoordinateProduct`, `fockCoordinateProduct_jointContinuous`, `exteriorGauge_allCoordinates_continuous` (**5**).
5. `SU2BFSSG4IC1FermionParameterContinuityProbe.lean` `8167fa4698a75cc95467cfb02732280b1207e284`: `fermionGauge_parameter_continuous` (**1**).
6. `SU2BFSSG4IC2FermionJointContinuityProbe.lean` `a90f8799cae1c6752993ba554476037c39b3168d`: `fermionGauge_jointContinuous` (**1**).
7. `SU2BFSSG4JExactGaugeDataAssemblyProbe.lean` `dd82ff793918e448a2d91781edb84d273a664cd4`: `pairedGaugeData`, `pairedGaugeData_boson_exact`, `pairedGaugeData_fermion_exact`, `pairedGaugeData_fermion_jointContinuous` (**4**).

**Exactly 24 axiom roots** across seven original source files (2+7+4+5+1+1+4), sequential imports. G4J additionally imports previously **accepted** G2B `bosonGauge_continuous`; G4H must be accepted and restored. Keep original source mathematical definitions, type fields and exact structure `pairedAlgebraData.GaugeData`, not replacement assumptions. All files have explicit `#print axioms`. Strict source SHA pins, genuinely nonempty fresh `.olean`, exactly qualified names, no `sorryAx` or error, and exact cache key from prior accepted G4H. Where time-risk is real, split G4IA–G4IB3 (18 roots), then G4IC1/IC2/J (6 roots), **instead of launching overlapping full gates or blindly increasing timeouts**.

**Nature of success if achieved:** a literal upstream original SU(2) `AlgebraData.GaugeData` instance, proving bosonic & fermionic actions, exact finite-theta covariance, plus source joint continuity. It is *not* a global Spin(48) rotor homomorphism on the independent manuscript complex Clifford module; it does not prove a manuscript-model unitary identification or positive BFSS spectral gap.

## Original source quarter-turn still separate

The S1V22 candidate on this branch proves no accepted theorem yet. Despite removing S1G character and H5E8 Euler imports, the exact original `sourcePlusIGaugeCurve` imports **30+** historically compiled L6G6/L6G5/L6G4 physical-operator files. Treat source direct matrix equality as the open issue with a costly real dependency graph. Avoid a speculative CI. One source-faithful alternative is to independently construct a typed SU(2) exponential from the already accepted G1A color basis with small imports, prove its exact matrix, and **later** prove equality to original `sourcePlusIGaugeCurve` with the real L6G6X module imported. The intermediate finite-matrix result is not the original quarter-turn without this last equality.

## Governance

Only branch `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. Do not merge/update PR #25 or `main`, touch pinned `etblink/math@adc7f124`, alter positive-i color conventions, or equate a green CI run to physical gap verification. Preserve first-causal diagnostics/negative knowledge and reuse accepted caches.
