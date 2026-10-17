> **Simplified, independently checked proof dependency (2026-10-12):** A NEW complete quadratic-polarization certificate for the original gamma Fierz identity verifies 313,344 exact matrix entries (all 16 spinor basis vectors plus their 120 pairwise sums). It yields the entire original full-core identity Q(w)^2=|w|² H0 + sum_(c,p)(w^T gamma_p w)x_p^c G_c for arbitrary real w DIRECTLY, so the physical Clifford-256 superalgebra no longer depends on the separate global Spin(9) transitivity/covariance theorem. Source orbital and fermionic Gauss coefficients were also checked against the original CAR formula. See BFSS_FULL_SPINOR_GAUSS_SQUARE_AND_MINIMAL_CLOSED_FORM_BRIDGE_AUDIT_0_1_0.md. The original derivation below remains as an alternate route; do not copy its transitivity step as a necessary dependency.

# BFSS SU(2): diagonal original supercharge square, exact Gauss-law defect, and positive-energy supersymmetry multiplicity

**2026-10-12 — Project Lead original-source mathematics 0.1.0.** Outcome: `DIAGONAL_SOURCE_SUSY_GAUSS_IDENTITY_DERIVED__FINITE_EXACT_16SPINOR_CERTIFICATE_PASS__DOMAIN_BRIDGE_ORDINARY_MATHEMATICS__POSITIVE_E_MULTIPLICITY_256_THEOREM_CONDITIONAL_ON_GLOBAL_SOURCE_ACTION__NOT_LEAN_CERTIFIED`.

## Scientific purpose and authority

The owner authorized return to mathematical discovery rather than indefinite review management. We targeted the **original 16 supercharges and actual SU(2) Gauss-law action** instead of a surrogate generic algebra. The new scientific consequence is that every positive-energy eigenspace of the original physical Hamiltonian is a module for complex Cl(16), implying multiplicity at least 256 and, if finite, divisible by 256.

Pinned original source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Read `eq:supercharges` (approximately lines 111–123), `lem:form` (236–324), and `lem:rotations` (325–410). Prior branch mathematical arguments: `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`, `BFSS_ORIGINAL_SU2_ESSENTIAL_SELF_ADJOINTNESS_AND_PHYSICAL_OPERATOR_CORE_0_1_0.md`, `BFSS_SINGLE_SOURCE_PREMISE_TO_SPECTRUM_ADVERSARIAL_CROSSWALK_0_1_0.md`. The literature's BFSS superalgebra includes a gauge-constraint term before physical projection (de Wit, Hoppe, Nicolai, *Nuclear Physics B* **305** (1988), 545–581, §4). We **independently check the present paper's normalization** below instead of borrowing a potentially different convention.

## 1. Gauge generator built from the literal original Fock action

Original: 48 Hermitian `theta^a_beta` obey `{theta^a_beta,theta^b_delta}=delta_ab delta_beta_delta`; `f_abc=sqrt(2) epsilon_abc`. Original SU2 acts by `h=exp(i t T_c)`, with `T_a=sigma_a/sqrt(2)`. Its infinitesimal action on color labels is the matrix `(M_c)_{ab}=f_{cab}`, i.e. `O_h=I+tM_c+...`. (Check: `O_{ab}=-f_{cba}=f_{cab}`.)

The anti-self-adjoint infinitesimal gauge action on full wavefunctions is

`J_c=J_c^orb+J_c^F`,
`J_c^orb= -sum_(a,b,i) f_cab x_i^b partial_(ia)`,
`J_c^F=(1/2) sum_(a,b,r) f_cab theta_r^a theta_r^b`.

The Fock factor is the standard spin lift of the **original** color action; it follows from `[J_c^F,theta_r^a]=sum_b f_cba theta_r^b`, with the indices used as in the source action. `J_c` is skew-symmetric and generates precisely `mathcal G_h Psi(x)=V_h Psi(O_h^-1 x)`. Define Hermitian `G_c=-i J_c`. The physical smooth compact core `C_phys` is annihilated by every `G_c`. Note the fermionic Gauss term must NOT be discarded before applying the constraint.

## 2. Source-exact diagonal square on the FULL original core

Let `A= (a,r)` denote a color/spinor generator label, `Q_alpha=sum_A theta_A L_(alpha,A)`, where

