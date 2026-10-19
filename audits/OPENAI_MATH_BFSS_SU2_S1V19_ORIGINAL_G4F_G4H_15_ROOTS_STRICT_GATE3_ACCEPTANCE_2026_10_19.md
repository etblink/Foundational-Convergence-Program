# BFSS S1V19 — original G4F–G4H paired 48-Majorana and exact theta covariance

**Date:** October 19, 2026 PDT. **Disposition:** `ORIGINAL_SOURCE_G4F_G4H_15_ROOTS_KERNEL_PASS__EXACT_FERMION_ADJOINT_SOURCE_FIELD_ACCEPTED__GAUGE_DATA_ASSEMBLY_NEXT`.

## Strict immutable acceptance

- [Original G4F to G4H Paired Majorana Theta Covariance Strict Gate #3, run #39301827728](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39301827728), job `118233233209`, entire job **completed SUCCESS** with the corrected fail-closed source + axiom audit on workflow commit `d80e6c01c2a9d9d25744a9a8b77cedcc4aa31562`.
- Original immutable upstream math SHA `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib SHA `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact original accepted G4E source cache restored and all source-hash checks passed.
- Source module `SU2BFSSG4FRealColorAnnihilatorForwardProbe.lean`, Git blob `c633692f73341514efbf1365bd3a7ebcbc4e22f3`: **4 roots** `complexOneParticleMatrix_inv_entry`, `complexOneParticleMatrix_star_entry`, `fermionGauge_cancel_inv`, `annihilator_fermionGauge_forward`.
- Source module `SU2BFSSG4GMajoranaModeCovarianceProbe.lean`, Git blob `5343c70f955c630c2f93b050a89d51f094d17440`: **6 roots** `creator_annihilator_combination_covariant`, `majorana0_linear_apply`, **private** `majorana1_phase`, `majorana1_linear_apply`, `majorana0_fermionGauge_covariant`, `majorana1_fermionGauge_covariant`. Lean's true printed root for the private theorem is `_private.SU2BFSSG4GMajoranaModeCovarianceProbe.0.FCP.BFSSSU2GaugeG4G.majorana1_phase`; the corrected Python validator requires a unique full regex match with exactly this structure.
- Source module `SU2BFSSG4HExactThetaCovarianceProbe.lean`, Git blob `3ee402e49bbca8d90a232ddf5d34f578814549eb`: **5 roots** `complexOneParticleMatrix_paired_block_sum`, `pairedTheta_even_fermionGauge_covariant`, `pairedTheta_odd_fermionGauge_covariant`, `pairedAlgebraData_fermion_adjoint`, `fermion_adjoint_exact_field`. The last two match the actual OAI `AlgebraData.GaugeData.fermion_adjoint` signature for `pairedAlgebraData : AlgebraData 2`.
- The original compiler log explicitly prints `#print axioms` for **all 15 exact roots**, each with **only** `[propext, Classical.choice, Quot.sound]`, then `ORIGINAL_G4F_G4H_AXIOM_CLEAN_PASS 4`, `... PASS 6`, `... PASS 5` and final `ORIGINAL_SOURCE_G4F_G4H_15_ROOTS_KERNEL_PASS`. All source `.olean` were freshly compiled under pinned Lean, no unproved assumptions or `sorryAx` permitted.
- **Verified cache save:** `bfss-s1v19-isolated-g4h-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`, explicitly confirmed by Actions log `Cache saved with key:`.

## Negative knowledge and failed preceding gates

[Original run #39300590971](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39300590971) was red **only because** the strict validator mistakenly required a *public* name for the original **private** G4G theorem; compiler produced all 15 correct axioms. Intermediate [run #39301784646](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39301784646) used an over-escaped regex and also failed. Fixed source-exact anchored regex in `d80e6c0` yields the accepted #3 green. Preserve this distinction and do not regress to weakening private-declaration count/axiom checks, or repeat expensive unchanged CI.

## Mathematical acceptance scope

**Accepted:** exact original 24 complex-mode to 48 real-Majorana paired transport; original 16×3 theta fields transform under the original SU(2) gauge action via the source adjoint color coefficients (B = output, A = input) on Fermion 2; no altered +i/sign conventions, separate Clifford model or surrogate states used.

**Not accepted:** the exact upstream `pairedAlgebraData.GaugeData` six-field record (fermionic *joint continuity* G4IA–G4IC2 and construction G4J still require strict Lean qualification); the equality of original `sourcePlusIGaugeCurve` sourceZ quarter to the matrix literal; a global independent manuscript Spin(48) rotor lift, Hilbert intertwiner, full physical domain equivalence, BFSS spectral positivity or mass gap.

**Next bounded test:** unmodified original G4IA, G4IB1, G4IB2, G4IB3, G4IC1, G4IC2 and G4J: **24 roots** through the actual `pairedAlgebraData.GaugeData` fields, all importing the newly accepted G4H cache. Inspect first causal failure and split into 18+6 roots if a compile-runtime problem demands it. No main, PR #25, or upstream math mutations.
