# S1V52L7C4 — source positive-i ZYZ quaternion coefficients Gate #1 ACCEPTED

**Disposition:** `L7C4_GATE1_PASS__FIVE_SOURCE_EXACT_POSITIVE_I_ZYZ_ROOTS__L7C3_V3_CACHE_RESTORED__THREE_PERMITTED_AXIOMS_ONLY__NATIVE_UNIVERSAL_EULER_WITNESS_OPEN`.

## Independently checked evidence

- [GitHub Actions run #39497864294](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39497864294), job `118887486973`, SUCCESS on checkout `a002ccc36e17baa93d2c4e8495289b47abb368e9`.
- Exact file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7C4ActualNativeZYZQuaternionFiniteCoefficientsProbe.lean`, Git source blob `e11f91b96ac184787c9cfa6bfbae162fe2abda44`.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS Core `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact preflight PASS.
- Restored qualified L7C3 cache `bfss-s1v52l7c3-original-quat-to-native-su2-v3-adc7f124-lean4341-d13f23b-Linux-X64`; required original source `.olean` checks passed. New `.olean` and cache `bfss-s1v52l7c4-native-zyz-quaternion-coefficients-v1-adc7f124-lean4341-d13f23b-Linux-X64` saved.
- Each exact `#print axioms` reports `[propext, Classical.choice, Quot.sound]`:
  1. `FCP.BFSSS1V52L7C4.originalNativeZQuaternion_norm`
  2. `FCP.BFSSS1V52L7C4.originalNativeYQuaternion_norm`
  3. `FCP.BFSSS1V52L7C4.originalNativeZYZQuaternion_compose`
  4. `FCP.BFSSS1V52L7C4.originalNativeZYZQuaternion_first_u`
  5. `FCP.BFSSS1V52L7C4.originalNativeZYZQuaternion_first_v`.
- Fail-closed validator `S1V52L7C4_ORIGINAL_POSITIVE_I_ZYZ_5_ROOTS_KERNEL_PASS`, no Lean errors or `sorryAx`. Diagnostic artifact `bfss-s1v52l7c4-native-zyz-coeff-39497864294` id `12299276228`.

## Mathematics and boundary

The exact original source quaternion Z(a), Y(b) satisfy norm one and the original B1 quaternion Z(a)Y(b)Z(c) product has coordinates `⟨cos b*cos(a+c),cos b*sin(a+c),sin b*cos(a-c),sin b*sin(a-c)⟩`, with top-row entries `u=cos b*exp(i(a+c))`, `v=sin b*exp(i(a-c))`. Signs are exactly original positive-i, **not** an alternative quaternion multiplication or time rescaling.

Accepted S1V52 ledger **112 → 117 distinct roots**. The staged L7C5 exact original native `GaugeGroup 2` Z/Y factors, L7C6 zero-safe phase formulas and L7C7 unconditional Euler witness/Spin hom remain UNQUALIFIED until successive strict gates. Historic source-curve L7C0/L7C1 remain staged separately; direct quaternion-native factorization L7C5-L7C7 does not prove the constructed circles equal historical named source one-parameter exponentials. Even eventual per-block unconditional Spin hom would not prove combined sixteen-block Fock equivalence, Majorana action, topological continuity or spectral positivity.

Canonical main, upstream `etblink/math`, draft PR #25 unmodified. This audit-only commit fires no CI.
