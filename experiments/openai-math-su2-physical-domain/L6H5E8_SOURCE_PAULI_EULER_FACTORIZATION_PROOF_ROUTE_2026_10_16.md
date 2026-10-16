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
