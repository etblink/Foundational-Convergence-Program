# BFSS relative SU(2): direct all-spinor Gauss-square identity and minimal closed-form spectral bridge

**Date 2026-10-12 | Project Lead audit 0.1.0**

**Verdict:** DIRECT_SOURCE_SUPERALGEBRA_REDUCED_TO_313344_EXACT_GAMMA_ENTRIES; ORIGINAL_ORBITAL_AND_FOCK_GAUSS_TERMS_VERIFIED; SUPERALGEBRA_INDEPENDENT_OF_GLOBAL_SPIN9_COVARIANCE; COMPACT_RESOLVENT_NEEDS_ONLY_CORE_COERCIVITY; NOT_LEAN_CERTIFIED.

## 1. Precise source, what is new, and epistemic scope

Pinned source is etblink/math at adc7f1241b42e322a6451854ab7e4b4c146bf78a, preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex. In particular the definitions of the ORIGINAL 48 Hermitian Majoranas, real symmetric 16-by-16 gamma matrices, 16 supercharges, physical SU(2) gauge action, and q = (1/16) sum ||Q_alpha Psi||² are unchanged. Its quadratic-form expansion on the FULL smooth compact core gives H0=-(1/2)Delta+V+B. Gauge SO(3) uses f_abc=sqrt(2)epsilon_abc.

Earlier BFSS_ORIGINAL_GAUSS_SUPERSYMMETRY_AND_POSITIVE_E_CLIFFORD_MULTIPLICITY_0_1_0.md checked the square of fixed supercharges, then invoked GLOBAL Spin(9) covariance and transitivity on S15 to derive the entire physical superalgebra. That is mathematically reasonable but makes a relatively small operator identity dependent on a much larger group-implementation theorem. The improvement here is an entirely finite gamma-matrix identity with a verified 136-spinor polarization certificate. Spin(9) group covariance is still needed for the *rotation-selection* consequences, but NOT for the *Clifford-256 degeneracy* argument.

This is ordinary mathematics with a finite executable matrix proof and analytic core/domain reasoning; it is NOT a new accepted Lean kernel theorem nor external expert certification.

## 2. Original gauge generator, exact CAR normalization

Write theta_A=theta_r^a, A=(a,r), with {theta_A,theta_B}=delta_AB. The infinitesimal source color action in the generator labels is f_cab. Its combined skew-adjoint generator on C_full = Cc-infinity(R27;F) is

J_c^orb=-sum_(a,b,i) f_cab x_i^b partial_(ia);
J_c^F=(1/2)sum_(a,b,r) f_cab theta_r^a theta_r^b;
G_c=-i(J_c^orb+J_c^F).

The Clifford commutator [J_c^F,theta_r^a] = sum_b f_cba theta_r^b agrees with the lifted SO(3) action. The source physical smooth core C_phys = (C_full)^SU(2) is exactly annihilated by these generators. The fermionic part MUST remain in the unconstrained operator identity.

For w in R16 put Q(w)=sum_alpha w_alpha Q_alpha, v_p(w)=w^T gamma_p w. The main operator identity to be discharged on C_full is

(IDENTITY)  Q(w)^2 = |w|² H0 + sum_(c,p) v_p(w) x_p^c G_c,

where H0=-(1/2)Delta+V+B is the original differential expression and B=(i/2)f_abc x_i^a gamma_i[rs] theta_r^b theta_s^c.

## 3. Exact generalized 9-dimensional Fierz identity, no group-transitivity lemma

For each p=1,...,9 and every w in R16, define a_i=gamma_i w and b_ip=(gamma_i gamma_p)^T w when i != p, and 0 when i=p. Equivalently their row components are (w^T gamma_i)_r and (w^T gamma_i gamma_p)_s.

The finite Clifford identity is

(F) sum_i [ (w^T gamma_i)_r (w^T gamma_ip)_s
          + (w^T gamma_i)_s (w^T gamma_ip)_r ]
    = |w|² (gamma_p)_{rs} - delta_rs (w^T gamma_p w),

where gamma_ip=(1/2)[gamma_i,gamma_p]. The identity is quadratic in the entries of w.

Hence it suffices to evaluate w=e_alpha for alpha=1,...,16 and w=e_alpha+e_beta for all 120 unordered pairs alpha<beta: equality of quadratic forms for these 136 arguments proves it for ALL real w, because they determine all diagonal and cross coefficients. For each w, all nine choices p and all 256 ordered (r,s) entries were checked in exact signed 64-bit integer arithmetic: **136*9*256 = 313344 entries, zero discrepancies.**

