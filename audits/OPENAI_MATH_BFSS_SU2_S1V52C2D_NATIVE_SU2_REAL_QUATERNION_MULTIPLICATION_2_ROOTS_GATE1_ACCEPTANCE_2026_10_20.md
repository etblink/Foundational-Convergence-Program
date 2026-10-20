# S1V52C2D Gate #1 — Original native GaugeGroup 2 quaternion multiplication ACCEPTED

**Disposition:** `S1V52C2D_GATE1_PASS__TWO_NATIVE_SU2_QUATERNION_PRODUCT_ROOTS__PERMITTED_AXIOMS_ONLY__C2E_AMBIENT_CLIFFORD_UNITS_HOM_NEXT__SPIN_MEMBERSHIP_OPEN`.

## Strict primary evidence

- [GitHub Actions run #39393583319](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39393583319), job `118530715476`: completed **SUCCESS** (2026-10-20T08:33:46Z), checkout commit `ebd4451ae79ec0dc6c0c04a299383af901836b7e`; all gate/job steps successful.
- Exact FCP Lean source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52C2DOriginalNativeSU2QuaternionMultiplicationProbe.lean`, Git blob `92ff4ccc7ace40cf74113168ab27710c18335e4e`; source-blob preflight passed.
- Exact original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; original BFSS Core `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; unchanged source hashes pinned.
- Qualified accepted same-branch C2C cache restored: `bfss-s1v52c2c-isolated-native-su2-real-quaternion-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`; required `.olean` dependencies present.
- `FCP.BFSSS1V52C2D.sourceQuaternionCoordsOfMatrix_sourceMatrix` passed permitted axiom output `[propext, Classical.choice, Quot.sound]` (line-wrapped in GitHub job log).
- `FCP.BFSSS1V52C2D.originalNativeQuaternionCoords_mul` passed the identical exact permitted axiom output.
- Strict validator emitted `S1V52C2D_GENUINE_NATIVE_SU2_QUATERNION_MULTIPLICATION_2_ROOTS_KERNEL_PASS` and confirmed nonempty compiled module `.olean` and absence of `sorryAx`.
- Qualified saved cache key: `bfss-s1v52c2d-isolated-native-su2-quaternion-mul-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Diagnostic artifact: `bfss-s1v52c2d-native-su2-multiplication-39393583319`, ID `12251365483`.

## Precise accepted mathematics

1. `sourceQuaternionCoordsOfMatrix_sourceMatrix`: extracting the first row's real and imaginary parts from the original positive-i B1 2x2 quaternion matrix is a **left inverse** on **all real quadruples** `p`, not restricted to unit norm.
2. `originalNativeQuaternionCoords_mul (g h : OAI.BFSSQuantum.GaugeGroup 2)`:
```lean
originalNativeQuaternionCoords (g * h) =
  sourceQuaternionCompose (originalNativeQuaternionCoords g)
    (originalNativeQuaternionCoords h)
```
This uses genuine original `GaugeGroup 2` inherited multiplication in `ColorMatrix 2`, strictly accepted C2C native matrix reconstruction, and strictly accepted B1 `sourceQuaternionColorMatrix_compose`. No replacement group or sign changes. The multiplication identity is not postulated.

## Accumulated accepted roots and correct boundaries

S1V52A 11, B1 4, B2 2, B3 6, C1 3, C2A 3, C2B 1, C2C 2, C2D 2 = **34** strictly accepted local declarations.

Next isolated test: S1V52C2E **native original SU2 → original 48-Clifford algebra units** `MonoidHom` on each source spin block. It must prove identity and composition from the accepted C2D native coordinate multiplication, B2 source Clifford polynomial multiplication, and B3 certified norm-one units. This will still NOT prove genuine Mathlib `spinGroup source48Quadratic` membership.

Additional P0 obligations: genuine source Clifford Lipschitz origin, true Clifford star-unitarity (not assumed from algebraic inverse), evenness, sixteen-block cross-commutation and assembly, exact source adjoint/projection, and topological continuity. These are not replaced by the accepted coordinate algebra. Preserve C1 Gate #1 `ᴴ` parser-scope RED and the specific correct fix `open Matrix`.

No change to canonical main, pinned upstream, or draft PR #25; no BFSS Hamiltonian/spectral claim.
