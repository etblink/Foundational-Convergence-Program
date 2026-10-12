# BFSS S3L — original all-spinor global Spin(9) covariance and physical closed-form bridge

**2026-10-12 — New Project Lead successor audit 0.1.0.** Disposition: `SOURCE_EXACT_ORDINARY_MATH_COVARIANCE_PROOF__FINITE_GENERATOR_CHECKS_PASS__CLOSED_FORM_REDUCTION_STANDARD_PROOF__NO_NEW_LEAN_CERTIFICATE__SPECTRAL_THEOREM_NOT_CERTIFIED`.

## Authority and scientific question

Original pinned manuscript: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, especially `eq:supercharges` (approximately lines 111–124), `eq:gamma-covariance`, and `lem:rotations` (lines 325–410). This is an independent reconstruction of the load-bearing source theorem, not acceptance of a generic surrogate, a reviewer's assertion, or a compiler green.

Starting from the **literal original 16 operators** on `C = [C_c^infty(R^27;F)]^{SU(2)}`,

`Q_alpha = -i sum_(i,a,beta) gamma_i[alpha,beta] theta_beta^a partial_(ia) + (1/2) sum_(a,b,c,i,j,beta) f_abc x_i^b x_j^c gamma_ij[alpha,beta] theta_beta^a`,

test whether the genuine combined spatial and 48-Majorana Fock rotation `D_g Psi(x)=U_g Psi(R_g^{-1}x)` obeys **all-spinor** covariance `D_g Q_alpha D_g^{-1} = sum_eta (S_g^{-1})[alpha,eta] Q_eta`. In particular, a false transpose or missed sign in the cubic source term would invalidate form invariance. We did not permit an axiom replacing cubic covariance.

## 1. Genuine global gauge/spatial Fock action: source-level group-lift construction

The manuscript fixes real symmetric gamma matrices `gamma_i`, `{gamma_i,gamma_j}=2 delta_ij`, and normalized Majoranas `Gamma_beta^a=sqrt(2)theta_beta^a` satisfying `{Gamma_A,Gamma_B}=2delta_AB`. For `g in Spin(9)` let its real 9-vector and 16-spinor matrices be `R_g in SO(9)` and `S_g in SO(16)`, with `S_g gamma(v) S_g^{-1}=gamma(R_g v)`. Gauge `h in SU(2)` acts on the color labels as `O_h in SO(3)`.

A **single** continuous homomorphism

`rho: Spin(9) x SU(2) -> SO(48),  rho(g,h)=O_h tensor S_g`

is well-defined, because the label actions commute and both determinant factors are +1. Both source groups are simply connected; their product is simply connected. The covering `Spin(48)->SO(48)` therefore has a **unique continuous identity-preserving lift**, which is a group homomorphism (multiplicativity follows from uniqueness of continuous lifts). Restrict this *one* lift to the two commuting factors. Their images commute identically in `Spin(48)`, with **no projective sign ambiguity**. Acting via the even Clifford representation on the original irreducible complex Fock module F gives genuine continuous unitary homomorphisms `U_g` and `V_h`, commuting, and implementing the specified linear orthogonal transformations of the **actual 48 theta labels**. This is the source construction, not a generic 16-spinor Hilbert space.

As the bosonic color action and spatial action also commute, `D_g` preserves the exact gauge-fixed smooth compact core C. The possible nontrivial action of the central `-1 in Spin(9)` is respected, rather than identifying Spin(9) with SO(9). This construction relies on standard spin-cover and Clifford-module facts (not newly checked in Lean).

## 2. Direct all-sixteen source Q covariance: derive the two nontrivial indexed identities

Write `S=S_g`, `R=R_g`. The source gamma covariance, with `S^T=S^{-1}` and `R^T=R^{-1}`, entails

`sum_i R_{p i} gamma_i = S^{-1} gamma_p S`,

`sum_(i,j) R_{p i} R_{q j} gamma_ij = S^{-1} gamma_pq S`.

Multiplying on the right by `S^T=S^{-1}` yields the exact two source-coefficient identities, **for every** spinor component alpha, delta:

`sum_(i,beta) R_{p i} gamma_i[alpha,beta] S_{delta,beta} = (S^{-1}gamma_p)[alpha,delta]`;

`sum_(i,j,beta) R_{p i}R_{q j} gamma_ij[alpha,beta] S_{delta,beta} = (S^{-1}gamma_pq)[alpha,delta]`.

The second follows from `gamma_ij=[gamma_i,gamma_j]/2`, not from an independent assumed cubic lemma. On smooth functions the *combined* action gives

`D_g x_i^a D_g^{-1} = sum_p R_{p i} x_p^a`, `D_g partial_(ia) D_g^{-1} = sum_p R_{p i} partial_(pa)`, and

`D_g theta_beta^a D_g^{-1} = sum_delta S_{delta,beta} theta_delta^a`.

Note especially that it is **S with indices delta,beta** in the Majorana transformation, so its column transformation is `S^T=S^{-1}`. Substituting these three transformations into the original kinetic and **all original cubic** terms, with all color/spatial/spinor summations kept literal, gives

`D_g Q_alpha D_g^{-1} = sum_eta (S^{-1})[alpha,eta] Q_eta`

on the **full** `C_c^infty(R^27;F)`, and hence on its gauge fixed subspace C. The color epsilon `f_abc=sqrt(2)epsilon_abc` is untouched by spatial rotation. Under gauge SU(2), its SO(3)-invariance and orthogonality make each original Q_alpha individually gauge-invariant. Thus all 16 Q_alpha map C to C. No derivative of R or S appears because g is constant in x.

**This is an ordinary mathematical proof conditional only on the explicitly source-fixed Clifford CAR and standard spin representation/lift facts**, not a premise that the R4D Lean sum gate magically succeeded. It independently fills the analytical source-covariance argument previously left as an unverified bridge in the predecessor audit. It does not produce an accepted Lean theorem about that giant concrete expression.

## 3. Adversarial exact arithmetic, source gamma words; no angle sampling

Companion reproducible `BFSS_ALL_SPINOR_LIE_AND_QUARTER_TURN_CHECK_0_1_0.py` reconstructs the exact real symmetric 16x16 nine-gamma source-register words and first rechecks their Clifford relations. For **all 36** spatial planes (r,s), set the exact integer spatial Lie generator `J_rs` with `(J_rs)_{rs}=-1`, `(J_rs)_{sr}=+1`, and `T=gamma_r gamma_s` so the infinitesimal spinor generator is `K=-T/2`.

It checks, **entrywise with exact integers**, the kinetic and original bivector source identities

`2 sum_i J_{p i} gamma_i = [T,gamma_p]`, and

`2 sum_i (J_{p i}gamma_iq + J_{q i}gamma_pi) = [T,gamma_pq]`.

Counts: **324 kinetic** and **2,916 cubic** complete matrix equalities, each at 16x16 entries, not numerical tolerance checks. These differential equations are exactly those of the original all-spinor coefficient response, and plane generators span the rotation Lie algebra.

It also checks an **exact finite rotation** at angle pi/2 in all 36 planes. Here `R` is an integer quarter-turn matrix, `S=(I-T)/sqrt(2)`, `S^T=(I+T)/sqrt(2)`; clearing the common sqrt(2) denominator leaves the exact integer equations `[sum_i R_pi gamma_i](I+T)=(I+T)gamma_p` and `[sum_ij R_pi R_qj gamma_ij](I+T)=(I+T)gamma_pq`. Counts: **324 kinetic**, **2,916 cubic** identities, again with zero exact discrepancy.

For original color `epsilon_abc`, three independent orthogonal color quarter-turn matrices yield **81 exact identities** of `epsilon` covariance (3 rotations x 27 output triples). This is an additional gauge-index test, not a replacement for the global SU(2) action.

**Falsification outcome:** no sign, inverse, transpose, spatial-index, or original bivector normalization discrepancy found in these source-faithful tests. They are finite source-representation evidence supporting the general abstract proof, not tests of arbitrary smooth-state operator domains or a 2^24-dimensional Fock matrix.

