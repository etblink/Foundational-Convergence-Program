# BFSS S3L — original 48-Majorana gauge singlet, all B4 raising roots, and explicit high-spin sector

**2026-10-12 | Bounded successor adversarial scientific audit 0.1.0.** `GAUGE_VACUUM_CONSTRUCTION_SUPPORTED__ALL_16_B4_RAISERS_PASS__P_HIGHEST_EXACT__UNIFORM_K29_WITNESS_DERIVED__NO_FULL_LEAN_SPECTRAL_CERTIFICATION`.

## Pinned source and falsifiers

`etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` at `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, especially `lem:fermion-invariant` (approx. 696–730), `lem:large-sectors` (731–803), `lem:rotations` (330–410), and `prop:confinement` (615–685). Current direct predecessors: `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`, `BFSS_HIGH_SPIN_CLOSED_DOMAIN_COMPACTNESS_AND_SPECTRAL_BOUNDARY_AUDIT_0_1_0.md`, and `BFSS_EXPLICIT_FERMION_NORM_AND_HIGH_SPIN_ENERGY_BOUND_AUDIT_0_1_0.md`, all in this experiment directory.

The source theorem would be undermined if: the chosen annihilator vacuum transformed nontrivially under gauge `SU(2)`; its Spin(9) subrepresentation were absent; the supposed highest polynomial were annihilated only by a selected root but not every positive B4 root; the polynomial vanished identically on radial shells; the radial bump functions moved among unrelated Spin(9) types; or the chosen weight could not reach the threshold of the confinement proposition.

## 1. Genuine original 48-Majorana gauge vacuum, not a surrogate singlet assumption

Original source has 48 Hermitian Majoranas `theta_alpha^a` with `{theta_alpha^a,theta_beta^b}=delta_alpha,beta delta_ab`, `a=1,2,3`, `alpha=1,...,16`, irreducible complex Clifford module F of dimension `2^24`. The 24 CAR annihilators

`c_j^a=(theta_(2j-1)^a+i theta_(2j)^a)/sqrt(2), j=1,...,8, a=1,2,3`

obey `{c_j^a,c_l^b}=0` and `{c_j^a,(c_l^b)^*}=delta_jl delta_ab`. The commuting occupation projections permit construction of a nonzero state `Omega` with `c_j^a Omega=0` for **all** j,a: lower occupied modes one at a time. Its common vacuum kernel is exactly one-dimensional because its 24 creation operators span the entire irreducible Fock module (the source provides this argument). This is an actual state of the **original 48-Majorana F**.

The source gauge `h in SU(2)` sends `theta_alpha^a` to `sum_b(O_h)_{ba} theta_alpha^b`, identically for the odd/even members of each j pair. Hence `c_j^a` transforms through the same real orthogonal color matrix and its annihilation subspace is preserved. Thus the unique vacuum line `C Omega` is `SU(2)`-invariant. The scalar action on this line is a continuous 1-dimensional unitary character `SU(2)->U(1)`; **every such character is trivial**, so `V_h Omega=Omega` exactly, not just projectively. Therefore `F^{SU(2)}!=0`.

As a new independent exact CAR diagnostic, the companion Python script constructs a **single color triplet** as three Jordan–Wigner CAR annihilators on `C^8`. It verifies all pair anticommutators and all three skew gauge generators `K_ab=c_a^*c_b-c_b^*c_a`, checks `[K_ab,c_a]=-c_b`, `[K_ab,c_b]=c_a`, and proves `K_ab Omega=0` by exact integer matrix multiplication. The extension to all 8 j-blocks and 24 creation/annihilation modes is the **algebraic CAR tensor-product/irreducibility argument above**, not a matrix test of dimension `2^24`. No artificial gauge average and no model-replaced Majoranas are introduced.

The previously source-grounded commuting gauge and spatial `Spin(9)` lifts imply `F^{SU(2)}` is stable under the **actual** G representation. It is finite dimensional, hence decomposes into G irreducibles; **there exists** a nonzero highest-weight vector `v` of some dominant weight `mu=(mu1,mu2,mu3,mu4)`, automatically `mu2>=0`. The proof does not identify mu explicitly, and does not need to.

## 2. Independently challenge ALL sixteen positive roots, not selected raising examples

Use the complex isotropic basis of the original nine-dimensional spatial vector representation

`p_i=(e_(2i-1)+i e_(2i))/sqrt(2)`, `m_i=(e_(2i-1)-i e_(2i))/sqrt(2)`, for i=1,...,4, with `z=e9`. Its complex bilinear pairing has `<p_i,m_j>=delta_ij`, `<z,z>=1`, with all other basis pairings zero. Relative to the source torus convention, `p_i` has weight `epsilon_i` and `m_i` weight `-epsilon_i`.

The standard B4 positive roots are exactly `epsilon_i-epsilon_j` and `epsilon_i+epsilon_j` for i<j (6+6), and `epsilon_i` (4), **16 in total**. For each root we explicitly construct its `9x9` matrix on the isotropic basis using:

- `E_(eps_i-eps_j): p_j -> p_i, m_i -> -m_j`;
- `E_(eps_i+eps_j): m_j -> p_i, m_i -> -p_j`;
- `E_(eps_i): z -> p_i, m_i -> -z`.

The script asserts `E^T G+G E=0` for the source bilinear metric G on **every root**: these are genuine elements of complex `so(9)`, not invented polynomial derivations. It then checks each E annihilates `p_1 wedge p_2` and that Cartan generators give its highest weight `epsilon_1+epsilon_2`. The only nonzero raising transformation on the two factors is `E_(eps_1-eps_2) p_2=p_1`; it vanishes on their wedge. This closes the previously cited potential weight-sign and untested-root concern within the selected consistent positive-root convention.

## 3. Full original color invariant P, weight, nonzero shell

The pinned polynomial uses `zeta_a=(e1+i e2) dot x^a`, `eta_a=(e3+i e4) dot x^a`, and

`P=sum_(a<b) (zeta_a eta_b-zeta_b eta_a)^2`.

Our normalized `p_1,p_2` differ from the manuscript's `w_1,w_2` by the same harmless `1/sqrt(2)` factor; this changes the polynomial by a nonzero constant but not its weight or gauge invariance. The companion exact symbolic test checks the original **un-normalized** P itself: its Gram determinant identity, annihilation by all three infinitesimal color rotations, annihilation by all **16** authentic so9 raising matrices acting on the p1,p2 polynomial coefficients, Cartan weights **(2,2,0,0)**, and the explicit nonzero ray `x=t(e1,e3,0)` where P=t^4 for t>0. Invariance under Lie(SO3) implies gauge-invariance under connected SU2 adjoint image. No random numeric samples or limited root lists are used.

For any k>=0, polynomial `P^k` is nonzero on every positive radial sphere (same ray), gauge invariant, and highest of weight `(2k,2k,0,0)`. Since v above is a nonzero gauge-invariant G-highest vector of weight mu, the pointwise product `P^k v` is a nonzero highest vector in `Sym^{4k}((C^9)^3)^* tensor F` with dominant weight

`lambda=mu+(2k,2k,0,0)=(mu1+2k,mu2+2k,mu3,mu4)`.

Every nonzero irreducible component of this finite-dimensional representation's highest vector has **the same** highest weight lambda (the positive roots kill each component). Thus it belongs to the single G-isotypic subspace `Hphys_lambda` after multiplying by a G-invariant radial function. There is no spurious assumption that the whole homogeneous-polynomial representation is irreducible.

## 4. Uniform explicit sector witness without computing fermionic mu

Earlier independently derived **admissible, possibly nonoptimal** original-source bounds `||B(x)||<=8sqrt(6)|x|` and `M<=6`, with `m=50`, imply `c_50=59/3-8sqrt6>0` and the sufficient sector condition `lambda2>56`.

Since every dominant `Spin(9)` highest weight mu has `mu2>=0`, choose **k=29** (degree 4k=116). Then, regardless of which nonzero irreducible summand of `F^{SU(2)}` furnishes v,

`lambda2=mu2+58>=58>56`.

This is a **uniform sufficient exponent**, not a claim that the smallest exponent for a particular fermion irrep is 29. It is the smallest integer sufficient without any information beyond `mu2>=0` and the published conservative constants. For fixed k=29 choose any sequence of nonzero `chi_j in C_c^infty((j+1/4,j+3/4))` for positive integers j. Each `Psi_j(x)=chi_j(|x|)P(x)^29 v` belongs to the exact source physical core C, is gauge invariant, lies in the **same** `Spin(9)` type lambda, is nonzero (each support intersects the polynomial's nonzero ray), and the functions are pairwise orthogonal through disjoint radial support. This produces an **infinite-dimensional** physical lambda-sector satisfying the numerical hypotheses of the source confinement proposition.

Note the Gram determinant P has no need to be positive or bounded away from zero globally; the ray suffices to show a nonzero L2 function on each radial shell because P is continuous and nonzero on a neighborhood of a point on that sphere.

## 5. Scientific result and unresolved certification boundary

**This sector-construction step survives independent exact checks.** No gauge singlet sign problem, missing root-annihilation identity, weight-lattice mismatch, zero-polynomial issue, or radial-isotype contamination was found. The concrete k=29 choice strengthens the source's qualitative 'sufficiently large k' statement without changing the Hamiltonian or requiring optimal constants.

The mathematical bridge to *positive normalizable eigenvalues* is now sharply identifiable: combine (i) the original 48-Majorana global commuting gauge/Spin9 action and all-spinor Q covariance, (ii) genuine B4 to D4 branching, (iii) the sixteen-dimensional oscillator slice and high-isotype coercive inequality extended to the exact closed form domain, and (iv) this nonzero infinite-dimensional lambda-sector. The earlier source audits supply detailed ordinary mathematical reconstructions of (i) and (iii), computational checks and classical-source support for (ii), and this audit reconstructs (iv). That is **not** an end-to-end Lean theorem or an external refereed certification of the original positive-spectrum claim. A focused final premise-to-conclusion cross-audit remains scientifically worthwhile, with particular attention to whether each ingredient is established on precisely the same original source F and H and no hypothesis is silently transferred across an incompatible model.

**Negative knowledge:** do not interpret spinor vacuum invariance under SU2 as Spin9 vacuum-line invariance (only the *whole* gauge-invariant subspace is Spin9-stable); do not use only one raising root to certify highest weight; do not treat sign-chosen Cartan eigenvalues as an invariant physical claim without fixing the positive-root convention; do not claim k29 is the true minimal weight threshold or that any high-spin eigenvalue creates a gap in full BFSS; no need for an Fock matrix of dimension 2^24 or a repeat of the stalled R4B/R4D CI.

**Governance:** Research branch only; FCP main and both mathematical source repositories unchanged; PR #25 stays draft and unmerged; no Lean CI triggered by this scientific record.
