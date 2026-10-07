# Independent verification: Family 270-B

Positive eigenvalues of the relative SU(2) BFSS Hamiltonian
Source inspected: `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/positive-eigenvalues-relative-su2-bfss.pdf` (OpenAI, dated October 5, 2026), retrieved from `https://github.com/openai/math`.
Original source inspected: Banks, Fischler, Shenker, Susskind, hep-th/9610043v3, Section 5 after (5.4).

This package does not modify the OpenAI repository. No prior analysis of Family 270 was used.

## Final disposition

`MATHEMATICALLY_VERIFIED_BUT_FULL_FORMALIZATION_BLOCKED_BY_INFRASTRUCTURE`

`BFSS_1997_CONTRADICTION = PARTIAL_OR_SCOPE_LIMITED_CONTRADICTION`

The strongest justified conclusion is the manuscript theorem for the operator defined in the paper: the nonnegative self-adjoint operator associated with the closed gauge-invariant supercharge form on the relative SU(2) space has infinitely many positive L² eigenvalues tending to infinity. That conclusion is narrower than a claim about every normalization of the BFSS model, about the essential spectrum, or about the large-N Matrix theory conjecture.

---

## A. Source theorem reconstruction

Theorem 1.1, as stated on page 2 of the manuscript:

> There are an orthonormal sequence Ψⱼ ∈ Dom(H) and real numbers Eⱼ > 0 tending to infinity such that HΨⱼ = EⱼΨⱼ. In particular, σ_p(H) ∩ (0, ∞) is infinite.

Assumptions and scope, taken from the definitions that precede the theorem:

- N = 2 only. Color space is the adjoint of SU(2), so the free U(1) center of mass is absent by definition. Configuration space is ℝ²⁷.
- Fermions: an irreducible complex Clifford module F for 48 self-adjoint generators θ_α^a, 1 ≤ α ≤ 16, 1 ≤ a ≤ 3, with {θ_α^a, θ_β^b} = δ_{αβ} δ_{ab}.
- Physical space: the SU(2)-invariant subspace of L²(ℝ²⁷; F), denoted H in the paper.
- Supercharges Q_α on the gauge-invariant compactly supported smooth core C, formula (1.1).
- q(Ψ) = (1/16) Σ_{α=1}^{16} ‖Q_α Ψ‖², closed, and H is the nonnegative self-adjoint operator associated with the closure. This is a form definition, not an essential-self-adjointness claim for an a-priori differential expression.
- Normalization: T_a = σ_a/√2, f_abc = √2 ε_abc, and the stated γ-matrices.
- The theorem does not claim that the essential spectrum is discrete, that 0 is an eigenvalue, that multiplicities are one, or that the result extends to N > 2 or to the large-N limit.

The abstract’s refutation sentence is scoped by the paper itself to this operator at N = 2. The large-N conjecture is explicitly separated (page 2, after the BFSS citation).

## B. Proof audit

Load-bearing chain:

1. Lemma 2.1 rewrites q as ½‖∇Ψ‖² + ∫ V‖Ψ‖² + ∫ ⟨Ψ, B(x)Ψ⟩, with V(x) = Σ_{a<b} |x^a ∧ x^b|² and ‖B(x)‖_{op} ≤ C|x|.
2. Lemma 2.2: Spin(9) preserves the form and each isotypic component H_λ reduces H. The restricted form has core P_λ C.
3. Lemma 3.1: if a Spin(8) type ν occurs in a Spin(9) type λ, then ν₁ ≥ λ₂. Proved from the Weyl character formula, not only cited.
4. Lemma 3.2: a core vector in H_λ, restricted to a transverse slice at fixed longitudinal data, has only K_u types with ν₁ ≥ λ₂.
5. Lemma 3.3: if λ₂ > m + M, oscillator levels 0,…,m are absent on that slice, so ¼|∇_z Φ|² + |u|²|z|² has energy at least (m+9)|u|.
6. Proposition 3.4: averaging the three colors and absorbing B gives a form bound with a positive multiple of |x|. The restricted form domain embeds compactly into H_λ, so H_λ has compact resolvent and trivial kernel.
7. Lemmas 4.1–4.2: F^{SU(2)} is nonzero and Spin(9)-invariant, and gauge-invariant highest-weight polynomials P^k produce infinitely many orthogonal vectors in a sector with λ₂ arbitrarily large.
8. Compact-resolvent spectral theorem on that infinite-dimensional reducing subspace gives the orthonormal eigenbasis of Theorem 1.1.

Step assessment:

