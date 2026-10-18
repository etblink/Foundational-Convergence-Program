# S1P0/S1P1 — actual source BFSS SO(48) action on normalized real Clifford(48) algebra

**October 18, 2026 PDT | Project Lead | research branch only.**

**Disposition:** `STRICT_KERNEL_PASS__P0_FIVE_ROOTS__P1_TWO_ROOTS__SOURCE_ORIGINAL_REAL_CLIFFORD_ALGEBRA_HOM__NO_SPIN48_LIFT`.

## Immutable strict CI custody

- [BFSS SU2 Source Clifford Universal Hom Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39162832661), run `39162832661`, job `117779541770`, complete **SUCCESS** with source/workflow HEAD `7af4eed4f0061a525c0cadebf09e5e25fbf761a0`.
- P0 source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1P0NormalizedSourceQuadraticActionProbe.lean`, exact Git blob `3f5e42879537be4c3fd8a777ed927e6fda00f40e`.
- P1 source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1P1SourceCliffordUniversalHomProbe.lean`, exact Git blob `7f6aa1f0029053cde4a18e7b969c318cf22ab83a`.
- Workflow `.github/workflows/bfss-su2-source-clifford-universal-hom.yml`, Git blob `3c89f87508ad9824bd60145d157d88991de6b9c2`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source/cache/toolchain pins and cached dependencies all verified.
- Prerequisite S1C 5 roots, S1J 8 roots, S1K 3 roots qualified again. New P0 `.olean` compiled with *five* explicit `#print axioms` roots, P1 `.olean` compiled with *two* explicit roots. Each permitted axiom set is exactly `[propext, Classical.choice, Quot.sound]`. No `sorryAx`, compilation error, unqualified root, or unsupported axiom. Exact markers:
  - `S1P0_ACTUAL_48_REAL_QUADRATIC_SOURCE_5_ROOTS_KERNEL_PASS`.
  - `S1P1_ACTUAL_REAL_CLIFFORD48_UNIVERSAL_HOM_2_ROOTS_KERNEL_PASS`.

## Exact proved mathematics

The original `OriginalMajoranaLabel := Fin 24 × Fin 2` is indexed by the literal accepted 48 Majoranas. P0 defines the **normalized** quadratic form on the real 48-dimensional label space:

```lean
Source48Vector := OriginalMajoranaLabel → ℝ
source48Quadratic v = ∑ i, v i * v i
```

This is the Clifford normalization for the manuscript's `√2 θ` generators, whose squares are one. It is *not* a new physical fermion model or surrogate source matrix.

P0 constructs `source48LinearEquiv g` on the exact original 48-label real vector space from the S1J/S1K matrix and proves BOTH:

```lean
source48LinearEquiv_apply g v =
  (sourceRealMajoranaMatrix g).mulVec v

source48Quadratic (source48LinearEquiv g v) =
  source48Quadratic v
```

These are fully discharged using the same original SO(48) transpose-orthogonality relation, no added isometry hypothesis.

P1 avoids bundling a massive `QuadraticMap.IsometryEquiv`. Instead it defines `f_g := (CliffordAlgebra.ι Q) ∘ₗ source48LinearEquiv g` and proves **explicitly for every real vector** `v`:

```
f_g(v) * f_g(v) = algebraMap ℝ (CliffordAlgebra Q) (Q v).
```

This is the **entire** condition required by pinned Mathlib's universal `CliffordAlgebra.lift`, yielding:

```lean
source48CliffordHom (g : GaugeGroup 2) :
    CliffordAlgebra source48Quadratic →ₐ[ℝ]
      CliffordAlgebra source48Quadratic
```

and the exact all-generator covariance:

```lean
source48CliffordHom_generator g v :
  source48CliffordHom g (CliffordAlgebra.ι source48Quadratic v) =
    CliffordAlgebra.ι source48Quadratic
      ((sourceRealMajoranaMatrix g).mulVec v)
```

This is an **independently defined abstract real Clifford algebra** and a genuine source-exact algebra homomorphism with kernel-audited generator covariance. No independent Fock *module* has yet been constructed.

## Red-to-green scientific/proof-engineering lessons

- [S1O Gate #1 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39161393107): namespace `Matrix.dotProduct` falsely qualified and orthogonal membership-iff theorem incompletely applied; both fixed without changing source mathematics.
- [S1O Gate #2 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39162231322): the first five quadratic declarations printed permitted axioms, but the large bundled `QuadraticMap.IsometryEquiv` repeatedly hit maximum recursion depth and downstream `CliffordAlgebra.equivOfIsometry` reduction timed out. File stayed RED; don't retroactively count it as accepted.
- [S1O Gate #1 audit](OPENAI_MATH_BFSS_SU2_S1O_GATE1_CLIFFORD_ALGEBRA_ACTION_FAILURE_2026_10_18.md) and [Gate #2 audit](OPENAI_MATH_BFSS_SU2_S1O_GATE2_QUADRATIC_ISOMETRY_RECURSION_RED_2026_10_18.md) are immutable failure records.
- **Structural success:** isolate the five genuinely source-bound quadratic facts in a separate qualified module, then invoke the Clifford algebra's UNIVERSAL PROPERTY directly on an explicitly proved square identity. This avoids huge definitional elaboration of a bundled isometry while preserving the actual source matrix and the complete generator covariance. This is a reusable method for future Lean proofs: named lower-layer lemmas + universal property > repeated high-dimensional bundled elaboration.
- The successful gate alone does NOT certify the rejected S1O `source48QuadraticIsometry` or `source48CliffordAut` declarations; those remain unproved.

## Important still-open obligations (do not skip)

1. **Multiplicativity** of `g ↦ source48CliffordHom g` at the complete algebra-homomorphism level: prove from S1J's `sourceRealMajoranaMatrix_mul`, matrix-vector associativity, and `CliffordAlgebra.hom_ext`, not by treating `AlgHom` as invertible.
2. **Invertibility**: prove the source-Clifford hom at `g⁻¹` provides the two-sided inverse; THEN package an actual SU(2) representation into `AlgEquiv` (as an intermediate goal, not a Spin lift).
3. **Inner even Clifford implementation**: produce actual `spinGroup Q` elements implementing those algebra automorphisms, prove their projection on the 48 vector generators, the exact group law and continuity. Pinned `Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean` supplies a Spin subgroup and conjugation stability, but the inspected pinned file does not package a continuous Spin→SO covering projection or its simply-connected SU(2) lifting theorem.
4. **Independent manuscript complex irreducible module** with correctly normalized 48 self-adjoint generators and explicitly constructed unitary source intertwiner; transport the physical Hilbert space, smooth invariant core, all 16 supercharges and closed graphs/domains before equating manuscript Hamiltonians.
5. Separately verify global Spin(9) sector dynamics and positive spectrum. **No BFSS mass-gap conclusion** from P1.

Do not conflate algebra endomorphisms with actual elements of Spin(48), or module equivalence with algebra equivalence. Preserve original `+i` color conventions.

**Governance:** branch `research/openai-math-su2-s3l-combined-rotation`, [draft PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) and [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28). No changes to `main`, source `etblink/math`, pinned dependencies, or accepted historical modules.