## 4. From the exact smooth core to the genuine closed Hamiltonian: detailed proof obligations

On the original gauge-invariant `C`, each source Q_alpha is symmetric: the constant kinetic matrix coefficients are Hermitian as combinations of real gamma and self-adjoint theta, and integration by parts makes `-i partial` symmetric; the source cubic multiplication coefficients are real linear combinations of Hermitian theta. All are gauge-equivariant. Gauge averaging makes C dense in the physical L2 space.

Define the simultaneous graph map `Q:C->Hphys^16`, `Psi |->(Q_1 Psi,...,Q_16 Psi)`. Symmetry of each component implies closability: if `Psi_n->0` and `Q Psi_n->eta`, then for every `phi in C`, `<eta_alpha,phi>=lim <Psi_n,Q_alpha phi>=0`; density gives `eta_alpha=0`. Thus the form `q[Psi]=||Q Psi||^2/16` is closable and its closure uses the graph closure. The originally specified self-adjoint H is the nonnegative operator associated with this closed quadratic form. Do **not** silently identify H with some other self-adjoint BFSS extension.

The exact all-spinor covariance above and orthogonality of S give `q[D_g Psi]=q[Psi]` on C. Because `D_g C=C` and D_g is a unitary L2 operator, it is a form-norm isometry, and extends to the closed form domain. Continuity on compactly supported smooth vectors plus source covariance implies continuity in form norm on C, then by density on the full completed domain.

For each irreducible Spin(9) type lambda, Peter-Weyl character integration `P_lambda=dim(V_lambda) int_G overline{chi_lambda(g)} D_g dg` is bounded in the form norm. The compact group orbit of a smooth compactly supported vector has uniformly bounded support and jointly smooth integrand, so `P_lambda C subset C`. Applying P_lambda to a core approximation of a vector in `Dom(q) cap Hphys_lambda` gives a **true restricted form core** `P_lambda C`.

Finally, closed-form variational uniqueness yields `D_g(H+1)^{-1}=(H+1)^{-1}D_g`; integrating over G yields resolvent commutation with P_lambda. Consequently H reduces to these isotypes, and its restricted operator is the part of the **original form-defined H**. In this ordinary-analytic argument, no extra operator-domain hypothesis is introduced beyond the original source setup. This is a proof in conventional analysis, **not** a Lean certificate of the form domain.

## 5. Scientific significance, open risks, and Project Lead decision

**Strengthened conclusion:** the actual all-16 source covariance and its genuine 48-label gauge-compatible global implementation are now reconstructible by a short direct proof from original data. The abstract-to-source physical bridge for `lem:rotations` is no longer merely a candidate identity at the ordinary-mathematical level; we have tested its defining coefficients, exhibited the group lift, and written its closed-form implication in order. The proof does *not* depend on making the R4B/R4D Lean elaborator accept a giant inlined finite sum. We explicitly refrain from upgrading any named Lean theorem or its axiom status.

**Remaining uncertainty about the headline theorem:** this audit does not independently certify every step of `lem:branching`, smooth finite orbit slice, oscillator spectral exclusion, `prop:confinement` on its complete domain, the nonzero highest-weight physical-sector construction, or the interpretation of the resulting eigenvectors relative to alternative Hamiltonian realizations. Prior source and finite tests support many of these, but independent comprehensive end-to-end verification and a formal proof remain separate tasks. We have found **no counterexample** to the original manuscript at this junction.

**Next highest-information scientific test:** Try to falsify the *confinement passage* at its actual closed restricted form domain, especially the one-color fiber inequality integrated over varying u and the use of fixed-isotype core density. A nontrivial domain mismatch would change the theorem; another rote Lean cubic proof would not. Do not resume R4B/R4D unless a genuinely new, kernel-efficient faithful interface is justified. Preserve accepted source modules/caches and historical compiler negative knowledge.

**Permissions:** Commit only to `research/openai-math-su2-s3l-combined-rotation`. Do not modify FCP main, etblink/math, openai/math, PR #25 base or merge status. No long-running CI launched.
