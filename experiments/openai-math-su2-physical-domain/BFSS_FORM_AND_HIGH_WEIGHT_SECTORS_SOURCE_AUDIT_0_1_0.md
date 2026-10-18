# BFSS S3L — exact source-form and high-weight polynomial adversarial audit 0.1.0

**2026-10-12 | Research only | Outcome: FINITE_EXACT_CHECKS_PASS; SPECTRAL_CLAIM_OPEN.** This is not an accepted Lean theorem, general Hamiltonian certification, or approval to merge PR #25.

## Primary source and falsifiable questions

Pinned source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Exact targets: `lem:form` (lines 236–325), `lem:fermion-invariant`, `lem:large-sectors` (approximately lines 696–803), and their use by `prop:confinement` (615–685). Read the current `BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md` and `handoffs/FCP_BFSS_S3L_SPECTRAL_PROJECT_LEAD_CHAT_CONTEXT_SUCCESSION_2026_10_12.md` for prior unresolved boundaries and negative knowledge.

Tests sought a sign/normalization error in the literal original supercharge form; a zero or non-gauge-invariant high-weight polynomial; and a hidden change of sector when multiplying by arbitrarily many radial bumps. A counterexample to any would materially weaken the proposed positive-energy spectral argument.

## A. Original quadratic form: algebraic derivation and exact coefficient experiment

The source uses `{theta_beta^a,theta_delta^c}=delta_beta_delta delta_ac`, real symmetric `16×16` `gamma_i` satisfying `{gamma_i,gamma_j}=2 delta_ij`, `gamma_jk=[gamma_j,gamma_k]/2`, and `f_abc=sqrt(2) epsilon_abc`. Let `A_alpha=-i gamma_i[alpha,beta] theta_beta^a partial_ia`; `W_alpha=sum_(j<k,c) y_jk^c gamma_jk[alpha,delta] theta_delta^c`; `y_jk^c=f_cbd x_j^b x_k^d`.

1. **Kinetic and quartic structure:** Anticommuting theta and symmetric second derivatives give `(1/16)sum A_alpha^2=-(1/2)Delta`, using `tr(gamma_i^T gamma_j)=16 delta_ij`. As each `W_alpha` is a real linear combination of the theta generators, its square is scalar; the bivector Gram trace gives `(1/16)sum W_alpha^2=(1/2)sum_(c,j<k)(y_jk^c)^2`. The epsilon contraction `sum_c epsilon_cab epsilon_cde=delta_ad delta_be-delta_ae delta_bd` identifies this last expression with `V(x)=sum_(a<b)|x^a wedge x^b|^2`. These are source-CAR/Clifford mathematical identities on smooth functions, **not** a claim about the closed form domain.
2. **Potentially decisive cross coefficient:** The first-order differential coefficient vanishes by `tr(gamma_i^T gamma_jk)=0`. The multiplication contribution before reordering theta is `-(i/16) sum (partial_ia y_jk^c)(gamma_i gamma_jk)_(beta,delta) theta_beta^a theta_delta^c`. For `x_p^b=1` with all other coordinates zero, dividing by `i sqrt(2)` and multiplying by sixteen gives the coefficient identity
   `-sum_(j<k)[epsilon_cab delta_(k,p) gamma_j gamma_jk + epsilon_cba delta_(j,p) gamma_k gamma_jk]=8 epsilon_bac gamma_p`.
   It matches the literal ordered-word coefficient in `B=(i/2) f_bac x_p^b gamma_p[beta,delta] theta_beta^a theta_delta^c`. No commutativity or reordering of distinct physical theta generators is assumed.
3. **Reproduction:** The companion Python test verifies all exact integer Clifford, kinetic trace, bivector trace, and first-order trace relations. It compares the last identity over **all 27 x-coordinate basis directions, 9 ordered color-index pairs, and 256 spinor entries**: **62,208 integer coefficient comparisons, no mismatches**. Linearity in x makes these checks exhaustive for the given exact gamma realization, unlike random samples. The gamma-word realization itself is already registered in FCP's October 7 gamma audit; its use here is not independent construction of a new Clifford representation. No full CAR Fock-matrix or closed-domain operator is constructed in this script.

