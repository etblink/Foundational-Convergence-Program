> **Superseded numerical threshold (2026-10-12):** This audit's source-coherent lambda2>16 and k7 results remain correct, but the exact joint fermion-versus-color-spherical inequality now proves **lambda2>14** and a **k6, degree24** physical witness in (15,15,1,0), or the smaller k7 sector (16,16,0,0). See `BFSS_JOINT_FERMION_SPHERE_M8_LAMBDA14_K6_AUDIT_0_1_0.md` and its exact 64-cell rational certificate. The independent-rank-geometry combination below is not optimal; do not treat m10/k7 as current best.

# BFSS relative SU(2): gauge-orbit averaged radial confinement and a k=7 physical high-spin witness

**2026-10-12 | Project Lead mathematical advance 0.1.0.** Disposition: SOURCE_GAUGE_AVERAGED_SPHERICAL_RADIAL_BOUND_PROVED__M10_LAMBDA2_GT16__PHYSICAL_K7_SECTOR__CLOSED_SOURCE_SPECTRAL_CONSEQUENCE_CONDITIONAL__NOT_LEAN_CERTIFIED.

## Primary mathematical source and reason to investigate

Pinned source: etblink/math commit adc7f1241b42e322a6451854ab7e4b4c146bf78a, preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex. The Hamiltonian is exactly the source-defined relative SU(2) form on the physical SU(2)-fixed subspace of L2(R27;F) with the original 48 Majoranas. Its original smooth-core identity is q[Psi] = (1/2) G + T + <Psi,B(x)Psi>, G=||grad Psi||², T=int V|Psi|².

This theorem improves, but does not erase, the earlier correct color-sum bound and m=16 (lambda2>22) audit at BFSS_COLOR_ADAPTED_M16_CONFINEMENT_AND_K10_SECTOR_AUDIT_0_1_0.md. The advance is to use the **same physical gauge invariance in the integration measure** to replace the basis-dependent color observable by its entire SU(2) orbit average and exploit a dimension-three geometric inequality. We do NOT change the original x variables, matrix normalization, supercharges, f=sqrt(2)epsilon or Clifford F, and we do NOT impose pointwise spinor gauge invariance rather than the correct combined orbital-and-Fock equivariance.

## 1. Fixed-color source oscillator inequality for any color direction

The pinned Spin9 restriction/slice lemma, conditional on its independently audited source and closed-form implementation, states that for any smooth physical Spin9 isotype Psi of weight lambda with lambda2>m+M (M=6 for the actual F), the 16-dimensional transverse oscillator excludes all n<=m levels.

For a real allocation 0<a<1/2, the oscillator -a Delta_z + |u|²|z|² has level n energy 2 sqrt(a)(n+8)|u|. Therefore, for any fixed source color a0, after integrating all original variables,

a G + T >= 2 sqrt(a)(m+9) int |x^{a0}| |Psi(x)|² dx.    (1)

This is the original fixed-color estimate and does not assume a fictitious color-independent pointwise fiber inequality for arbitrary L2 vectors. Initially (1) is on the smooth physical isotypic core only.

Let n be ANY unit vector in the real SU2 color-adjoint R3. Since the source gauge SU2 is onto SO3 on color coordinates, the same estimate holds with |x^{a0}| replaced by |sum_a n_a x^a|. More directly, the physical equivariance Psi(Ox)=V_O Psi(x), with unitary Fock factor, implies |Psi(Ox)|²=|Psi(x)|² for each color O. A change of variables makes the integrals for every n equal to that for a0. Thus gauge averaging over normalized Haar/S² gives the exact strengthened form

a G+T >= 2 sqrt(a)(m+9) int A(x)|Psi|² dx,    (2)

A(x)=int_(n in S²) |sum_a n_a x^a| d_omega(n).

The right side is gauge invariant and uses the genuine combined gauge action. Importantly, **the factor 1/3 from the earlier three-coordinate average is not present here**; the sphere mean itself encodes the color geometry.

## 2. Sharp universal spherical mean inequality: A(x)>=|x|/2

Let X be the real 3x9 bosonic configuration, with squared singular values s1,s2,s3>=0 and sum S=s1+s2+s3=|x|². By SO3 invariance of normalized d_omega,

A(x)=int_(S²) sqrt(s1 n1²+s2 n2²+s3 n3²) d_omega(n).

For x!=0 write p_i=s_i/S, p_i>=0, sum p_i=1. The functional

F(p)=int_(S²) sqrt(sum_i p_i n_i²) d_omega(n)

is **concave** on the probability simplex because the square root of an affine function of p is concave and integration preserves concavity. Therefore for p=sum_i p_i e_i,

F(p) >= sum_i p_i F(e_i) = sum_i p_i E|n_i| = 1/2.

The last equality is exact for the uniform S² distribution: n_i is uniform on [-1,1], hence E|n_i|=1/2. At rank-one X, equality holds. Consequently

BOX: A(x) >= |x|/2 for EVERY original bosonic x; constant 1/2 is sharp.   (3)

This is an analytic all-configuration proof, not a numerical sphere sample or an asserted typical geometry. The inequality respects arbitrary color and spatial orientations and requires no derivatives of x-dependent gauge rotations.

## 3. Combine with the sharp original full-F fermionic norm

The already proved source Majorana bound BFSS_SHARP_ORIGINAL_FERMION_NORM_AND_IMPROVED_PHYSICAL_SECTOR_0_1_0.md gives

||B(x)||_op <= C_B |x|, C_B=16 sqrt(2/3).

It applies to the full original 48-Majorana irreducible F and hence safely to physical states. Combining (1)-(3) with the exact source form and keeping the positive kinetic remainder yields, on the physical smooth lambda-isotypic core,

