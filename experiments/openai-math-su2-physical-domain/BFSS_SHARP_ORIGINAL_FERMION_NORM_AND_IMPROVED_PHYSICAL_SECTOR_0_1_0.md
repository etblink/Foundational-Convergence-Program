# BFSS SU(2) — sharp original fermionic linear operator norm, exact constant and improved confinement

**2026-10-12 | Mathematical research milestone | SOURCE_CAR_EXACT_OPTIMAL_CONSTANT_PROOF / CONDITIONAL_SPECTRAL_THRESHOLD / NO_LEAN_SPECTRAL_CERTIFICATE.**

## Why this was chosen

The owner instructed the Project Lead not to let specialist-review preparation displace the mathematical discovery program. We therefore returned directly to a source-level open quantitative question. The former FCP bound `||B(x)||<=8sqrt(6)|x|` was conservative. The incognito independent report had found the triad configuration numerically at ~13.063945, but had **not proved it was maximal**. We independently derive the *optimal constant* for the original 48-Majorana operator and propagate it into the original confinement and highest-weight sector construction. This is new proof content, not another favorable-review tally.

**Pinned primary source:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, `eq:supercharges`, `eq:potential` and `prop:confinement`. The source has real symmetric 16x16 gamma matrices obeying `{gamma_i,gamma_j}=2delta_ij`, and 48 Hermitian Majoranas `{theta_A,theta_B}=delta_AB` in the full irreducible complex module F.

## Theorem: exact operator norm of the original fermionic B

For `x=(x^1,x^2,x^3) in (R^9)^3`, let

`B(x)=(i/2) f_abc x_i^a gamma_i[beta,delta] theta_beta^b theta_delta^c`,
`f_abc=sqrt(2)epsilon_abc`, as in the original source. Then on the **full original F**,

`sup_(x != 0) ||B(x)||_op / |x| = 16 sqrt(2/3) = 13.0639452948436...`.

Equality is attained whenever `x^1,x^2,x^3` are pairwise orthogonal and each has norm `|x|/sqrt(3)`. This is the sharp **full-F pointwise bound**; it makes no assertion of being optimal after further restriction to gauge-invariant wavefunctions.

### Proof 1 — 48-label CAR normal form

Let `Gamma_A=sqrt(2)theta_A`; `{Gamma_A,Gamma_B}=2delta_AB`. Group the colors in cyclic order `(a,b,c)=(1,2,3),(2,3,1),(3,1,2)`. Symmetry of each `gamma(v)` and antisymmetry in colors give

`B(x)=i sqrt(2) [theta^2 gamma(x^1) theta^3 + theta^3 gamma(x^2) theta^1 + theta^1 gamma(x^3) theta^2]`.

Define a real skew `48x48` matrix K(x), organized in three 16-label color blocks, by `K_23=sqrt(2)gamma(x^1)`, `K_31=sqrt(2)gamma(x^2)`, `K_12=sqrt(2)gamma(x^3)`, and `K_cb=-K_bc^T`. Then

`B(x)=(i/2) sum_(A<B) K_AB(x) Gamma_A Gamma_B`.

An orthogonal normal form of K consists of 24 real skew two-planes with positive singular frequencies `s_j>=0` (allowing zeros). The corresponding even Clifford action is a sum of commuting Hermitian involutions:

`B= (1/2) sum_(j=1)^24 s_j (i Gamma_(2j-1) Gamma_(2j))`.

Each involution has eigenvalues ±1, and the irreducible complex Cl(48) Fock module realizes all sign choices. Therefore **exactly**

`||B(x)||_op=(1/2)sum_j s_j=(1/4)||K(x)||_*= (1/4)Tr sqrt(K(x)^T K(x))`.

There is no need to instantiate the 2^24-dimensional Fock matrix. This equality is the crucial reason the problem reduces to 48x48 linear algebra.

### Proof 2 — reduce arbitrary nine-dimensional configurations to three singular values

The source `Spin(9)` action transforms gamma(v) by real orthogonal spinor conjugation, and the adjoint gauge `SO(3)` rotates the color blocks. Consequently the singular values of K(x) depend only on the three nonnegative singular values `t_1,t_2,t_3` of the real 9x3 bosonic matrix, with `sum t_a^2=|x|^2`. Both spatial and color coordinate changes can be orientation-preserving: the unused six spatial directions absorb determinant signs. Therefore we may take `x^a=t_a e_a`, a=1,2,3.

Write `gamma_a=gamma(e_a)` for these three orthogonal Clifford generators and `Omega=gamma_1 gamma_2 gamma_3`. Then `Omega^T=-Omega`, `Omega^2=-I_16`; over C it has eigenvalues +i and -i, each eightfold. Conjugate K by the real orthogonal block diagonal matrix `U=diag(I_16,gamma_3,gamma_2)`. Direct Clifford multiplication gives

`U^T K U = sqrt(2) [[0, t_3 I, -t_2 I],[-t_3 I,0,t_1 Omega],[t_2 I,t_1 Omega,0]]`.

On the `Omega=+i` and `Omega=-i` eigenspaces, these blocks become two 3x3 skew-Hermitian matrices; after multiplication by i and diagonal unitary phase changes, their Hermitian spectra are respectively the eigenvalues of `A(t)` and of `-A(t)`, each with multiplicity eight, where

`A(t)=sqrt(2)*[[0,t_3,t_2],[t_3,0,t_1],[t_2,t_1,0]]`.

It follows that `||K||_* = 16 sum_(j=1)^3 |eig_j(A)|`, so `||B||=4 sum|eig(A)|`. The real symmetric A has trace zero and strictly nonnegative off-diagonal entries; its eigenvalues consist of one positive and two nonpositive values (allowing a zero in degenerate cases), because `det A=2(sqrt(2))^3 t_1t_2t_3>=0`. Hence `sum|eig A|=2 lambda_max(A)` and