The companion BFSS_FULL_SPINOR_GAUSS_SQUARE_POLARIZED_CERTIFICATE_0_1_0.py rebuilds one real symmetric original-class gamma-word basis, verifies all 81 Clifford relations, executes the full 136-case verification and directly checks source kinetic, quartic, orbital-Gauss and fermionic-Gauss/B coefficients for 20 independently generated original x and w combinations. It was executed locally. It does not construct the 2^24-dimensional Fock matrices. The two real irreducible positive Cl(9) realizations are related by a gamma sign flip, and the identity covaries with this flip; orthogonal changes of spinor basis preserve it. Thus the result applies to the source's unspecified fixed real symmetric gamma representation.

## 4. Normal-order the ORIGINAL full differential square

For theta label A=(a,r), write L_A=-i sum_i (w^T gamma_i)_r partial_(ia)+sqrt(2) Wbar_A, with Wbar computed from the ORIGINAL epsilon_abc x_j^b x_k^c gamma_jk coefficients (including the j<k convention). Since theta commutes with these scalar-coefficient differential operators, exact CAR rearrangement yields

Q(w)^2 = (1/2)sum_A L_A²
       + (1/2)sum_(A,B) theta_A theta_B [L_A,L_B].

Kinetic identity: sum_r (w^T gamma_i)_r (w^T gamma_j)_r=|w|² delta_ij. So its second-order scalar part equals -|w|² Delta/2.

Quartic identity: for each color a, y^a_jk=epsilon_abc x_j^b x_k^c defines a **simple bivector**. The real skew Clifford matrix Y_a=sum_(j<k) y^a_jk gamma_jk obeys Y_a²=-sum_(j<k)(y^a_jk)² I, giving the scalar potential |w|² V, exactly for arbitrary w.

The scalar first-order cross term equals sum_(c,p) v_p(w)x_p^c G_c^orb. It is NOT zero on arbitrary nonphysical wavefunctions. The finite Fierz identity (F) contracts the remaining theta bilinear term to |w|² B + sum_(c,p) v_p(w)x_p^c G_c^F. Thus (IDENTITY) holds on the **full source C_full**, without invoking any Spin(9) supercharge transformation theorem.

The companion exact regression checks all these coefficient families separately on 20 nontrivial integer-valued x/w examples, beyond the full quadratic-polarization test for (F). The scalar reduction itself is a Clifford/CAR analytic derivation, not a numerical inference from 20 configurations.

On C_phys, G_c Psi=0, so

Q(w)^2 Psi = |w|² H0 Psi  for EVERY real w.

Polarizing w immediately gives {Q_alpha,Q_beta}=2 delta_alpha,beta H0 on C_phys. This is a shorter, more direct source-discharge route than the previous transitivity-dependent proof.

## 5. Close the actual physical operators; not only a formal superalgebra

The original Q(w) has **constant Hermitian Dirac principal matrices** C_(ia)(w)=sum_r (w^T gamma_i)_r theta_r^a, with {C_(ia)(w),C_(jb)(w)}=|w|² delta_ij delta_ab. Its principal symbol squared is (|w|²/2)|xi|². The remaining multiplication coefficients are Hermitian and polynomial in x. Hence for any w !=0, local elliptic regularity holds and the usual compactly supported cutoff argument proves essential self-adjointness on C_full: the commutator [Q(w),chi_R] is bounded by |w|/sqrt(2) times ||grad chi_R||_infinity and therefore tends to zero as R->infinity on L² deficiency vectors. A compactly supported weak-domain cutoff can be smoothed in the graph norm by local elliptic regularity. Both deficiencies vanish. Since Q(w) commutes with the original compact gauge action, Haar projecting a full operator-graph core proves essential self-adjointness on C_phys as well.

The source H0 is nonnegative on C_full by (1/16)sum_alpha ||Q_alpha Psi||²; it is a smooth Hermitian matrix Schrödinger operator with scalar leading term -Delta/2. The separate IMS cutoff proof in BFSS_ORIGINAL_SU2_ESSENTIAL_SELF_ADJOINTNESS_AND_PHYSICAL_OPERATOR_CORE_0_1_0.md shows H0 is also essentially self-adjoint on C_full and C_phys. Its unique physical closure is the very H defined by closing the source q.

Let S(w)=closure(Q(w)|C_phys), self-adjoint. Since Q(w) maps C_phys into itself, S(w)^2 is a self-adjoint extension of |w|² H0 on C_phys. By essential self-adjointness of H0, uniqueness forces

S(w)^2 = |w|² H, as equality of SELF-ADJOINT operators.