`L_(alpha,(a,r))=-i sum_i gamma_i[alpha,r] partial_(ia) + W_(alpha,(a,r))`,
`W_(alpha,(a,r))=(1/2)sum_(b,c,j,k) f_abc x_j^b x_k^c gamma_jk[alpha,r]`.

Because the `theta_A` satisfy CAR, and the scalar differential operators L commute with theta, the identity

`Q_alpha^2=(1/2)sum_A L_A^2 + (1/2)sum_(A,B) theta_A theta_B [L_A,L_B]`

holds exactly on the full smooth compact core `C_full`.

**Kinetic:** `sum_r gamma_i[alpha,r]gamma_j[alpha,r]=delta_ij`, since `gamma_i gamma_j` has zero diagonal for i!=j. Thus `(1/2)sum_A (-i gamma_i partial_(ia))²= -Delta/2` for every individual alpha. Indeed the 27 Hermitian Majorana linear combinations `C_(ia)=sum_r gamma_i[alpha,r]theta_r^a` obey `{C_(ia),C_(jb)}=delta_ij delta_ab`, making each source Q_alpha a **27-dimensional Dirac-type differential operator with Hermitian polynomial zero-order term**.

**Cubic square:** For each color a, define the original real simple bivector `y^a_jk=f_abc x_j^b x_k^c`. With the other two colors b,c, this is `±sqrt(2) x^b wedge x^c`, hence decomposable. Its skew spinorial image `Y_a=sum_(j<k)y^a_jk gamma_jk` obeys `Y_a²=-||y^a||² I_16`, by the Clifford relation `gamma(u wedge v)^2=-|u wedge v|² I`. Thus `(1/2)sum_(a,r) W_(alpha,(a,r))² = (1/2)sum_a ||y^a||²=V(x)` **for every alpha**, not merely after averaging alpha.

**Scalar kinetic–cubic cross:** In `(1/2)sum L_A²`, the scalar derivative of W with respect to its **own color a** vanishes because f_aac=0. The remaining first-order scalar coefficient equals

`+i sum_(c,a,b,i,p) f_cab gamma_p[alpha,alpha] x_p^c x_i^b partial_(ia)`
`=sum_(c,p) gamma_p[alpha,alpha] x_p^c G_c^orb`.

This is an **original bosonic Gauss generator**, not zero on arbitrary nonphysical states. It is a critical check against accidentally claiming 16 independent square roots of H on the ungauged Hilbert space.

**Non-scalar CAR commutator:** Differentiate the W coefficients using the original f normalization:

`partial_(ia) W_(alpha,(b,s))=sum_(c,p) f_bac x_p^c gamma_ip[alpha,s]`.

The coefficient of `theta_r^a theta_s^b` for a<b in `(1/2)sum_AB theta_Atheta_B[L_A,L_B]` is

`i sum_(c,p) f_cab x_p^c sum_i [gamma_i[alpha,r]gamma_ip[alpha,s]+gamma_i[alpha,s]gamma_ip[alpha,r]]`.

The required exact real-spinor identity is

`sum_i [gamma_i[alpha,r]gamma_ip[alpha,s]+gamma_i[alpha,s]gamma_ip[alpha,r]] = gamma_p[r,s]-delta_rs gamma_p[alpha,alpha]`.  **(F)**

It follows that the CAR commutator term is precisely

`B(x)+sum_(c,p) gamma_p[alpha,alpha] x_p^c G_c^F`.

There is no CAR reordering of physically distinct colors beyond their stipulated anticommutation. All same-color bilinear terms vanish because `f_caa=0`.

**Result on the literal original full smooth core:**

`BOX: Q_alpha² = H_0 + sum_(c,p) gamma_p[alpha,alpha] x_p^c G_c,`
`H_0=-(1/2)Delta + V(x)+B(x).`  **(SQ)**

Every term uses the source 48 theta generators, source f/gamma conventions, and precisely the original gauge generator; this is **not** an unsupported `Q²=H` assertion outside the physical domain. The source's `H_0` also equals `(1/16)sum_alpha Q_alpha²`, since `tr(gamma_p)=0`.

### Independent exact arithmetic certificate for the key spinorial contraction