**A finding:** No sign/half-factor counterexample. The pinned source's `1/2` kinetic, bosonic wedge `V`, and `+i/2` fermionic `B` coefficients agree with this independently implemented coefficient computation. A separate source-faithful proof still must transport the finite algebra to the full physical form and global symmetry reduction.

## B. Infinite high-weight sectors: gauge invariant polynomial

Set `zeta_a=(e1+i e2)·x^a`, `eta_a=(e3+i e4)·x^a`, `m_ab=zeta_a eta_b-zeta_b eta_a`, `P=sum_(a<b)m_ab^2`. The color scalar products are **complex bilinear**, not Hermitian. Expanding gives the exact Gram identity `P=(zeta·zeta)(eta·eta)-(zeta·eta)^2`.

A new symbolic check applies all three infinitesimal simultaneous color rotations `D_ab=zeta_a partial_(zeta_b)-zeta_b partial_(zeta_a)+eta_a partial_(eta_b)-eta_b partial_(eta_a)` and proves `D_ab P=0` as polynomial identities. Since the color image `SO(3)` of `SU(2)` is connected, this yields full gauge invariance. Evaluating at the paper's `x=t(e1,e3,0)` yields `P=t^4`, `|x|=sqrt(2)t`. Thus P is not identically zero on any positive-radius shell. These results are exact, not probabilistic.

**Highest-weight argument (ordinary representation mathematics, not Lean certified here):** In the paper's consistently chosen torus and positive-root convention, `w1=e1+i e2` and `w2=e3+i e4` make `w1 wedge w2` highest of weight `epsilon1+epsilon2`. The only potentially nonzero raising action on this wedge sends `w2` to a multiple of `w1` and hence vanishes after antisymmetrization. Its minors are highest, so their degree-two sum `P` is highest of weight `2(epsilon1+epsilon2)`; products `P^k` are highest of weight `2k(epsilon1+epsilon2)`. The sign of the numerical Cartan generator depends on the selected torus orientation; it must be consistent when adding the fermionic weight `mu`, but no conflicting physical sign has been identified.

Conditioned on the actual commuting `SU(2)` and `Spin(9)` lifts, the original CAR vacuum-line argument supplies `F^SU(2)!=0`. Choose a nonzero highest vector `v` of a `Spin(9)` type `mu` therein. For fixed k, `P^k v` is a nonzero highest vector of `lambda=mu+2k(epsilon1+epsilon2)`. Its entire orbit lies in the finite degree-4k polynomial space tensored with F; every irreducible component of that highest vector has the **same** type lambda. Radial multiplication is rotation-equivariant. Disjoint nonzero radial bumps `chi_j(|x|)P^k v` are linearly independent in the same physical `lambda` sector. Finally `lambda_2=mu_2+2k` grows without bound. This verifies the logical role of the polynomial conditional on the original Fock/group construction; it is not a new machine-check of that construction.

**B finding:** No evidence of a zero polynomial, failure of color gauge invariance, or unintended mixing of different rotation types by the radial bumps.

## C. Scientific boundary and next choice

Neither A nor B proves the spectral theorem. Remaining load-bearing steps include genuine combined global `Spin(9)` action on the original 48-Majorana `F` commuting with gauge `SU(2)`, covariance of **all sixteen literal Q_alpha** on the exact gauge smooth core (including the unresolved cubic assembly), passage to the closed form and isotypic projections, the general `Spin(9) downarrow Spin(8)` weight bound, and the oscillator confinement estimate at the closed restricted domain. Existing audits separately support portions of these steps. A full end-to-end verification has not been performed.

**Project Lead choice:** Preserve the accepted source algebra and these new exact diagnostics; stop treating the stalled 65-second/R4D assembly as the next mandatory gate. The highest-value next adversarial task is to test the *actual source combined Spin(9)/gauge action and covariance-to-closed-form bridge* for a missing hypothesis or contradiction. An abstract conditional operator lemma does not close this gap unless its hypotheses are discharged for the original source. Do not initiate new monolithic Lean CI or increase recursion limits without a genuinely discriminating compression technique.

No merge, PR state change, edit to FCP `main`, or edit to `etblink/math` / `openai/math` is authorized or undertaken.