BOX: q[Psi] >= (1/2-a) G + [sqrt(a)(m+9)-16 sqrt(2/3)] int |x| |Psi(x)|² dx,     (4)

provided lambda2>m+6.

Take a=12/25, m=10. Then epsilon=1/2-a=1/50>0, and

c = (38 sqrt(3)/5) - 16 sqrt(2/3) = 0.0996408426798503... >0.

Positivity is EXACT: a*(m+9)^2=4332/25 >512/3=C_B², with positive square roots. Hence

BOX: q[Psi] >= (1/50)||grad Psi||²+c int |x||Psi(x)|² dx  for lambda2>16.   (5)

The standard source graph-closure argument extends (5) to the **actual closed restricted form q_lambda**: q-graph convergence plus the positive gradient and weighted-norm terms make weak H1 gradients and |x|^{1/2}Psi closed by lower semicontinuity. It follows by local Rellich compactness and the uniform radial tail bound that every nonzero such isotype has compact resolvent; q=0 implies Psi=0. This conclusion is **conditional on the genuine original source symmetries, fixed-color oscillator and closed-form reduction** already separately audited, not a standalone Lean certification.

**Method-relative limit:** For m<=9, any a<1/2 gives sqrt(a)(m+9) <=sqrt(1/2)*18 = 9 sqrt(2) <16 sqrt(2/3). So m=10 is the first excluded-level count to yield strict positivity using the *separately sharp* Euclidean B bound and sharp spherical mean lower bound while retaining kinetic control. Since these two extrema are at different bosonic rank patterns, this is NOT a global optimality claim for a combined geometry-adapted comparison. A sharper joint inequality might improve further.

The 27-dimensional Hardy inequality also gives a conditional spectral floor for each lambda2>16:
inf spec(H_lambda) >= 3[(25/32)c²]^(1/3) = approximately 0.5938492231654874 (source energy units). This is for the specified high-isotype H_lambda only, not a gap in unprojected full H.

## 4. Explicit physical witnesses from the COMPLETE original Fock decomposition

Prior exact, independent 48-Majorana SU2 x Spin9 character analysis BFSS_COMPLETE_SU2_SINGLET_FOCK_SPIN9_DECOMPOSITION_AND_K18_WITNESS_0_1_0.md proves there are 32 genuine gauge-invariant Spin9 highest-weight types, with maximal mu2=3. The genuine source color-gauge-invariant bosonic polynomial P has Spin9 highest weight (2,2,0,0) and is nonzero on every positive radial shell.

For any actual Fock highest vector v_mu, the source P^k v_mu belongs to one physical Spin9 isotype lambda=mu+(2k,2k,0,0). Since mu2<=3, any exponent k<=6 gives lambda2<=3+12=15 and cannot reach strict >16. But the original actual Fock representation contains a gauge-invariant irrep mu=(3,3,1,0), giving **k=7**:

BOX: mu=(3,3,1,0), k=7, lambda=(17,17,1,0), lambda2=17>16; bosonic P^7 degree 28.

This is an actual **gauge-invariant physical isotype**, not a claim all finite-dimensional abstract weights are realized as eigenvectors. The family chi_j(|x|)P^7 v_mu with mutually disjoint positive-radius supports gives infinitely many linearly independent compact smooth physical states in exactly that isotype. Subject to the preceding source confinement and self-adjoint-form theorem, H_lambda has compact resolvent and trivial kernel, hence contains infinitely many positive-energy eigenvalues of full H. Its Spin9 representation dimension is **13,066,868,100**, versus 7,252,446,280,716 for the superseded k=18 (38,38,0,0) construction.

An alternative **smallest target Spin9 dimension**, among the 32 original fermionic-highest choices at their least admissible exponent, is:
mu=(2,2,0,0), k=8, lambda=(18,18,0,0), dim V_lambda=4,567,885,399.
The genuine Spin9 fermionic scalar mu=0, k=9 gives the same rotation isotype with a different polynomial degree. Avoid claiming these are automatically independent spectral eigenvectors or separate E eigenvalues.

The previous original supercharge minuscule tensor rule, conditional on full source superalgebra, gives six possible immediate partner representations for (17,17,1,0) and three for (18,18,0,0). Every possible direct partner's second coordinate remains >16; the exact rational Weyl-dimension sums agree with 16*dim V_lambda. The supercharges need not populate every permitted partner type.

**Method-relative optimum:** k=7 is minimal *only among P^k times an original gauge-invariant Fock highest vector* and for inequality (5). It is not the earliest possible spectrum threshold for all gauge-invariant polynomials or more sensitive oscillator methods.

## 5. Negative knowledge and next scientific discriminator

The key insight is that the original pointwise fermion bound need not be relaxed when the **physical density's exact color-orbit symmetry** strengthens the positive oscillator bound. The previous >22 theorem remains valid, but the >16 theorem supersedes it as the presently strongest uniformly justified ordinary-mathematical source estimate.

**Not proven:** full-H global spectral gap; pointwise color-invariance of Fock vectors (only physical wavefunction gauge equivariance); m=10 optimal for a coupled color-rank-dependent B versus A comparison; new theorem Lean certification; global self-adjointness of differently defined models; any claim that a finite Spin9 representation dimension is an eigenvalue multiplicity.

**Highest-information possible next mathematics:** Explore the sharp *joint* inequality between the exact original B(x) norm and the color-spherical A(x), rather than applying their independent worst-case bounds. Finite quadrature suggests improvement might be possible (potentially m<10) but that is not a proof and is **not promoted here**. Alternatively construct an explicit CAR highest vector for the new small-degree witness.

**Governance:** research branch only; keep FCP main, etblink/math, openai/math unchanged, PR #25 draft/unmerged; no CI.