Companion `BFSS_ORIGINAL_SUPERSYMMETRY_GAUSS_SQUARE_CHECK_0_1_0.py` reconstructs the already-registered source-real 16x16 nine gamma words and confirms all Clifford relations. For **each** of 16 alpha, 9 p, and 256 (r,s), it checks (F) in exact 64-bit integer arithmetic: **36,864 coefficient entries, zero discrepancies**, not a floating tolerance. It independently checks 16 orthonormal Dirac coefficient rows, simple bivector square identities, and the orbital cross-term sign at eight deterministically seeded integer x arrays. The scalar/B/fermionic identities above give the analytic operator derivation; the script is a reproducible finite matrix certificate, not an accepted Lean proof.

Why the explicit gamma test addresses the manuscript's unspecified real gamma choice: every 16-dimensional irreducible real symmetric representation of the 9-dimensional positive Clifford system is orthogonally equivalent to one of the two signed irreducible realizations (flipping one gamma exchanges them); the identity (F) is covariant under such a change, with gamma sign change affecting each side consistently. This uses standard real Clifford classification. A future source-level Lean proof can package precisely (F), rather than trying to normalize every original cubic expression at once.

## 3. Use the **genuine global** Spin(9) action to eliminate 136 unrelated Fierz jobs

On `C_phys` every `G_c` vanishes, so **for one fixed alpha**, (SQ) gives `Q_alpha²=H_0`.

The same source-defined global rotation implementation already analyzed in `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md` satisfies

`D_g Q_alpha D_g^-1=sum_beta (S_g^-1)_(alpha,beta) Q_beta`, `D_g H_0 D_g^-1=H_0`.

