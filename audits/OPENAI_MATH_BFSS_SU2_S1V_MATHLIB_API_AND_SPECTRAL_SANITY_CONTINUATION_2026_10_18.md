# October 18 Project Lead continuation — S1V proof API preflight and adversarial spectral sanity

**Status:** RESEARCH_PRELIMINARY__S1V_UNCOMPILED__NUMERICAL_FALSIFICATION_CHECKS_PASS__NO_CI_TRIGGER.  
**Branch:** research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018.  
**Parent source acceptance:** active research HEAD e840d811b0ac06b00539ad7f9a168af655fe99ff, strict S1U run 39173544366.  
**Pinned inputs:** etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

## S1V exact Mathlib source check, not compiler acceptance

Inspected Mathlib/LinearAlgebra/QuadraticForm/Basic.lean at the exact pinned Mathlib SHA, including lines 850–930 and 1000–1061:

- QuadraticMap.associated is an abbreviation for associatedHom R.
- QuadraticMap.associated_eq_self_apply proves the associated bilinear form B satisfies B(a,a)=Q(a).
- QuadraticMap.associated_isOrtho proves B(a,b)=0 ↔ Q.IsOrtho a b, over the real scalar ring.
- For Q = source48Quadratic with Q(v)=Σ_i v_i², classical polarization gives B(a,v)=Σ_i a_i v_i; this final explicit source-coordinate identity is NOT a new Lean-qualified declaration.
- The S1V candidate uses the original source Q and these pinned APIs, and composes the accepted S1U theorem with the decomposition v=(B a v)•a+(B b v)•b+c, where c=v-(B a v)•a-(B b v)•b. The exact all-vector spin conjugation theorem remains candidate-only.

This checks that the source APIs exist; it does NOT certify that the current tactic scripts elaborate. We had no local Lean/lake/elan installation, and direct local GitHub networking was unavailable. To avoid unwanted CI, no GitHub Actions workflow was created or dispatched. In particular, do not promote the S1V four #print axioms roots to accepted before a source-pinned strict build of the exact candidate. Check the first Lean error if any, especially associated lemma inference and linear-map simp normalization. Preserve source signs and no new lift assumptions.

## Deterministic numerical falsification harness

Committed tools/bfss_s1v_manuscript_geometric_sanity_2026_10_18.py, using only Python standard library, a fixed random seed 20261018, 128 samples and a separate explicit nonzero polynomial ray. Executed the exact source in the model's local Python runtime (not GitHub Actions). Every assertion passed:

1. Actual 48-real Euclidean plane decomposition, orthogonality of remainder, plane-flip norm preservation and involution.
2. Invariance of the manuscript quartic potential V=Σ_{a<b} |x^a∧x^b|² under a nontrivial real SO(3) color rotation.
3. The complex color-bilinear polynomial identity P=(ζ·ζ)(η·η)−(ζ·η)² and its SO(3) gauge invariance.
4. The slice inequality V(x(u,s,z)) ≥ |u|²(|z_1|²+|z_2|²).
5. The manuscript's specific ray x=t(e₁,e₃,0), for which P=t⁴≠0 at t=1.7.

**Scope:** approximate floating-point checks and ordinary algebraic consistency only. They are not formal proofs, do not test analytic domain closure, and do not validate the claimed Hamiltonian spectrum. Numerical agreement cannot close a Clifford representation or SU(2) sign-normalization obligation.

## Independent spectral argument — explicit nontrivial checks and remaining proof boundary

Read the independently pinned manuscript Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex, principally the operator definition, form expansion, Spin9 covariance/isotypic decomposition, Spin9→Spin8 branching, transverse oscillator, confinement, and high-weight sector construction.

- The oscillator rescaling in manuscript lines ~575–590 is consistent: on sixteen transverse dimensions, −(1/4)Δ_z+r²|z|² = (r/2)(−Δ_ξ+|ξ|²), so level n has energy r(n+8). Eliminating n≤m yields the lower bound (m+9)r. This checks a necessary numerical factor, not the claimed representation-theoretic exclusion.
- The subsequent averaging of the three color-specific bounds, with kinetic-energy splitting into quarters, is consistent with the displayed confinement coefficient c_m=(m+9)/3−C, provided the source-exact normalized charge form equality is valid.
- The Spin9→Spin8 necessary interlacing inequality ν₁≥λ₂ matches the standard branching shape and the manuscript's determinant argument; the complete half-integer Weyl formula, proof details, and applicability to the precise representation still require independent review.
- The polynomial P's color invariance, nonzero test ray, and associated weight-raising construction are plausible and agree with the numerical checks. The highest-weight property, isotypic embedding, and infinite multiplicity are NOT independently established by those numerical checks.
- The form equality q=(1/2)||∇||²+V+B and the fermionic cross-term sign (manuscript lines ~236–318), the actual Spin9 lift/covariance and isotypic core projections (~327–410), and the analytic compactness argument (~620–704) remain load-bearing verification obligations. H5E8BH qualifies a source-native Hamiltonian identity but NOT equality with this independent abstract manuscript module.

**Important conclusion boundary:** The manuscript asserts infinitely many positive point eigenvalues in a suitable physical rotation sector, not a strictly positive spectral gap for the full relative Hamiltonian. No counterexample was found in this bounded first-pass audit, but no proof of the manuscript's claimed point spectrum has been independently certified.

## Next controlled operation

1. Do not touch main, original etblink/math pins, or draft PR #25.
2. To qualify S1V, use exactly one consciously chosen strict gate only after verifying the cache scope and zero unintended PR-wide workflows. A new PR targeting S3K is not acceptable: it risks dozens of unrelated rechecks. A new isolated PR may lack the exact existing PR25 cache. Never mistake cache-miss failure for a mathematical red.
3. If no cost-safe qualified route exists, hold S1V as UNCOMPILED; continue source-accurate paper falsification and proof API review without a fabricated green.
4. Following S1V qualification, use the all-vector plane reflection to compare the exact source Pauli half-turn under S1L's color-first 16-spin labels. Each of sixteen mutually orthogonal color two-planes is expected to contribute a half-turn rotor; the central-sign product and group law must be proved, not assumed.
