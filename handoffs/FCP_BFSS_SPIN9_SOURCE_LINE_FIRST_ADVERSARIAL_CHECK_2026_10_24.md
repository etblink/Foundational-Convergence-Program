# FCP BFSS — First independent source-line adversarial check of Spin(9) spectral mechanism

**Dated:** 2026-10-24 (Pacific); **classification:** independent mathematical sanity check and open-problem isolation, **NOT** a Lean acceptance, full adversarial proof, or positive-eigenvalue verification. **Source:** exact original manuscript `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Line numbers below refer to that immutable TeX blob.

This note implements the first portion of the [spectral adversarial mandate](./FCP_BFSS_SPIN9_SPECTRAL_ADVERSARIAL_RESEARCH_MANDATE_2026_10_24.md). It does **not** independently certify the original manuscript or infer source-defined operator equality from a plausible finite-dimensional calculation.

## Source-derived claims that were checked algebraically

**B4→D4 interlacing, source lines 439–517.** B4 dominant `λ` is restricted to D4 `ν`. The manuscript claims `ν₁ ≥ λ₂`. With `L_j = λ_j + 4 − j` and `t_i = ν_i + ρ^D_i`, `ρ^D = (3,2,1,0)`, the coefficient matrix of the proposed Weyl character determinant has entries `1[|t_i| ≤ L_j]`. If a constituent has nonzero multiplicity, the determinant is nonzero. Since `L_j` and the absolute `t_i` are strictly ordered, the initial-one row lengths must be 1,2,3,4. Thus `t₁ > L₂`, i.e. `ν₁+3 > λ₂+2`, or `ν₁ > λ₂−1`. Matching integer/half-integer lattices implies `ν₁ ≥ λ₂`. This finite combinatorial *implication* is sound **conditional on** the source's character-coefficient identification; that identification and half-integral coverage still need a self-contained independent representation-theoretic audit or kernel formalization.

**Oscillator normalization, lines 569–613.** The two transverse 8-dimensional vectors give 16 real transverse coordinates. For `r=|u|>0`,
`h_r=−(1/4)Δ_z+r²|z|²`. Writing `ξ=√(2r)z` yields `(r/2)(−Δ_ξ+|ξ|²)`. The 16-dimensional oscillator has eigenvalues `2n+16`, so the source's `r(n+8)` is arithmetically correct. Every degree-≤n vector polynomial has first K weight coordinate ≤n, and tensoring with finite-dimensional fermionic F with first-weight ceiling M gives ≤n+M. If all fiber K constituents require `ν₁≥λ₂>m+M`, levels `n≤m` cannot occur. Their least surviving oscillator energy is at least `r(m+9)`. This reasoning is conditional on the actual K-equivariant fiber restriction, polynomial weight convention, and bound on **every** F weight; it is not an established global operator inequality.

**Three-color averaging, lines 615–656.** If each color gives `(1/4)||∇Ψ||²+∫V|Ψ|² ≥ (m+9)∫|x^a||Ψ|²`, averaging over 3 colors yields coefficient `(m+9)/3`. Together with the form decomposition `q = (1/2)||∇||² + V + ⟨B⟩` (source lines 236–255), `||B(x)||≤C|x|`, and `Σ_a|x^a|≥|x|`, one obtains the proposed `(1/4)||∇Ψ||² + ((m+9)/3−C)∫|x||Ψ|²` for the core. No algebraic mismatch was found in this coefficient propagation. Extending to the exact *closed form domain* remains a separate analytic obligation.

**Nonzero physical-sector polynomial, lines 738–803.** The displayed complex color polynomial
`P=(ζ·ζ)(η·η)−(ζ·η)² = Σ_{a<b}(ζ_a η_b − ζ_b η_a)²`
is invariant under SO(3) color rotations because complex bilinear color dot products are preserved. On the source's explicit ray `x=t(e₁,e₃,0)`, `P=t⁴≠0`, so a nonzero radial cutoff can give a nonzero gauge-invariant vector. Highest-weight and G-type claims also require the specified conventions and the existence of the gauge-invariant F vector; no counterexample was established in this initial algebraic check.

## Highest-risk still-open checks (DO NOT mark passed)

1. **Actual physical global G action and lift** (lines 327–410): the continuous Spin(9) lift of 3 copies of the real spinor to Spin(48), compatibility with the original source gauge action, source exact supercharge covariance, strong continuity in the closed form norm. Smooth infinitesimal identities are insufficient.
2. **Projectors on the real form core** (lines 390–410): source uses character-integral isotypic projector `P_λ` and asserts it preserves `C_c^∞`; check all gauge-physical and domain details and resolve the form representation associated with H.
3. **Fiber restriction at fixed parameters** (lines 524–558): requires finite G-translate span for each isotypic vector and continuity to replace L² equalities by pointwise identities. Audit the exact fixed-slice map, its K equivariance, and the fermionic K weights.
4. **Uniformity and global passage** (lines 615–685): verify source wedge-potential inequality, u-dependent orthogonal frames / Fubini, original q form (not a formal surrogate), weak-gradient closability, weighted multiplication, Rellich compactness and reducing subspace. No global coercivity or full-H mass gap is claimed.
5. **Sector existence with actual gauge lift** (lines 696–803): verify that the CAR annihilation-line construction gives a *trivial* continuous SU(2) character for the *actual source gauge lift*, and that P^k v is a nonzero highest G vector in the physical smooth core for each k.
6. **Integration boundary:** even a complete manuscript-side proof must be transported to the independently defined physical Hamiltonian only after native Hilbert operator/domain equivalence and equality of the normalized self-adjoint H=(1/16)T†T have strict qualifications.

## Discriminating next investigation

First independently reconstruct the exact **global source Spin(9) action** and its commutation with the SU(2) lift, then the characterization of the source physical form core under isotypic projection. In parallel, formalize only the combinatorial **character coefficient ⇒ ν₁≥λ₂** and the 16-dimensional oscillator normalization as genuinely separate source-faithful lemmas. Their value is that they expose index/lattice mistakes early and do not require compilation of the entire physical BFSS operator tree.

**Outcome:** conditional local arithmetic and combinatorial implications survived the first check; **no counterexample found and no full spectral verification performed**. This is evidence about priorities, not an assertion that the article's final positive-eigenvalue theorem is true.

**Method:** cite exact source lines, record assumptions, independently derive finite implications and attempt refutations. Preserve negative results, green and red alike, with full proof and physical scopes. Do not alter `etblink/math` or canonical FCP `main`.