An established structural fact, **Spin(9) acts transitively on the unit sphere S15 of its real 16-dimensional spinor representation**, with stabilizer Spin(7) (for a published proof, see *G-invariant spin structures on spheres*, Annals of Global Analysis and Geometry 2022, section 'The action of Spin(9) on S15', https://link.springer.com/article/10.1007/s10455-022-09855-z).

Therefore for **every** real unit w in R16 there exists g with `Q(w)=sum_beta w_beta Q_beta=D_g Q_alpha D_g^-1`, up to the harmless transpose/action convention. Thus `Q(w)²=H_0` on C_phys for every unit w; by homogeneity `Q(w)²=|w|² H_0` for all real w. Polarizing gives

`BOX: {Q_alpha,Q_beta}=2 delta_alpha,beta H_0 on C_phys.` **(SUSY)**

This route requires **only one diagonal source-square identity**, the already-reconstructed true full source rotation covariance, and the published transitive spinor-sphere action. It is a completely different proof architecture from inlining 136 large concrete anticommutator theorems in Lean. Do not claim that (SUSY) is machine certified, however, before the accepted Lean source rotation bridge exists.

## 4. Operator domains: why algebra on a core is enough here

**A. Each original Q(w) is essentially self-adjoint on the original full smooth core**, for real w!=0; its gauge restriction is as well. The principal symbol of `Q(w)=sum w_alpha Q_alpha` is `sum_(a,i) A_(ia)(w) xi_(ia)`, where `A_(ia)(w)=sum_(alpha,r)w_alpha gamma_i[alpha,r]theta_r^a`. CAR and symmetric gamma imply

`{A_(ia)(w),A_(jb)(w)}=|w|² delta_ij delta_ab I`,

so `sigma(Q(w))(xi)²=(|w|²/2)|xi|² I`. It is a symmetric **elliptic Dirac-type** operator with bounded constant principal matrices and smooth Hermitian polynomial zero-order term on complete R27.

For an adjoint deficiency vector `u in ker(Q(w)^*±i)`, local elliptic regularity makes u locally H1. For real radial cutoffs `chi_R=1` on radius R, supported within 2R and `|grad chi_R|<=C/R`, `(Q(w)±i)(chi_R u)=[Q(w),chi_R]u` distributionally, and `||[Q(w),chi_R]u||<=C_w/R ||u||`. Local H1 compact support permits smooth graph approximation, so symmetry gives `||chi_R u||<=||(Q(w)±i)(chi_R u)||<=C_w/R||u||`; letting R grow shows u=0. Hence Q(w) is essentially self-adjoint (both deficiencies zero). Projecting the full operator graph core by Haar SU2, which commutes with Q(w), gives the same property on C_phys. At w=0 the zero operator is already self-adjoint.

**B. The original gauge-fixed minimal H_0 is essentially self-adjoint**, independently established by the complete-square positivity `<phi,H_0 phi>=sum||Q_alpha phi||²/16` on the full smooth core and the matrix Schrödinger IMS localization argument in `BFSS_ORIGINAL_SU2_ESSENTIAL_SELF_ADJOINTNESS_AND_PHYSICAL_OPERATOR_CORE_0_1_0.md`. Its unique closure is exactly the manuscript's form-defined H.

**C. Promote (SUSY) to the actual self-adjoint H.** For w real, on C_phys, `Q(w)²=|w|²H_0`. Since `Q(w)` has a unique self-adjoint closure, its square is self-adjoint and extends `|w|²H_0`. Since H_0 is essentially self-adjoint, uniqueness forces

`BOX: (closure Q(w))²=|w|² H` as self-adjoint operators, for every real w.

In particular `Dom(closure Q_alpha)=Dom(H^(1/2))`, and every closure Q_alpha strongly commutes with its own square H. On each H-positive eigenspace E (including infinite multiplicity), Q_alpha is a bounded self-adjoint operator with square E. Polarization of `Q(w)²=|w|² H` **on the common invariant E eigenspace** gives the ordinary Clifford anticommutator with no lingering domain ambiguity.

## 5. Spectral consequence: 256-fold Clifford multiplets and parity pairing

Fix an E>0 eigenvalue of the **full relative physical H** and let `E_E=ker(H-E)`. Each `Q_alpha` preserves this eigenspace by spectral calculus for `Q_alpha²=H`. Define `Gamma_alpha=E^(-1/2) Q_alpha|E_E`; these are Hermitian bounded operators satisfying

`{Gamma_alpha,Gamma_beta}=2delta_alpha,beta I_E_E`.

Thus `E_E` is a module over the complex Clifford algebra `Cl_16(C)=Mat_256(C)`. Consequences:

- `dim E_E >=256` whenever E_E is nonzero;
- if `dim E_E` is finite, it is a multiple of **256**;
- if infinite, the module decomposes into copies of the 256-dimensional irreducible representation; **do not** silently assume finite full-H multiplicity.
- Because the original Fock fermion-parity involution anticommutes with each Q_alpha, commutes with the gauge and H, every positive E is evenly represented in its even and odd parity subspaces. If the E-eigenspace is finite, each parity dimension is a multiple of 128.

**Important rotation warning:** Spin(9) rotates the Q_alpha as a 16-spinor, so its action need not preserve *a single high-spin isotype* when Q_alpha acts. The 256 lower bound belongs to the **entire physical eigenspace of H**, not to the compact-resolvent restricted `H_lambda` where positive eigenstates were constructed.

This is a new conditional refinement of the pinned positive-energy spectral claim; it does not assert a nonzero global gap or the absence of continuous spectrum. If one grants the source-defining global covariance and ordinary mathematical derivations above, every positive normalizable eigenstate belongs to a nontrivial supersymmetry multiplet.

## 6. Next test and negative knowledge

**Scientific result:** We have a faithful diagonal source-square and Gauss-law formula, supported by a small finite Clifford regression; Spin(9) sphere transitivity converts this to the full physical superalgebra without 136 brute-force inlinings; elliptic/cutoff and unique SA closures protect the operator-domain step. The resulting 256-fold positive-energy structure is ordinary mathematical evidence, **not an accepted Lean formalization or external physics-refereed theorem**.

**Next high-information research:** Independently test whether gauge-preserving parity and the rotation decomposition impose a stronger explicit pattern on the 256 multiplet (or find a counterexample), while preserving the original gauge Fock and spectral domain. For future formalization, isolate the single source Gauss-square identity (SQ) plus gamma Fierz contraction (F) and use spinor-sphere transitivity/covariance as a general bridge. Do not reopen R4B/R4D monolithic source assembly absent a source-faithful, kernel-efficient compression.

**Negative knowledge:** On the full ungauged Hilbert space **Q_alpha² != H_0 generally**; the additional Gauss term matters. A single algebraic supercharge relation on a smooth core is insufficient for claims about eigenspaces without ESA or an invariant spectral-domain argument. High-sector compact resolvent does NOT by itself mean the whole E eigenspace is finite. The 256 Clifford modules do NOT lie inside each Spin(9) sector. Do not equate old finite matrix checks with a new Lean theorem or with independent external peer review.

**Governance:** FCP research branch only. FCP main unchanged; no changes to etblink/math or openai/math; draft PR #25 remains unmerged; no CI runs triggered.