Every positive E eigenspace of H is invariant under S(w) by spectral calculus, and its normalized Q_alpha restrictions satisfy Cl16(C) matrix relations. Thus a nonzero positive eigenspace contains at least 256 vectors and, **if finite-dimensional**, has dimension divisible by 256. This consequence now depends only on the original gauge-action construction and the DIRECT Fierz/CAR/domain proof, not on the full Spin(9) action or its sphere-transitivity theorem. No assumption that the entire eigenspace is finite is made.

**Boundary:** The Spin(9) representation decomposition 44+84+128 and partner-selection results additionally need the genuine original Spin(9) covariance. Do not silently transfer the independence improvement to those separate rotational claims.

## 6. Smaller load-bearing analytic bridge for HIGH-SPIN compactness

An independent simplification concerns the latest source-audited m=8 geometry estimate in BFSS_JOINT_FERMION_SPHERE_M8_LAMBDA14_K6_AUDIT_0_1_0.md. It says, conditionally on its original source Spin(9) slice and branching premises, that on C_lambda=P_lambda C_phys,

q[Psi] >= epsilon ||grad Psi||² + c_A int A(x)|Psi|²,

for lambda2>14, epsilon=1/100>0, c_A=(119-84sqrt(2))/5>0, and A(x)=average_(n on S²)|Xn| >=|x|/2. Consequently,

q[Psi] >= epsilon ||grad Psi||² + c_R int |x||Psi|², c_R=c_A/2>0.  (COERCIVE)

**New observation:** No full weighted Sobolev *domain equality* is necessary to deduce compact resolvent from (COERCIVE). This removes an auxiliary analytic burden from the theorem's minimal proof dependencies. The original source q is closable, and source Spin(9) isotypic projectors are bounded for its form norm (as shown in the pinned rotations lemma). Hence C_lambda is by construction a q_lambda-form core.

For any q_lambda-graph Cauchy sequence from C_lambda, (COERCIVE) applied to its differences yields Cauchy sequences in the distributional H1-gradient and multiplication by |x|^(1/2). Both are closed operators in L². Their limits are the genuine weak gradient and weighted multiplication of the form-domain limit, giving the same coercive inequality on ALL Dom(q_lambda). This requires **no separate assertion** that the form domain equals a particular threefold weighted Sobolev intersection.

Bounded subsets in the form graph norm then have bounded H1 on every ball. The radial term gives uniformly tight tails, int_(|x|>R)|Psi|² <= q[Psi]/(c_R R). By local Rellich compactness and a diagonal extraction, the form-domain inclusion Dom(q_lambda) -> Hphys_lambda is compact. Standard closed nonnegative-form representation theory implies the associated H_lambda has compact resolvent. If q_lambda[Psi]=0, the coercive inequality forces Psi=0 (in particular the weighted radial term vanishes); thus ker(H_lambda)=0. On a nonzero infinite-dimensional actual lambda-sector it follows that the operator has infinitely many STRICTLY positive eigenvalues tending to infinity. The old complete form-domain identification may be independently true, but is not required on this critical path.

The source-specific hypotheses still needing independent end-to-end certification for the **spectral existence theorem** are (i) the original Spin(9) form invariance/isotypic projector, (ii) the fixed-color oscillator branching/low-level exclusion on the genuine source slices, (iii) the m8 joint B/A inequality (now backed by its rational 64-cell certificate), and (iv) nonzero infinite-dimensional source physical isotype (supported by the original Fock decomposition and bosonic polynomial). Our direct superalgebra proof is useful for positive-E degeneracy, but the manuscript's positive eigenvalue existence does not require proving the entire supersymmetry algebra.

## 7. Research governance, scope and successors

**New verified scientific advance:** direct finite polynomial gamma proof for the entire real-spinor source superalgebra, plus an analytic compactness bridge that avoids full form-domain identification. The original supercharge/Gauss identity is now decoupled from global Spin(9) covariance, saving a substantial group-theoretic dependency. We have not solved the original source theorem in Lean and have not manufactured a new full-H spectral gap.

**Negative knowledge:** Do not drop the fermionic Gauss generator off the full-core square; do not infer all-positive-energy eigenspaces are finite; do not assume a single fixed Spin(9) sector contains a full 256-dimensional module; do not promote the 64-cell inequality certificate into an entire BFSS spectral certificate; do not chase exact weighted-domain equality when the coercive closure suffices; do not restart R4B/R4D monolithic Lean assemblies to prove a now isolated finite gamma identity.

**Next productive move:** make a small pinned Lean lemma for (F) and the source normal-order Gauss bridge, using quadratic polarization and already accepted Clifford interfaces, independently of global Spin(9). Separately formalize the compact coercive-embedding lemma in a reusable source-independent Hilbert-form package. Do not launch broad CI before a bounded compiler strategy is in place.

Research branch only. FCP main, etblink/math, openai/math untouched. Draft PR #25 unmerged.