`||B(x)||=8 lambda_max(A(t))`.

This is an **exact formula for every x**, not merely an inequality or special triad.

### Proof 3 — optimize analytically: equality attainable

For a real unit vector y in R^3, the Rayleigh quotient is

`y^T A(t)y=2sqrt(2)(t_1 y_2 y_3+t_2 y_1 y_3+t_3 y_1 y_2)`.

By Cauchy–Schwarz and `sum_i y_i^2=1`,

`y^T A y <= 2sqrt(2)|t| sqrt(y_1^2 y_2^2+y_1^2 y_3^2+y_2^2 y_3^2)`
`<=2sqrt(2/3)|t|`,

since the sum of the three pairwise products is `(1-sum_i y_i^4)/2<=1/3`. Thus `lambda_max(A)<=2sqrt(2/3)|x|`, and the exact Fock formula gives

`||B(x)||<=16sqrt(2/3)|x|`.

Take `x^1=e_1/sqrt(3)`, `x^2=e_2/sqrt(3)`, `x^3=e_3/sqrt(3)`, so `|x|=1`; then `t_1=t_2=t_3=1/sqrt(3)`, and `y=(1,1,1)/sqrt(3)` saturates both inequalities. Hence the constant is **sharp**.

## Numerical regression and independent sanity checks

The companion script `BFSS_SHARP_FERMION_LINEAR_NORM_CHECK_0_1_0.py` reconstructs the source-registered exact real 16x16 gamma-word system, verifies the 81 Clifford relations, constructs the original 48x48 skew coupling K directly, and compares `Tr|K|/4` with `8 lambda_max(A(t))` for five canonical diagonal configurations and 30 seeded arbitrary non-diagonal `x` values. The canonical test additionally checks **all 48 Hermitian eigenvalues** of `iK` against the eightfold ± spectrum of A(t). The orthogonal equal-norm triad saturates the claimed bound within machine precision. The script is a finite computational regression; **the general exact bound follows from the preceding symbolic Clifford/CAR proof**.

The result coincides with the earlier incognito review's *sampled* peak and the prior reviewer script's triad number, but unlike the previous inference it rigorously proves an upper bound for **every** original-source bosonic x. Do not equate numerical agreement with novelty or independent external refereeing.

## Consequences for the *source-defined* confinement theorem

Earlier source-derived `M<=6` still applies to the original 48-Majorana Spin(8) weight set. The manuscript's high-isotype coefficient is

`c_m=(m+9)/3-C_B`.

With our **sharp** `C_B=16sqrt(2/3)`, the smallest integer m with `c_m>0` in the manuscript's fixed one-quarter kinetic splitting is **m=31**, since

`c_30=13-16sqrt(2/3)<0`; `c_31=40/3-16sqrt(2/3)=0.2693880384897...>0`.

The sufficient condition `lambda_2>m+M` consequently improves to **`lambda_2>37`**. Because the fermionic source invariant highest weight `mu` has `mu_2>=0`, our previously established gauge-invariant polynomial `P` produces a uniform sector witness already for **k=19**:

`lambda=mu+(38,38,0,0)`, `lambda_2=mu_2+38>=38>37`, with infinitely many disjoint radial bumps in one realized sector.

These are sufficient, not necessary, thresholds: m=31 is optimal *for this specific stated numerical inequality with sharp C and M=6*, but it need not be the smallest m reachable by a different confinement inequality or sharper physical-sector weight estimate. Nor is k=19 claimed the minimum exponent for the particular unknown mu.

The earlier valid Hardy inequality consequence on that sector now reads

`inf sigma(H_lambda) >= (15/4)5^(1/3) * (40/3-16sqrt(2/3))^(2/3) = 2.6746901265451...`,

**conditional on the manuscript's actual Spin9 invariance, branching, and closed-form confinement proof**. This is a bound on *high-rotation sector eigenvalues*, not on the bottom of the full BFSS Hamiltonian. The headline existence theorem is not formally certified by this arithmetic sharpening.

## Further scientific decisions and scope boundary

This exact sharp constant is a **new source-level mathematical finding**, rather than a restatement of the finite Clifford checks or the qualitative source manuscript. It materially reduces the conservative sector threshold, explains the previous numerical triad observation, and replaces the prior unproved assumption that the observed norm maximum might be globally maximal.

Do not allow external-review preparation to become an indefinite detour. We now have a concrete new mathematical milestone worthy of subsequent independent scrutiny. Return next to **testing whether the source-defined form realization is equivalent to the standard physically intended BFSS Hamiltonian**; if this is not well-defined absent a self-adjoint domain convention, state precisely which comparison theorem/hypothesis is required. Independently consider whether the source's sector confinement inequalities can be further sharpened *without* sacrificing their exact physical domain (e.g., by a better kinetic allocation or gauge-compatible restriction).

**Epistemic status:** Full-F CAR/Clifford algebra theorem [ORDINARY MATHEMATICS, SOURCE-DERIVED], exact matrix reduction [ORDINARY MATHEMATICS], finite tests [COMPUTATIONAL], sector threshold [CONDITIONAL ON PREPRINT'S CONFINEMENT], physical equivalence [OPEN], Lean kernel certification of complete theorem [OPEN]. No external publication, paper-source edit, main merge, or broad CI gate is authorized or performed.

**Repository boundary:** FCP research branch only; do not modify `etblink/math`, `openai/math`, or FCP main; draft PR #25 stays unmerged. Retain all previously accepted math modules and compiler negative knowledge.