| Step | Verdict | Note |
| --- | --- | --- |
| Closability of q and Friedrichs operator | Supported | Symmetry of each Q_α on C, compact gauge group, standard form representation. |
| Lemma 2.1 kinetic/potential coefficients | Supported, calculation sketched | γ-trace identities tr((γ^i)^T γ^j) = 16δ_{ij} and the bivector HS identity were rechecked on a 16-dimensional Cl(9) module. The f_abc = √2 conversion to Σ_{a<b} |x^a ∧ x^b|² was rechecked algebraically. The θ-contraction is the remaining sketched index step; a coefficient error there would rescale the positive kinetic and potential terms together relative to the linear B term, and the later argument only needs some positive kinetic coefficient, some positive multiple of V, and some finite C. |
| Lemma 2.2 reduction | Supported | Schur plus triviality of continuous characters of SU(2). Resolvent commutation is the correct reduction criterion. |
| Lemma 3.1 | Supported | Character-coefficient argument rechecked, including the half-integral lattice and the t₄ = 0 regular case. The inequality is the part of B₄ ↓ D₄ interlacing actually used. |
| Lemma 3.2 | Supported | Finite G-span of one vector, slice restriction intertwines K_u, measure-zero set u = 0. |
| Lemma 3.3 | Supported | Change of variables ξ = √(2r) z gives h_r = (r/2)(−Δ_ξ + |ξ|²), spectrum r(n+8) in 16 dimensions. Level n+1 is the first survivor, hence r(m+9). Weights of two vector copies contribute at most n, fermions at most M. |
| Proposition 3.4 | Supported | Σ_a |x^a| ≥ |x| is ℓ¹ ≥ ℓ² on the three color vectors. Tail plus Rellich on balls in dimension 27 is the standard compact-embedding argument. Kernel vanishing uses |x| > 0 a.e. |
| Lemmas 4.1–4.2 | Supported | Clifford vacuum line is SU(2)-invariant because the only continuous character is trivial. P = (ζ·ζ)(η·η) − (ζ·η)² is gauge invariant, not identically zero, and highest of weight 2(ε₁+ε₂). Disjoint radial cutoffs give infinite dimension. |
| Spectral conclusion | Supported | Nonnegative, compact resolvent, infinite-dimensional, trivial kernel ⇒ orthonormal eigenbasis with 0 < E_j → ∞. Reduction puts these vectors in Dom(H). |

No step was found to be circular, numerical, or dependent on an unproved external theorem of comparable strength. The external inputs are standard: Weyl character formula, Friedrichs representation of a closed semibounded form, Rellich, and the compact-resolvent spectral theorem.

What the proof does not show:

- It does not compute C or M. Existence is enough, because λ₂ can be arbitrarily large.
- It does not prove essential self-adjointness of a Schrödinger expression on a larger core. The operator is the form operator.
- It does not prove σ_ess(H) = [0, ∞). That remains the de Wit–Lüscher–Nicolai statement, cited but not re-proved. If that statement applies to this normalization, the eigenvalues constructed here are embedded.
- It does not produce the zero-energy threshold state, and it shows that some high Spin(9) sectors have trivial kernel.

## C. Formalization

No machine-checked proof of Theorem 1.1 was produced.

Environment: Lean 4 and mathlib were not installed, and a faithful development would need infrastructure that is not a small extension of current mathlib. The specification file `Family270BSpec.lean` only names the target. It is not a build, has no proof, and must not be read as a verification.

Maximal faithful portion that could be formalized without new analysis:

- the abstract implication “nonnegative self-adjoint operator, compact resolvent, infinite-dimensional space, trivial kernel ⇒ orthonormal positive eigenvalues tending to infinity”;
- the elementary comparisons Σ_a |x^a| ≥ |x| and the 16-dimensional oscillator rescaling;
- the Clifford trace identities rechecked in `family270b_identity_checks.py`.

Exact remaining gap:

- mathematical content still outside the checked artifact: construction of the 48-generator module with commuting SU(2) and Spin(9) actions, closure of the supercharge form, Lemma 3.1 as a named branching lemma, slice restriction, oscillator–representation commutation, and the Rellich-plus-tail compact resolvent argument for this form domain;
- library/infrastructure: no pinned mathlib revision contains this operator, and the verification environment had no Lean toolchain;
- semantic: a formal theorem about an abstract compact-resolvent operator would not by itself be the BFSS operator until the correspondence ledger is closed;
- computational: none. The proof is not numerical.

Minimal additional theorem or infrastructure required to close it: a mathlib development of closed semibounded forms and compact resolvent for this class of operators, plus the B₄ ↓ D₄ interlacing inequality and the Spin(8) weight bound on harmonic-oscillator levels. No axiom of strength equal to Theorem 1.1 was introduced.

