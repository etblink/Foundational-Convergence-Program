# S1V52C2A — Gate #1 formally accepted (native original SU2 adjugate and lower row)

**Disposition:** `S1V52C2A_GATE1_PASS__THREE_NATIVE_SU2_ADJUGATE_ROOTS__ONLY_PERMITTED_AXIOMS__C2B_WHOLE_MATRIX_NEXT`

## Primary immutable evidence

[GitHub Actions run 39390498640](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39390498640), job `118520582799`, **COMPLETED SUCCESS** on branch-scope research commit `24e77211006525aaef1273ff2c558f8d43173ec7`.

- Original FCP candidate file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52C2ANativeSU2MatrixAdjugateSourceProbe.lean` pinned exact Git blob `12144c449ad232bb7aabb6febdafacda09e1fd88`.
- Genuine upstream `OAI.MathematicalPhysics.BFSS.Core` defining native `GaugeGroup 2` from immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. SHA and toolchain preflight **PASS**.
- Exact qualified C1 source cache restored on the **same research branch** from key `bfss-s1v52c1-isolated-original-native-gauge-quaternion-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- All three roots in `FCP.BFSSS1V52C2A` compiled and produced the exact axiom list `[propext, Classical.choice, Quot.sound]` (each of the three reports was split onto three lines in GitHub log display; the strict local validator read the unsplit original Lean output correctly). No `sorryAx` or extra assumptions.
- Validator printed `S1V52C2A_NATIVE_SU2_ADJUGATE_3_ROOTS_KERNEL_PASS`, `.olean` nonempty.
- Qualified cache saved: `bfss-s1v52c2a-isolated-native-su2-adjugate-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Diagnostic artifact `bfss-s1v52c2a-native-su2-adjugate-39390498640`, ID `12250395124`.

## Exact accepted statements

For `g : OAI.BFSSQuantum.GaugeGroup 2`, with source original `ColorMatrix 2`:

1. `originalNativeSU2_adjugate_eq_conjTranspose`: `Matrix.adjugate (g : ColorMatrix 2) = (g : ColorMatrix 2)ᴴ`.
2. `originalNativeSU2_bottomRight_eq_conj_topLeft`: `g 1 1 = star (g 0 0)`.
3. `originalNativeSU2_bottomLeft_eq_neg_conj_topRight`: `g 1 0 = -star (g 0 1)`.

The determinant-one source fact and both unitary identities are derived from the **native** `GaugeGroup 2` membership; orientation preserves original positive-i Pauli quaternion basis. Proof mirrors the qualified original L6H5E8P pattern with the minimal source C1 import closure.

## Progress and unqualified boundaries

The strictly accepted S1V52 roots now count 29: A=11, B1=4, B2=2, B3=6, C1=3, C2A=3. These **do not imply** native quaternion multiplication, actual Spin membership, full sixteen-block lift, original adjoint action or continuity.

Next: exact native whole-matrix quaternion reconstruction `S1V52C2B`, already staged; then real-coordinate matrix equality `S1V52C2C`, then injectivity and native multiplication. Reuse C2A cache from the same research branch; do not assume cache access across sibling branches. Strict source SHA, exact original BFSS Core, and permitted axiom validator mandatory.

**Negative knowledge:** Preserve C1 Gate #1 Unicode `ᴴ` syntax failure (`open Matrix` missing), which was repaired before accepted C1 Gate #2. No reinterpretation of failed source compiles as mathematical counterexamples; no unqualified proof statements accepted.

No changes to canonical main, upstream fork, or draft PR #25.
