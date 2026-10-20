# S1V52C1 Gate #2 ACCEPTED — original native SU(2) quaternion coordinates and unit norm

**Disposition:** `S1V52C1_GATE2_PASS__THREE_NATIVE_GAUGE_SU2_QUATERNION_ROOTS__ORIGINAL_CORE__PERMITTED_AXIOMS_ONLY__C2_PRODUCT_BRIDGE_NEXT`

## Primary evidence

- [Strict Gate #2 run 39389316989](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39389316989), job `118516723298`, **COMPLETED SUCCESS**, exact workflow/source checkout commit `e606f2163a035e3efc2993b0fe0f82c2e43a59e6`.
- Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52C1OriginalNativeGaugeQuaternionCoordinatesProbe.lean`; exact checked Git blob `bbb6fd81e68787d236a9919c3a7675230e899818`.
- Immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` and genuine pinned original `OAI/MathematicalPhysics/BFSS/Core.lean` source SHA preflight **PASS**.
- Exact pinned original BFSS Core defining native `OAI.BFSSQuantum.GaugeGroup 2` **compiled**. Accepted S1V52B3 48-source Clifford dependency cache restored **successfully** from same isolated branch.
- All three C1 roots compiled and emitted **exactly** `[propext, Classical.choice, Quot.sound]`, with no `sorryAx` or additional axioms. Validator printed `S1V52C1_ORIGINAL_NATIVE_SU2_GAUGE_QUATERNION_3_ROOTS_KERNEL_PASS`.
- Qualified cache saved with key `bfss-s1v52c1-isolated-original-native-gauge-quaternion-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Diagnostic artifact `bfss-s1v52c1-native-gauge-coordinates-39389316989`, artifact ID `12249600225`.

## Accepted theorem roots and limits

Namespace `FCP.BFSSS1V52C1`; `g : OAI.BFSSQuantum.GaugeGroup 2`, not a substitute group. Define
`p(g) = (Re g₀₀, Im g₀₀, Re g₀₁, Im g₀₁)` in the accepted B1 quaternion-coordinate structure.

1. `originalNativeQuaternion_u`: `a(g) + i b(g) = g₀₀`.
2. `originalNativeQuaternion_v`: `c(g) + i d(g) = g₀₁`.
3. `originalNativeQuaternion_norm_one`: `a(g)^2 + b(g)^2 + c(g)^2 + d(g)^2 = 1`, from **actual** original `GaugeGroup 2` unitary property, not postulated.

**These do NOT yet prove whole native matrix reconstruction, native quaternion-coordinate multiplication, genuine `spinGroup source48Quadratic` membership, 16-block homomorphism, original source adjoint action, continuity, or physical spectral claims.** C1 provides the native norm and coordinate foundation for these separate tasks.

## Preserved negative knowledge

Gate #1 [run 39388149216](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39388149216) was **RED after native BFSS Core compiled**; first two C1 roots axiom-clean, third source parser failed at Unicode matrix adjoint `Aᴴ` because the file omitted `open Matrix`. The consequent `sorryAx` was a failed proof, never promoted. [Causal audit](OPENAI_MATH_BFSS_SU2_S1V52C1_GATE1_NATIVE_SU2_QUATERNION_HERMITIAN_ADJOINT_SCOPING_RED_2026_10_20.md).
The repair `c8dd29d9ea8504a02bce969298466ff3c3561623` added only `open Matrix`, preserving every theorem statement. Gate #2 workflow `e606f2163a035e3efc2993b0fe0f82c2e43a59e6` changed only the checked target source SHA. One qualified green follows the actual corrected source.

## Next Project Lead obligation

C2: prove `sourceQuaternionColorMatrix (originalNativeQuaternionCoords g) = (g : ColorMatrix 2)` exactly in native `GaugeGroup 2`, and establish the coordinate map is multiplicative by matrix embedding injectivity and accepted B1 `sourceQuaternionColorMatrix_compose`. Use accepted L6H5E8P native SU2 adjugate and quaternion form as faithful precedents, or rederive the same exact 2×2 source formula on this branch from the pinned BFSS Core. Preserve +i and original signs. Stage focused immutable CI only after source is ready.

No change to `main`, `etblink/math`, draft PR #25, or the original Hamiltonian/spectral assertions.