Identity script result, algebraic only:

- Clifford relations and bivector Hilbert–Schmidt identity: pass, max error 0 in the floating-point check;
- f_abc potential conversion: pass;
- color ℓ¹ ≥ ℓ²: pass.

## D. Semantic correspondence ledger

| Manuscript object | Formal / audited object | Status |
| --- | --- | --- |
| Relative SU(2) configuration space ℝ²⁷ | Traceless matrices, 9 × 3 real coordinates; U(1) center of mass omitted at the outset | EXACT for the paper’s operator; FAITHFUL_WITH_DECLARED_EQUIVALENCE to BFSS H_rel after (5.2)–(5.3), up to the normalization in (1.1) versus (4.6) |
| Fermionic module F | Irreducible module for 48 Hermitian Clifford generators; dim 2²⁴ | EXACT as used; explicit matrix model not constructed in the artifact |
| Bosonic degrees of freedom | Multiplication and derivatives in the 27 coordinates | EXACT |
| Gauge invariance / Gauss law | SU(2) invariants in L²(ℝ²⁷; F), action (G_h Ψ)(x) = V_h Ψ(O_h⁻¹ x) | EXACT for the paper; BFSS also imposes gauge invariance for the superalgebra to close |
| Center-of-mass removal | Absent by use of su(2) rather than u(2) | EXACT relative to the paper; FAITHFUL_WITH_DECLARED_EQUIVALENCE to BFSS separation (5.3) |
| Supercharge Q_α | Formula (1.1) on C | EXACT for the paper |
| Closed supercharge form q | Closure of (1/16) Σ ‖Q_α Ψ‖² | EXACT |
| Self-adjoint Hamiltonian | Friedrichs operator of the closed form | EXACT; not claimed to be the unique self-adjoint extension of a larger minimal operator |
| Operator domain | Form domain of q, then operator domain of the associated operator | EXACT |
| Positive energy | Eigenvalue E > 0 of this operator | EXACT |
| Eigenvalue / point spectrum | HΨ = EΨ with Ψ ≠ 0 in Dom(H) | EXACT |
| Square-integrable eigenvector | Ψ ∈ H ⊂ L²(ℝ²⁷; F), hence normalizable | EXACT |
| Multiplicity | Finite for each eigenvalue of H_λ by compact resolvent; theorem does not claim simplicity | EXACT |
| Infinitely many positive eigenvalues → ∞ | Orthonormal sequence in one reducing sector with E_j → ∞ | EXACT |
| Contradiction with BFSS 1997 | See Section F | NARROWER_THAN_MANUSCRIPT abstract if the abstract is read as refuting the Matrix theory conjecture; EXACT for the scoped sentence on page 2 |

No load-bearing mapping inside Theorem 1.1 is UNRESOLVED. The BFSS-identification mapping is faithful up to positive scaling and the paper’s normalization, and is not needed for Theorem 1.1 itself.

## E. Axiom and dependency audit

There is no `#print axioms` output, because there is no kernel-checked theorem.

Dependency ledger for the mathematical conclusion:

- foundations implicitly used by the manuscript: classical analysis, choice as used in the spectral theorem, Haar measure on compact groups;
- standard results trusted, not re-proved: Weyl character formula, Friedrichs representation, Rellich on bounded balls, spectral theorem for self-adjoint operators with compact resolvent, triviality of Hom(SU(2), U(1));
- manuscript lemmas rechecked at proof-audit level: 2.1 (coefficients partially machine-checked), 2.2, 3.1, 3.2, 3.3, 3.4, 4.1, 4.2;
- custom assumptions: none beyond the definitions;
- circular dependence on the target: none. Sector confinement is proved before the spectral theorem is applied.

Dependency graph:

`Q_α on C` → `closable form q` → `Friedrichs operator H`
`Spin(9) action` → `reduction H_λ`
`Weyl interlacing` + `oscillator weights` → `transverse level gap`
`level gap` + `‖B‖ ≤ C|x|` + `three-color average` → `weighted form bound`
`form bound` + `Rellich` → `compact resolvent and trivial kernel of H_λ`
`Clifford vacuum` + `gauge-invariant polynomial P` → `infinite-dimensional high-λ₂ sector`
`compact resolvent` + `infinite dimension` + `reduction` → `Theorem 1.1`

## F. BFSS-1997 contradiction audit

Location: hep-th/9610043v3, Section 5, “A Conjecture,” immediately after (5.4). Journal version: Phys. Rev. D 55 (1997) 5112, same section.

Exact statement:

> Although a direct proof based on the Schroedinger equation has not yet been given, duality between IIA strings and M-theory requires the relative Schroedinger equation to have normalizable threshold bound states with zero energy [3]. The bound system must have exactly the quantum numbers of the 256 states of the supergraviton. For these states the complete energy is given by (5.4). Furthermore these states are BPS saturated. No other normalizable bound states can occur.

Status in the 1997 paper: not a theorem. The threshold states are explicitly said to lack a Schrödinger proof. The exclusion sentence is an assertion from duality and BPS saturation, used to identify the stable single-particle spectrum of (4.6) with the supergraviton.

What is contradicted: the sentence “No other normalizable bound states can occur,” read as a claim about L² eigenfunctions of the relative Hamiltonian, at N = 2, for the operator defined by the manuscript. An L² eigenfunction at E > 0 is a normalizable positive-energy state of relative motion. Its total energy is not the pure center-of-mass dispersion (5.4).

What is not contradicted:

- existence of a zero-energy threshold state;
- the large-N equivalence conjecture stated at the opening of Section 5;
- any proved theorem of the 1997 paper;
- the de Wit–Lüscher–Nicolai claim that the spectral set is [0, ∞), which is compatible with embedded eigenvalues.

Scope: finite N, specifically N = 2, relative Hamiltonian only. Classification: `PARTIAL_OR_SCOPE_LIMITED_CONTRADICTION`.

## G. Reproducibility record

- Manuscript PDF retrieved 2026-10-07 from the public GitHub path above.
- BFSS PDF retrieved the same day from `https://arxiv.org/pdf/hep-th/9610043.pdf` (v3 text).
- Identity checks: `python3 family270b_identity_checks.py` (NumPy). Result: pass, as recorded in Section C.
- Lean version: not pinned. Lean was not available, and no mathlib revision was checked out.
- No Git commit was created. No external repository was modified or pushed.
- Clean-build result: not applicable. There is no claimed formal build.

## H. Adversarial recheck

Attempts and outcomes:

- Domain / Friedrichs gap: the paper never needs a larger core. Eigenvectors are in Dom(H) by construction. No defect.
- Hidden compactness: compactness is proved from an H¹ bound plus a uniform |x|-tail, not assumed. No defect.
- Spectrum versus point spectrum: Theorem 1.1 claims point spectrum only. The argument gives point spectrum of a reducing part. No defect.
- Generalized eigenfunctions: the eigenvectors are in L², not continuum-normalized. No defect.
- Gauge reduction: invariants are imposed before closing the form; the Spin(9) action is shown to preserve them. No defect found.
- Center-of-mass contamination: no trace coordinates are present. No defect.
- Self-adjointness: form definition is precise; uniqueness of extension is not claimed. Recorded as a scope limit, not a hole in Theorem 1.1.
- Multiplicity: not overclaimed. No defect.
- Finite-N / large-N leakage: the proof uses SU(2)-specific polynomials and three colors. It does not transfer to arbitrary N. The paper says so. No silent leakage.
- Bound state versus embedded eigenvalue: if the essential spectrum is [0, ∞), these are embedded eigenvalues. BFSS’s word is “normalizable bound states.” The contradiction holds only under that reading. Recorded in Section F; not repaired into a stronger claim.
- Coefficient fragility: a wrong positive constant in front of V or the kinetic term would not break the existence argument; a wrong sign would. The sign of V was rechecked through f_abc = √2. No sign error found.
- Interlacing boundary: equality ν₁ = λ₂ is allowed by the proof and is the sharp branching edge. The strict inequality λ₂ > m + M supplies the level gap. No off-by-one found.
- Dominant-weight check for λ = (2k+μ₁, 2k+μ₂, μ₃, μ₄): 2k+μ₂ ≥ μ₃ because μ₂ ≥ μ₃. Holds.

No defect found that required a silent repair. The scope limits above are recorded rather than removed.

## I. Disposition

`MATHEMATICALLY_VERIFIED_BUT_FULL_FORMALIZATION_BLOCKED_BY_INFRASTRUCTURE`

`BFSS_1997_CONTRADICTION = PARTIAL_OR_SCOPE_LIMITED_CONTRADICTION`

Justified belief after this check: for the relative SU(2) operator defined by closing the gauge-invariant supercharge form in the manuscript, there are infinitely many square-integrable eigenvectors with positive eigenvalues tending to infinity. The argument is a symmetry-improved transverse-oscillator confinement proof, and the load-bearing steps check. Full Lean formalization is blocked by missing toolchain and missing library infrastructure, not by a located counterexample. The 1997 exclusion of other normalizable bound states is contradicted only at this N = 2 relative operator, and that exclusion was an assertion rather than a theorem; the large-N conjecture is untouched.