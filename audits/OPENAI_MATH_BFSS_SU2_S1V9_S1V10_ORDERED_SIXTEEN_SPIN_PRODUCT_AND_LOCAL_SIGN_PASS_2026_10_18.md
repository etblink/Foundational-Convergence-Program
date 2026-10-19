# BFSS SU(2) S1V9 / S1V10 — accepted ordered source Spin48 product and local central sign

**Date:** 2026-10-18 PDT (CI completed 2026-10-19 UTC).  
**Strict run:** [#39212525294 — GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39212525294).  
**Job:** `117928901633`; checkout SHA `67d45d8f34564ef940489c89b8da9a3c429a18ca`.  
**Qualified source pins:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## S1V9 — ordered sixteen-factor actual Spin48 element (6 proof roots)

Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V9OrderedSixteenSpin48RotorProductProbe.lean`, Git blob `3d2faad8ad01b4142012036278119079873f587d`.

Qualified:

- `FCP.BFSSS1V9.sourceColorPlaneRotor_comm_all`
- `FCP.BFSSS1V9.sourceOrderedSixteenRotors`
- `FCP.BFSSS1V9.sourceOrderedSixteenRotors_length`
- `FCP.BFSSS1V9.sourceSixteenColorRotor`
- `FCP.BFSSS1V9.sourceColorPlaneRotor_comm_list`
- `FCP.BFSSS1V9.sourceSixteenColorRotor_comm_block`

The **actual typed** `sourceSixteenColorRotor : spinGroup Q` is the `List.prod` of the sixteen concrete source Spin48 color-plane rotors in the *original Fin16 order* encoded by `(finProdFinEquiv : Fin8 × Fin2 ≃ Fin16).symm`. The list has exactly length sixteen, and EACH concrete source block rotor commutes with the entire product inside the genuine noncommutative Spin group. This is a mathematically controlled **ordered** list product, not an inappropriate `Finset.prod` or an assumed commutative Spin group.

## S1V10 — each block contributes negative central square (2 proof roots)

Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V10SourceColorBlockRotorCentralSignProbe.lean`, Git blob `78379ea6749efa3b1074a3da0bc3c9b1d1682d9f`.

Qualified:

- `FCP.BFSSS1V10.sourceColorPlaneRotor_coe_sq_neg_one`
- `FCP.BFSSS1V10.sourceColorPlaneRotor_coe_fourth_power_one`

For each actual source 16-block color plane, the Clifford product `ι(a)ι(b)` of two perpendicular normalized Majorana generators satisfies `(ι(a)ι(b))² = -1` and its fourth power is `+1`. This is the correct double-cover **local** sign. It must NOT be silently replaced with a square +1, and it does **not** by itself prove the full sixteen-product square or that the original normalized-Pauli `-I` maps to the correct element.

## Evidence and limits

All eight new `#print axioms` roots show exactly `[propext, Classical.choice, Quot.sound]`. The strict CI step verified nonempty freshly compiled `.olean` files, zero `sorryAx`, zero Lean `error:`, and printed both `S1V9_ORDERED_SIXTEEN_SPIN48_PRODUCT_BLOCK_CENTRALIZER_6_ROOTS_KERNEL_PASS` and `S1V10_SOURCE_SPIN_COLOR_ROTOR_NEG_SQUARE_ORDER_FOUR_2_ROOTS_KERNEL_PASS`. No previous accepted source was modified.

The next **separate** S1V11 source candidate attempts the full `(-1)^{16}=+1` square of the genuine ordered Spin48 product, via proved commuting factors and negative local squares; this is NOT accepted merely because S1V9 and S1V10 compiled. [S1V11 gate #39213076095](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39213076095) was intentionally triggered in the isolated workflow for that hypothesis.

**Still OPEN:** literal compiled original G1A/S1L/S1S namespace and normalized +i SU2 representation bridge, SU2→Spin48 homomorphism and continuity, original manuscript Clifford/Fock module unitary intertwiner and operators/domains, Spin9 global covariance, physical point spectrum, BFSS mass gap. A source-sized Spin group product is NOT automatically a group homomorphism from original SU2.

## CI safety

This gate was one deliberate workflow-file-only push on `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. No PR #25 modifications, merges or PR events. Earlier infrastructure and elaboration red evidence remains preserved.
