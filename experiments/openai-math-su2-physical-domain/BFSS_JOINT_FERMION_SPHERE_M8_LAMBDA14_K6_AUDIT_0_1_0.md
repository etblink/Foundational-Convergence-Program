# BFSS original relative SU(2): certified sharp-geometry comparison improves physical confinement to lambda2 > 14

**2026-10-12 | Project Lead mathematical audit 0.1.0**  
Status: `EXACT_64_CELL_RATIONAL_CERTIFICATE__SOURCE_B_OVER_COLOR_SPHERE_21_20__M8_LAMBDA2_GT14__P6_PHYSICAL_WITNESS__METHOD_RELATIVE_MINIMALITY__FULL_SOURCE_SPECTRAL_THEOREM_NOT_LEAN_CERTIFIED`.

## 1. Source and improved scientific target

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`; use its ORIGINAL 48-Majorana F, original `f_abc=sqrt(2)epsilon_abc`, gauge-fixed smooth core C, source `q=(1/2)G+T+B`, `G=||grad Psi||²`, `T=int V |Psi|²`, and 16-dimensional transverse oscillator. No source modifications or surrogate Hamiltonian.

The previous `BFSS_GAUGE_ORBIT_SPHERICAL_RADIAL_M10_CONFINEMENT_AND_K7_AUDIT_0_1_0.md` proved `lambda2>16` by combining **independent**, separately worst-case bounds `||B(x)||<=16sqrt(2/3)|x|` and `A(x)>=|x|/2`. This audit proves a genuinely **joint** relation between the *same* original B and A, which improves the threshold without strengthening any hypothesis on the physical states.

Let `X=(x^1,x^2,x^3)` as a real 9-by-3 matrix and `A(X)=int_(n in S²)||Xn||domega(n)` (normalized spherical measure). This is the exact color-orbit average of the oscillator-controlled observable, not a gauge-fixed pointwise projection of the fermions.

**New all-configuration inequality:**

`BOX: ||B(X)||_op <= (84sqrt(2)/5) A(X).`    (J)

The proof is partly a small exact finite-dimensional computer-assisted certificate. It was executed in Python with rational arithmetic: 45 vertices, 64 covering triangles, no gaps. The independent numerical conjecture that the **optimal** ratio is actually `16sqrt(2)` remains UNPROVED and is not used. Our theorem gives `(84/5)sqrt(2) ~23.759`, safely smaller than the `m=8` oscillator limit `17sqrt(2) ~24.042`.

## 2. Reduce to exactly three bosonic singular values

By the genuine original source `Spin(9) x SU(2)` symmetry and original CAR norm computation, `||B(X)||` depends only on the three real nonnegative singular values `t1,t2,t3` of X. By the preceding exact 48-label Majorana calculation, define

`H(t)= 1/2 [[0,t3,t2],[t3,0,t1],[t2,t1,0]]`,
`f(t)=lambda_max(H(t))`.
Then **exactly** `||B(X)||=16sqrt(2) f(t)`.

The sphere mean is `A(t)=int_(n in S²) sqrt(t1² n1²+t2² n2²+t3² n3²) domega(n)`.

Both are symmetric, homogeneous of degree 1 in t. We may order `t1>=t2>=t3>=0` and, for t1>0, scale to `t=(1,u,v)` with `0<=v<=u<=1`. At X=0, J is trivial. The desired bound J is thus equivalent to

`f(t)<=21/20 A(t)` for ALL nonnegative triples t.

## 3. Four globally justified affine lower supports for the spherical mean

On the ordered cone `t1>=t2>=t3>=0` we establish `A(t)>= L_k(t)` for four **rational** linear functions:

`L0=(t1+t2+t3)/3`,
`L1=t1/2`,
`L2=3(t1+t2)/8`,
`L3=(231t1+104t2+104t3)/500`.

Reasons:

**L0.** A(t) is a symmetric convex function of t (an integral of Euclidean norms). Averaging all six permutations of t and using convexity gives `A(t)>=A(bar t,bar t,bar t)=bar t=(sum t)/3`.

**L1.** For every n, `||diag(t)n||>=t1 |n1|`. Since `E|n1|=1/2`, `A(t)>=t1/2`.

**L2.** Average the permutation swapping t1,t2 and use convexity, then drop t3 by monotonicity: `A(t)>=A(s,s,0)`, `s=(t1+t2)/2`. The exact spherical integral is `A(s,s,0)=pi*s/4=pi(t1+t2)/8 >=3(t1+t2)/8` because `pi>3`.

**L3 (independently certified rational tangent).** By convexity, at `t0=(1,1/4,1/4)`, `A(t)>= g1 t1+g2(t2+t3)`, where `g1,g2` are positive derivatives and Euler homogeneity cancels the tangent constant. Let `J0=int_0^1 [1+15 u²]^(-1/2)du`. Differentiating the elementary one-dimensional spherical integral at t0 gives

`g1=8/15-2J0/15`, `g2=31J0/60-1/15`.

A **rigorous integer-arithmetic Riemann enclosure**, not a floating estimate, proves

`133/250 < J0 < 267/500`.

For N=1024, SCALE=10^10, set `m_j=isqrt(N²+15j²)`. Monotonicity of the integrand gives the rational lower and upper sums:

`LOW/SCALE <= J0 <= UP/SCALE`,
`LOW=sum_(j=1)^N floor(SCALE/(m_j+1))=5322427482`,
`UP=sum_(j=0)^(N-1) ceil(SCALE/m_j)=5333071805`.

These are integer operations; each denominator `m_j` bounds the true square root on the correct side. Inserting the rational J0 enclosure proves `g1>231/500`, `g2>104/500`. All t are nonnegative, so `A(t)>=L3(t)`. No unverified numerical derivative or transcendental constant enters the accepted certificate.

## 4. Entire domain certified by only 64 exact rational triangular cells

The positive top eigenvalue f of H is the **unique positive root** of the cubic

`p_t(d)=d³-(t1²+t2²+t3²)d/4-t1*t2*t3/4.`

For any `d>=0`, the exact rational predicate `4d³-d(sum t_i²)-t1t2t3>=0` is equivalent to `f(t)<=d`. This uses the sign pattern and Descartes' rule, not a numerical eigensolver.

Triangulate the entire normalized parameter simplex `0<=v<=u<=1` with N=8:
45 exact rational vertices `(u,v)=(i/8,j/8)`, `0<=j<=i<=8`, and **64 closed triangles** with integer-grid vertices `((i,j),(i+1,j),(i+1,j+1))` and, for j<i, `((i,j),(i,j+1),(i+1,j+1))`.

At each rational vertex, evaluate all four exact `d=(21/20)L_k(t)` and the above **integer/rational cubic**. Every one of 64 triangles has *at least one SAME supporting L_k* whose three vertices all pass. The source-independent certificate reports chosen-support counts `L0:34, L1:1, L2:10, L3:19`.

Because f is a convex function of t (largest eigenvalue of a matrix linear in t), while each L_k is affine, the three vertex inequalities for a triangle yield `f(t)<=21/20 L_k(t)<=21/20 A(t)` for EVERY interior point via barycentric interpolation. This rigorously covers the **continuous full parameter domain**. There is no appeal to a search over finitely many sampled x configurations. The accompanying pure-Python script reproduces every exact check; no GPU, giant Clifford matrix or Lean build is needed.

This proves the new bound J. The exact constant 21/20 is an admissible certified slack, not the sharp possible constant for f/A.

## 5. Back to the original gauge-invariant BFSS closed form

The prior audited fixed-color oscillator and genuine gauge-orbit averaging on the original smooth Spin9-isotype core give, for `0<a<1/2` and `lambda2>m+M=m+6`,

`a G+T >= 2sqrt(a)(m+9) int A(X)|Psi|²`.

The new full-F CAR estimate J gives `<Psi,B(X)Psi> >= -(84sqrt2/5)int A(X)|Psi|²`. Therefore,

`q[Psi]>= (1/2-a)G+[2sqrt(a)(m+9)-84sqrt2/5]int A(X)|Psi|²`.

Choose `m=8` and `a=49/100` so `1/2-a=1/100`, `2sqrt(a)(m+9)=119/5`, and

`BOX: q[Psi]>= (1/100)||grad Psi||²+[(119-84sqrt2)/5]int A(X)|Psi|²`

for every nonzero original Spin9 type with

`BOX: lambda2>14.`

Positivity is EXACT: `119²-2*84²=49>0`; coefficient `c=(119-84sqrt2)/5 ~0.04121215`. By the previously proved sharp universal spherical bound `A(X)>=|X|/2`, this also supplies the nonzero radial moment `(c/2)int |x||Psi|²`. With positive retained gradient, the **previous ordinary-mathematical closed-domain/Rellich argument** yields compact resolvent and trivial kernel on such high-spin isotypes. The application to the true original H is **conditional on the source Spin9 rotation action, branching, fixed-color oscillator and closed-form reductions** independently audited previously; it has not received end-to-end Lean certification.

**Method-relative optimality:** A rank-one configuration X has exact `A(X)=|X|/2` and `||B(X)||=8sqrt2|X|`, ratio **16sqrt2**. For m<=7 and any a<1/2, the available oscillator coefficient `2sqrt(a)(m+9)` is strictly less than or equal to `16sqrt2`; hence no strictly positive *uniform* A-coefficient is possible in this particular fixed-oscillator/full-F-pointwise-norm argument. Our m=8 reaches the smallest m achievable **within that mechanism**. It is not a general impossibility result for more refined physical-sector operators or other oscillator decompositions.

## 6. New actual gauge-invariant physical witnesses

The exact original 48-Majorana SU2-singlet/Spin9 character (32 distinct irreps, 35 copies, maximum fermionic mu2=3) was already proved in `BFSS_COMPLETE_SU2_SINGLET_FOCK_SPIN9_DECOMPOSITION_AND_K18_WITNESS_0_1_0.md`. The manuscript's original color-gauge-invariant, nonzero highest-weight bosonic polynomial P has weight (2,2,0,0).

The new strict condition `lambda2>14` gives `lambda2=mu2+2k`. No k<=5 works for ANY actual Fock highest mu, because `max mu2=3` gives `mu2+10<=13`. But **k=6** works with the actual original gauge-singlet type `mu=(3,3,1,0)`:

`BOX: mu=(3,3,1,0), P^6 degree 24, lambda=(15,15,1,0), dim Spin9(lambda)=4,065,730,200.`

Again radial disjoint bump functions produce infinitely many linearly independent smooth gauge-invariant vectors in one actual high-spin isotype. Subject to the preceding source confinement/H bridge, this yields infinitely many strictly positive physical eigenvalues. This is a **method-relative first admissible polynomial degree**, not the absolute smallest conceivable original BFSS wavefunction.

The smallest **Spin9 target dimension** from the complete 32-type Fock list at its first sufficient P-exponent instead occurs with original `mu=(2,2,0,0)`, k=7:

`BOX: P^7 degree 28, lambda=(16,16,0,0), dim Spin9(lambda)=1,514,323,161.`

The gauge- and Spin9-invariant original fermionic scalar `mu=0` with k=8 generates a highest vector in the **same** lambda=(16,16,0,0), with different bosonic degree; do not infer different spectral eigenvalues.

From the prior **conditional** full original superalgebra, `V_(15,15,1,0) tensor S16` has exactly SIX possible direct Q-partner types and `V_(16,16,0,0) tensor S16` has THREE. All allowed partners have nu2 >=14.5>14. Exact B4 Weyl dimension sums match `16 dim V_lambda`; no claim that each partner channel is actually populated.

## 7. What is established, and what is still open

**New established ordinary mathematics:** a joint B-versus-gauge-orbit-A comparison on ALL original bosonic configurations, proved with exact finite rational certificates and elementary convex analysis; genuine improvement of the source's high-spin coercivity to lambda2>14 subject to existing source-audit premises; an actual source physical k6 witness (minimum for this P method) and smaller k7 representation witness. The inner rational geometric certificate is especially amenable to an eventual small Lean proof because its tests are just rational cubic inequalities and 64 barycentric cells.

**Open or NOT inferred:** the conjectured sharp constant 16sqrt2 for B/A; any global spectral gap; external referee certification of source Hamiltonian; kernel-checked complete Lean spectral theorem; finite-dimensionality of the full positive-eigenspaces; equivalence of distinct BFSS normalizations; uniqueness of best polynomial construction among all possible gauge-invariant polynomials. Do not reinstate older numeric thresholds >16, >22, >37 or >56 as current strongest. Do not confuse `P^6`'s Spin9 representation dimension with positive-energy eigenspace multiplicity.

**Project Lead decision:** stop optimizing this one fixed uniform oscillator method now that m=8 is method-optimal. Return mathematical attention to the highest remaining source proof risks: the operator-domain and 16-supercharge/Spin9 source algebra bridges, or constructing an explicit CAR highest vector for the smaller new witness. This avoids numerical games or stale R4B/R4D CI. A next Lean stage, if needed, should target the tiny independent 64-cell rational checker rather than inlining millions of concrete Clifford terms.

**Governance:** FCP research branch only. Main and original mathematical source repos unmodified; draft PR #25 unmerged; no CI run.
