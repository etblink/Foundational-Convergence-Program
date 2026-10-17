# L6H5E8: constructive exact-source SU(2) Euler factorization — Project Lead proof route

**Date:** 2026-10-16. **Status:** mathematically checked decomposition route, **not** a Lean-qualified source group-generation theorem; **not** a BFSS spectral result.

**Research branch:** `research/openai-math-su2-s3l-combined-rotation`.
**Original pinned definitions:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
**Scientific boundary:** https://github.com/etblink/Foundational-Convergence-Program/issues/27

## Qualified premises versus missing theorem

- H5E8M (strict #330): the intersection of the *actual* three color Gauss kernels is the fixed space of the algebraically generated subgroup of the literal `sourcePlusIGaugeCurve c t` flows.
- H5E8N (strict #333): the kernel is also fixed under that subgroup's topological closure; equality with the `pairedGaugeData.physicalSpace` is still conditional on full density.
- H5E8O (strict #336): the original three `+i * color c` directions really span traceless skew-Hermitian source color matrices over **real** scalars. Spanning alone is **not** group generation.
- H5E8P (strict #339): for every genuine `g : GaugeGroup 2`, `g=[[u,v],[-star v,star u]]`, with the full source determinant-one/unitarity premises.
- H5E8Q **strict #342 QUALIFIED**: after red #341's nonexistent pinned `Complex.conj` identifier (which produced `sorryAx` only for the unqualified `normSq` root), the targeted source-only correction commit `972120b3b0715b2b06426862de5fd351e9f34afd` used the definitional `star` without changing theorem statements, source matrices or sign conventions. Strict [#342](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38955319998), job `117156615538` successfully compiled ALL THREE roots: `originalSU2_quaternion_matrix`, `originalSU2_firstRow_star_norm`, `originalSU2_firstRow_normSq_eq_one`. All three `#print axioms` outputs contain exactly `[propext, Classical.choice, Quot.sound]` (no `sorryAx`), and the mandatory marker `L6H5E8Q_ORIGINAL_SU2_QUATERNION_UNIT_SPHERE_QUALIFIED` is present. Hence the exact original source matrix quaternion form and real first-row normSq-one equality are accepted. This is still **not** SU(2) group generation.

**Still unproved in Lean:** `actualOriginalColorGeneratedSubgroup = ⊤` (or merely its topological closure is all of `GaugeGroup 2`), and thus the unconditional exact-source joint-Gauss-kernel ↔ physicalSpace equivalence.

## Actual pinned Pauli normalization — avoid generic sign assumptions

The concrete source uses `SU2ColorCrossProbe.lean` under `experiments/openai-math-su2-concrete-potential/`, whose ordered matrices are
`σₓ=[[0,1],[1,0]]`, `σᵧ=[[0,-i],[i,0]]`, `σ_z=[[1,0],[0,-1]]`.
The witness in `SU2BFSSFullAlgebraDataProbe.lean` identifies `concreteAlgebraData.color = normalizedPauli`, with each `T_c=σ_c/√2`, equivalent to the source real scale `Real.sqrt 2/2`.

The literal source **positive-i** curves for the y- and z-directions must be:
```text
Z(a)=sourcePlusIGaugeCurve (2:Fin 3) a
    = [[exp(i a/√2), 0], [0, exp(-i a/√2)]]
Y(b)=sourcePlusIGaugeCurve (1:Fin 3) b
    = [[cos(b/√2), sin(b/√2)],
       [-sin(b/√2), cos(b/√2)]]
```
Both signs in Y follow from the actual `σᵧ` and `exp(+i b T_y)`; do not swap them or use an inverse action implicitly.

Multiplying these *in the precise order* `Z(a) * Y(b) * Z(c)` gives
```text
[[exp(i(a+c)/√2) cos(b/√2),    exp(i(a-c)/√2) sin(b/√2)],
 [-exp(-i(a-c)/√2) sin(b/√2), exp(-i(a+c)/√2) cos(b/√2)]]
```

## Constructive witness for any actual source gauge matrix

Fix `g : GaugeGroup 2`, write its qualified quaternion entries `u=g 0 0`, `v=g 0 1`, so `|u|²+|v|²=1`.

1. Put `r=|u|≥0`, `s=|v|≥0`. Pick `θ∈[0,π/2]` with `cos θ=r`, `sin θ=s`; e.g. mathematical `atan2(s,r)`. Set `b=√2 θ`.
2. Choose real phases `φ,ψ` satisfying `u=r exp(i φ)`, `v=s exp(i ψ)`. The phases are arbitrary if the corresponding entry is **zero**: set it to zero then; therefore all boundary cases are covered with **no division by zero**. For nonzero entries use the usual complex polar form.
3. Set `a=(φ+ψ)/√2` and `c=(φ-ψ)/√2`. Thus `(a+c)/√2=φ` and `(a-c)/√2=ψ`.
4. Substitute into the explicit matrix product. The first row becomes precisely `(u,v)`. The lower row then agrees with H5E8P's genuine quaternion form, including both signs. Therefore `g=Z(a)*Y(b)*Z(c)`.

This is a **mathematical Euler factorization**, not yet a checked Lean theorem. It does not depend on connectedness, inverse function theorems, a Lie-Trotter limit, or H5E8O real spanning. It yields the stronger algebraic subgroup-generation statement once its components and phase witnesses are formally discharged, not just density.

## Separately auditable Lean proof interfaces

A. **Frozen y/z exponential entries.** Prove their matrix exponential closed forms from the qualified `sourcePlusIGaugeCurve` and the *actual* normalized Pauli matrix. Check the positive-i sign and the half-angle scale. Prefer small 2x2 matrix identities over any 48-Majorana/Fock elaboration.

B. **Unit sphere and phase/magnitude witness.** Reuse now-qualified H5E8Q. Supply an explicit real-angle unit-circle witness and two complex polar-phase witnesses with the zero cases visible. Read pinned Mathlib signatures before choosing `arg`, `atan2`, or unit-circle lemmas.

C. **Small algebraic product.** Prove `Z a * Y b * Z c` at exactly four `Fin 2` indices. Never unfold the source `FullL2` gauge action in this proof.

D. **Exact source specialization and subgroup membership.** Transport from accepted closed forms to the **same** original `sourcePlusIGaugeCurve`; use H5E8M's `actualOriginalColorGaugeCurve_mem_generated`, closure under multiplication, and the explicit Euler witnesses.

E. **Full Gauss statement.** With `actualOriginalColorGeneratedSubgroup = ⊤`, instantiate H5E8N's conditional `actualOriginalJointKernel_iff_physical_of_dense`. Audit the original physical-space definition, inverse bosonic pullback, and source fermionic fiber conventions; no extra spectral conclusion.

**Stop rule:** If phases/angle lemmas require disproportionately expensive Mathlib specialization, investigate a genuine topological-density proof using H5E8O spanning and the existing H5E8N closure interface. But do not assert density simply from infinitesimal spanning.

## Independent numerical sign sanity check (not proof)

Using the exact matrices above, NumPy tests of 1,000 seeded random normalized complex pairs `(u,v)`, plus 6 edge cases `u=0` or `v=0`, including imaginary and negative entries, gave maximum absolute entrywise discrepancy `8.4e-16` between `[[u,v],[-conj(v),conj(u)]]` and the constructed `Z(a)Y(b)Z(c)`. This only falsification-tests the signs, angle scaling, and zero-case recipe at floating-point precision. Analytic derivation and strict pinned Lean gate remain necessary.

**Research governance:** no `main` or upstream source change, no broadened axioms, no `sorry`, no premature group-generation or BFSS spectral acceptance. Preserve the #341 identifier negative knowledge and subsequent strict-gate evidence separately.


## Pinned Mathlib exponential route (verified against commit d13f23b)

Source: `Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean` in the exact pinned Mathlib checkout. Its **existing** lemmas are `Matrix.exp_diagonal (v : m → 𝔸)` (line ~87) and `Matrix.exp_conj (U A : Matrix m m 𝔸) (hy : IsUnit U)` (line ~188). The scalar reconciliation `Complex.exp_eq_exp_ℂ : Complex.exp = NormedSpace.exp` appears in the pinned `Mathlib/Analysis/SpecialFunctions/Exponential.lean` (line ~211). These signatures were checked in the **pinned source**, not assumed from current moving docs.

This gives a structural path for **both** exact-color curves without huge noncommutative exponential power sums:

- **z-direction:** show `t • (i • pairedAlgebraData.color (2:ColorIndex 2))` is the 2×2 diagonal with entries `i * t/√2`, `-i * t/√2` using `pairedAlgebraData_color`, `concreteAlgebraData_color`, and `normalizedPauli 2`. Rewrite with `Matrix.exp_diagonal` and `Complex.exp_eq_exp_ℂ`. Compare all four entries with actual `sourcePlusIGaugeCurve 2 t`.
- **y-direction by fixed diagonalization:** write `J=[[0,1],[-1,0]]`, `U=[[1,1],[i,-i]]`, `V=(1/2)*[[1,-i],[1,i]]` over `ℂ`. Direct four-entry arithmetic proves `U*V=1`, `V*U=1`, and `J=U*diag(i,-i)*V`. Hence `V=U⁻¹` and `U` is a unit; apply `Matrix.exp_conj` and `Matrix.exp_diagonal`. The resulting first row is `[cos(t/√2),sin(t/√2)]`, and second row `[-sin(t/√2),cos(t/√2)]` after elementary `Complex.exp_mul_I`/Euler identities. This preserves positive-i and agrees with the exact source Pauli y-index `1`; check all boundary signs.
- **Proof isolation:** first certify the tiny algebraic identities `U*V=V*U=1` and tangent conjugation, then exponential transport, then group-valued source coercion and Euler witnesses. Avoid opening the original Fock action, `FullL2`, or broad concrete `AlgebraData` expressions.

This diagonalization uses **nonunitary but invertible** `U` only as an internal algebraic proof witness. It does **not** replace the source gauge group, nor assume any extra symmetry or unproved group generation. The exact implementation and Lean success remain unqualified until independent strict CI.


## Pinned all-cases phase and angle interfaces (2026-10-16)

Read `Mathlib/Analysis/SpecialFunctions/Complex/Arg.lean` at the exact pinned revision `d13f23b`. The key theorem is **already all-cases**, with no `u ≠ 0` precondition:

```lean
Complex.norm_mul_exp_arg_mul_I (x : ℂ) :
  ‖x‖ * Complex.exp (Complex.arg x * Complex.I) = x
```

Consequently set `φ := Complex.arg u`, `ψ := Complex.arg v` without separate zero-entry cases. When `u=0` or `v=0`, the corresponding norm factor is zero and the theorem proves the required identity directly. This supersedes the earlier manual phase-case split, avoiding avoidable proof bifurcation.

For the common real mixing angle, define `r=‖u‖`, `s=‖v‖`, and `θ=Real.arcsin s`. Pinned `Mathlib/Analysis/SpecialFunctions/Trigonometric/Inverse.lean` provides:

```lean
Real.sin_arcsin {x : ℝ} (hx₁ : -1 ≤ x) (hx₂ : x ≤ 1) :
  Real.sin (Real.arcsin x) = x
Real.cos_arcsin (x : ℝ) :
  Real.cos (Real.arcsin x) = Real.sqrt (1 - x ^ 2)
Real.arcsin_nonneg {x : ℝ} : 0 ≤ Real.arcsin x ↔ 0 ≤ x
Real.arcsin_le_pi_div_two (x : ℝ) :
  Real.arcsin x ≤ π / 2
```

Use now-qualified H5E8Q `normSq u + normSq v = 1` and pinned complex `normSq_eq_norm_sq` coercion lemmas to derive `r²+s²=1`. Since `r,s≥0`, then `s≤1`, `sin θ=s`, `cos θ=√(1-s²)=√(r²)=r`; both endpoints and zero-norm cases are automatic.

Finally use `a=(φ+ψ)/√2`, `c=(φ-ψ)/√2`, `b=√2 θ`. Pinned `Mathlib/Analysis/Complex/Trigonometric.lean` has `Complex.exp_ofReal_mul_I (x:ℝ)` and `Complex.exp_mul_I` to bridge scalar exponentials to cos/sin, including exact signs.

**Not qualified:** These are confirmed pinned lemma signatures and a mathematically sufficient constructive specialization plan; their composition into the literal `GaugeGroup 2` original color curves remains to be implemented and strictly checked. No replacement gauge action or unproved density premise is introduced.

## Strict acceptance of original z and y source flows — 2026-10-16

**H5E8R accepted:** Original Source Spin Identity [#345](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38974739593), source SHA `236d762b8f0dae4e3b181a0a2e8635ee62b0566f`. The original positive-i normalized Pauli-z tangent is diagonal, and the exact original gauge curve is the corresponding scalar-exponential diagonal. Strict allowed axioms only.

**H5E8S accepted:** Original Source Spin Identity [#348](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38980539519), source SHA `18bb154ccf6a3ece51c858ea999e3c2531793186`. All six roots compiled under exactly `propext`, `Classical.choice`, `Quot.sound`: the fixed source y-change matrix U, its explicit inverse V, both inverse products, the actual positive-i y-tangent diagonal conjugation, and the exact genuine `sourcePlusIGaugeCurve (1:Fin 3)` diagonal-exponential conjugation. U=[[1,1],[i,-i]] and V=1/2[[1,-i],[1,i]]. This is a source-exact identity, not an alternative gauge representation.

**Negative knowledge:** #346: normalize `Complex.I ^ 2 = -1` after `ring_nf`; expose `Matrix.vecMul_diagonal` for row-by-diagonal expressions; general `SemiconjBy.exp_right` selected a nonmatching matrix multiplication instance, so use pinned matrix-specific `Matrix.exp_units_conj`. #347: `(U⁻¹ : ColorMatrix 2)` can coerce BEFORE inversion; the required typed inverse is `((U⁻¹ : (ColorMatrix 2)ˣ) : ColorMatrix 2)`. The corrected form qualified #348.

**H5E8T proposed, not yet accepted:** A dedicated small Lean module derives scalar `Complex.exp_ofReal_mul_I` values at the two sourceZDiagonal entries, then the exact original positive-i y-gauge curve matrix `[[cos(t * pauliScale),sin(t * pauliScale)],[-sin(t * pauliScale),cos(t * pauliScale)]]`. The strict audit is [#349](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38982041696) at workflow commit `eef13d686d4cbb179cf2e930191e7e1d7770c039`. Do not promote before all seven roots compile with allowlisted axioms.

**Still open:** H5E8T, source Euler factorization for arbitrary actual `GaugeGroup 2`, `actualOriginalColorGeneratedSubgroup = ⊤`, unconditional physical fixed-space/joint maximal Gauss-kernel equivalence, and any BFSS spectral result.

## 2026-10-16: H5E8T accepted; H5E8U ZYZ product gate launched

**H5E8T strict acceptance:** [Original Source Spin Identity #349](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38982041696), source SHA `eef13d686d4cbb179cf2e930191e7e1d7770c039`, successful marker `L6H5E8T_SOURCE_Y_REAL_ROTATION_QUALIFIED`. All seven definitions/theorems have exactly `propext`, `Classical.choice`, and `Quot.sound` as axioms. In the literal positive-i original `ColorMatrix 2`, `↑(sourcePlusIGaugeCurve (1 : Fin 3) t)` equals `[[cos(t*pauliScale),sin(t*pauliScale)],[-sin(t*pauliScale),cos(t*pauliScale)]]`. This now complements the qualified H5E8R exact z-axis diagonal exponential and H5E8S y-conjugation.

**H5E8U source-only new probe and strict run:** [Source](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8UOriginalSourceZYZProductMatrixProbe.lean) at `a1404530efe2a311d613fe65d3be36abc6ea7d06`; [workflow gate](https://github.com/etblink/Foundational-Convergence-Program/commit/84418b1aaa1c80c86cd088e4fa0a23a0fcfe665b); [CI #350](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38983549170). Four strict-audited roots: `sourceZYZMatrix`, `original_source_zyz_matrix`, `original_source_zyz_gauge_product_matrix`, `original_source_zyz_mem_generated`. No first-row existence or group-generation theorem is asserted yet. The exact matrix product's four entries are `e^(i α) cos θ e^(i γ)`, `e^(i α) sin θ e^(-i γ)`, `-e^(-i α) sin θ e^(i γ)`, `e^(-i α) cos θ e^(-i γ)`, with α=`a*pauliScale`, θ=`b*pauliScale`, γ=`c*pauliScale`, preserving all original-source signs and Pauli scale. **Gate not yet qualified at writing.**

**Next independent existence ingredient after H5E8U:** From qualified H5E8Q take `u=(g:ColorMatrix 2) 0 0` and `v=(g:ColorMatrix 2) 0 1`; prove `‖u‖²+‖v‖²=1` from `Complex.normSq` and choose `θ=Real.arcsin ‖v‖`. Pinned `Real.sin_arcsin`, `Real.cos_arcsin` give `sin θ=‖v‖`, `cos θ=‖u‖` including zero entries. Pinned `Complex.norm_mul_exp_arg_mul_I` gives *unconditional* phases `u=‖u‖ exp(i*arg u)`, `v=‖v‖ exp(i*arg v)`. Solve Euler times using the same nonzero source scale (or equivalently `Real.sqrt 2`): `a=(arg u+arg v)/(2*pauliScale)`, `c=(arg u-arg v)/(2*pauliScale)`, `b=θ/pauliScale`. Prove only the first row and use qualified H5E8Q quaternion matrix on both actual SU2 elements to recover the bottom row. This avoids separate lower-entry phase identities, geometric connectedness assumptions, and zero-entry case splitting. The parameter witnesses and existential SU2 factorization remain UNPROVED in Lean.

**Boundary:** A green H5E8U would establish a matrix product identity and subgroup inclusion only, *not* `actualOriginalColorGeneratedSubgroup = ⊤`, unconditional joint Gauss kernel/physical-space equality, or BFSS spectral validation.

## Original Source Spin Identity #350 accepted and zero-safe H5E8V started

**H5E8U strict GREEN**: [Original Source Spin Identity #350](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38983549170) from source/workflow SHA `84418b1aaa1c80c86cd088e4fa0a23a0fcfe665b`, job `117249681735`. The exact marker `L6H5E8U_SOURCE_ZYZ_MATRIX_QUALIFIED` appears. All four roots audited with only `[propext, Classical.choice, Quot.sound]`: `sourceZYZMatrix`, `original_source_zyz_matrix`, `original_source_zyz_gauge_product_matrix`, `original_source_zyz_mem_generated`. The literal original-positive-i source ZYZ curves compose in the genuine `GaugeGroup 2`, the four complex matrix entries match the concrete product, and all such products are in the source-generated subgroup. This DOES NOT prove that all SU2 elements are products.

**H5E8V new strict research target, still UNQUALIFIED**: source-only draft [H5E8V zero-safe first-row polar and arcsin](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8VOriginalSU2ZeroSafeEulerRadiusPolarProbe.lean) at `573dd69d05744b441978ecae79742160f83ecb20`; gate commit `78cfdd6c19702b64c0d02056c9e010fbcbed59d0`. Nine separately printed and audited declarations use accepted H5E8Q `originalSU2_firstRow_normSq_eq_one`, pinned `Complex.normSq_eq_norm_sq`, elementary nonnegative norms, `Real.sin_arcsin` (which requires both bounds), `Real.cos_arcsin`, `Real.sqrt_sq_eq_abs`, and pinned `Complex.norm_mul_exp_arg_mul_I` valid at zero. It targets `cos(arcsin ‖v‖)=‖u‖`, `sin(arcsin ‖v‖)=‖v‖`, and `‖u‖ exp(i arg u)=u`, `‖v‖ exp(i arg v)=v`, for the LITERAL first row of an arbitrary `g : GaugeGroup 2`. Do not claim these are compiled until H5E8V gate is GREEN with all nine allowed-axiom roots.

**Then** define exact real source curve times for `Z(a)Y(b)Z(c)`: take `φ=Complex.arg u`, `ψ=Complex.arg v`, `θ=Real.arcsin ‖v‖`; let `a=(φ+ψ)/(2*pauliScale)`, `c=(φ-ψ)/(2*pauliScale)`, `b=θ/pauliScale`. Need strictly prove `pauliScale ≠ 0` and exponent-addition identities, use source H5E8U product and H5E8Q quaternion matrix to extend first-row equality to whole SU2. Only after this qualified group-generation proof should the H5E8N conditional kernel ↔ physical theorem be discharged.

## 2026-10-16: Strict H5E8V accepted; H5E8W exact source time and phase-product gate

**H5E8V STRICT GREEN at Original Source Spin Identity #351:** [Run #351](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38984987709), job `117254247881`, source SHA `78cfdd6c19702b64c0d02056c9e010fbcbed59d0`; marker `L6H5E8V_SU2_ZERO_SAFE_POLAR_QUALIFIED`. Independently inspected all nine roots; only `[propext, Classical.choice, Quot.sound]`. The original literal SU2 quaternion first row u,v has `‖u‖²+‖v‖²=1`, `‖v‖≤1`, `θ=arcsin ‖v‖`, `sin θ=‖v‖`, `cos θ=‖u‖`; both complex phase reconstructions `‖u‖*exp(i*arg u)=u` and `‖v‖*exp(i*arg v)=v` hold **even if the corresponding entry is zero**. This was established for arbitrary actual `g : GaugeGroup 2`, not a model replacement. All previous H5E8Q/R/S/T/U qualifications remain unchanged.

**H5E8W source-only NEXT, not yet qualified:** [H5E8W original source Euler real times + phase products](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8WOriginalSU2SourceEulerTimePhaseProbe.lean) source commit `0cb682ee24807a320933d4b6e9ff6aca6dab4242`, strict workflow commit `c80b97d3ca048bde6929fca50e497a9f03e34886`. Ten separately audited roots: three real source times, source z-angle sum/difference, source y middle angle, two complex diagonal phase addition, two exponential product phase identities. Use **multiplication** by source pauliScale `s=√2/2`, not division: `a=(arg u+arg v)*s`, `c=(arg u-arg v)*s`, `b=θ*√2`. Already-proved `pauliScale_sq : s²=1/2` and `pauliScale_mul_sqrt : s*√2=1` imply `(a+c)*s=arg u`, `(a-c)*s=arg v`, `b*s=θ` without nonzero divisors. Pinned `Complex.exp_add` then gives exact first-row zero-safe phase products. All source (+i) signs preserved. **No Lean qualification for W until its exact CI output and ten-root axiom audit have been checked.**

**After W, next independent bridge:** first-row entries of H5E8U's sourceZYZMatrix at the W parameters equal the original u,v using H5E8V middle sine/cosine and zero-safe polar; commute scalar complex multiplication only, not source matrix multiplication. Then compare the full genuine SU2 product to `g` via qualified H5E8Q quaternion matrix form and first-row identity; prove `g ∈ actualOriginalColorGeneratedSubgroup` from accepted H5E8U membership, and eventually subgroup = top. Only then discharge the H5E8N conditional original Gauss kernel ↔ physical fixed-space theorem. This still does not prove a BFSS spectral claim.

## Strict H5E8W #354 acceptance; original SU2 first-row H5E8X gate — 2026-10-16

**H5E8W accepted:** [Original Source Spin Identity #354](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38988897196), job `117266612865`, SHA `179d971b67a23db2f8438a756e3db746c5a4ed41`. Marker `L6H5E8W_SU2_SOURCE_EULER_PHASE_QUALIFIED`; all **ten** source Euler-times, z sum/difference, y middle, and complex u/v phase/exponential declarations print *only* `[propext, Classical.choice, Quot.sound]`. Thus the genuine original SU2 quaternion first row u,v admits source Pauli real times `a=(arg u+arg v)*pauliScale`, `b=arcsin‖v‖*sqrt(2)`, `c=(arg u-arg v)*pauliScale`, and both phase exponent identities are correct with +i sign, even when either entry vanishes.

**Negative knowledge from #352 and #353 (fully resolved by #354):** #352 `← sub_mul` does NOT syntactically match `a*I + -(b*I)` in `sourceZDiagonal` second-entry reduction; use a staged real subtraction inside `Complex.ofReal` followed by `push_cast`, `ring`, and the already-qualified source difference. #353 the first staged replacement contained an unmatched extra parenthesis in cast syntax, a **parser error not a mathematical failure**. Commit `179d971b` corrected it without changing a mathematical statement and strict #354 accepted it.

**H5E8X unqualified first-row gate:** [source](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8XOriginalSU2SourceEulerFirstRowProbe.lean) commit `c3a3b6cbbf22870842835aaf88268838fa0edcab`, [strict workflow](https://github.com/etblink/Foundational-Convergence-Program/commit/20c88070bf0dd321d3db8985fe0ead668afcfe8b), [CI #355](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38990857009). Four roots audited with strict allowed-axiom policy: literal sourceZYZMatrix (0,0) equals u, (0,1) equals v; both entries for each j; and group-product first-row equality for literal original positive-i curves. Proof is scalar `ring` plus qualified H5E8V sin/cos/polar, H5E8W phase products, and H5E8U matrix/group product. **No root is promoted until strict #355 confirms `.olean`, the marker, and allowed axioms.**

**After an accepted H5E8X:** Apply qualified H5E8Q quaternion matrix form to the source group ZYZ product and arbitrary original g, both genuine `GaugeGroup 2` elements; their first rows coincide by H5E8X so entire matrices coincide. Use the injectivity of coercion to ColorMatrix 2 (subtype ext) to deduce exact group equality, then H5E8U subgroup membership yields `g ∈ actualOriginalColorGeneratedSubgroup`. Prove subgroup top via `Subgroup.eq_top_iff`. Only then remove H5E8N's generated-density/closure hypothesis to obtain unconditional original Gauss kernel ↔ physical-space fixedness. This still does NOT prove any BFSS spectral statement.

## 2026-10-16: H5E8X first-row strict acceptance; H5E8Y full source Euler gate

**H5E8X accepted:** Original Source Spin Identity [#355](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38990857009), job `117272728103`, commit `20c88070bf0dd321d3db8985fe0ead668afcfe8b`. `L6H5E8X_SU2_SOURCE_EULER_FIRST_ROW_QUALIFIED` emitted. All four roots `original_source_zyz_firstRow_u`, `original_source_zyz_firstRow_v`, `original_source_zyz_firstRow`, `original_source_zyz_gauge_firstRow` checked with ONLY `[propext, Classical.choice, Quot.sound]`. For ANY original `g : GaugeGroup 2`, using explicit zero-safe original Pauli Euler real times from H5E8W, the ACTUAL positive-i color gauge product `Z(a)*Y(b)*Z(c)` has both first-row entries exactly equal to g. This is not yet equality of whole `GaugeGroup 2` elements.

**H5E8Y next proof, NOT YET QUALIFIED:** [New source module](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8YOriginalSU2ExactSourceEulerFactorizationProbe.lean) initial commit `2ce6ff0ec3e2466605828f9edfc33f5a30f0f428`; [strict workflow gate commit](https://github.com/etblink/Foundational-Convergence-Program/commit/9b68f78812a1c27db742cb0b18a3e7a2789852c3); [Original Source Spin Identity #356](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38992065735) queued at initial inspection. Strictly audit three roots: `originalSU2_eq_of_firstRow` (quaternion SU2 form from accepted H5E8Q applied to both original gauge-group elements), `original_source_zyz_exact_euler` (source-generated z/y/z product equals arbitrary `g : GaugeGroup 2`, via H5E8X first row), and `original_source_zyz_exists` (exact existential source Euler factorization with explicit times). Source signs and Pauli scale unchanged. **Neither compile nor theorem-axiom acceptance may be claimed before full CI and strict three-root marker.**

**After Y qualified, separate H5E8Z generated-subgroup equality target:** For arbitrary `g : GaugeGroup 2`, rewrite goal membership by Y `original_source_zyz_exact_euler g` and apply H5E8U `original_source_zyz_mem_generated` with the three explicit times; prove `actualOriginalColorGeneratedSubgroup = ⊤` via `Subgroup.eq_top_iff` or equivalent direct `eq_top_iff'`. Then and only then use H5E8M/N accepted generated-group Gauss-kernel equivalences to discharge the actual original physical fixed-space converse. This goal must not rely on Lie-algebra density or assume SU2 generation. Even complete gauge invariance is NOT a BFSS spectrum or mass-gap result.
