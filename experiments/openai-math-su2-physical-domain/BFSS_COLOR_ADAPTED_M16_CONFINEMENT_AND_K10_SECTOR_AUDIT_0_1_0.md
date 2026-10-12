# BFSS SU(2) — color-resolved fermionic bound, optimized kinetic split, and new high-spin construction threshold

**2026-10-12 | Project Lead mathematical discovery 0.1.0.** Disposition: `SOURCE_CAR_COLOR_SUM_BOUND_SHARP__TRANSVERSE_KINETIC_ALLOCATION_REPAIRED__M16_CUTOFF_LAMBDA2_GT22__OPTIMAL_K10_WITHIN_P_METHOD__SOURCE_SPECTRAL_CONCLUSIONS_CONDITIONAL`.

## 1. Why we redirected from a CAR-vector construction

The previous exact source character decomposition established 32 actual Spin9 highest types in F^SU2, including `mu=(2,2,0,0)`, and identified `k=18` as the smallest exponent for the **then-current** `lambda2>37` confinement inequality. The Project Lead returned to constructing an explicit CAR highest vector, but rechecking the **same original inequalities** exposed a more valuable improvement: a sharp color-sum fermionic estimate pairs naturally with all three transverse oscillator bounds, and the former one-quarter kinetic allocation need not be fixed.

This result is about **the original pinned Hamiltonian**, not an abstract alternative. Source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Its source `q=G/2+T+B` (G=integral |grad Psi|²; T=integral V|Psi|²) and actual original 48-Majorana `B=(i/2)f_abc x_i^a gamma_i[beta,delta]theta^b_beta theta^c_delta`, `f=sqrt2 epsilon`, are retained exactly. Standard `Spin9 downarrow Spin8` branching and smooth finite-isotypic-slice arguments are kept as the separately audited source-premise dependencies.

## 2. Retain original color resolution in the sharp fermionic estimate

For **distinct** original colors b,c, define source operator

`T_bc(v)=i sum_(beta,delta) gamma(v)[beta,delta] theta_beta^b theta_delta^c`.

The exact CAR/orthogonal-Clifford calculation from `BFSS_EXPLICIT_FERMION_NORM_AND_HIGH_SPIN_ENERGY_BOUND_AUDIT_0_1_0.md` shows `||T_bc(v)||<=8|v|`: gamma(v)/|v| orthogonally maps the 16 theta^c labels, leaving sixteen commuting Hermitian bilinears `i theta_beta^b eta_beta^c` each norm 1/2. In fact all 16 signs occur in the full original F, so **equality** holds `||T_bc(v)||=8|v|`.

The source's original antisymmetry yields

`B(x)=sqrt(2)[T_23(x^1)+T_31(x^2)+T_12(x^3)]`.

Therefore **without changing the original Hamiltonian or assuming x color vectors orthogonal**,

`BOX: ||B(x)||_op <= 8sqrt(2)(|x^1|+|x^2|+|x^3|).` (CS)

This is an optimal constant **relative to the color sum**: set x^2=x^3=0 and x^1!=0. The remaining single `T_23(x^1)` attains its norm 8|x^1| on full F. This is a different, complementary sharp inequality to the previously proved `||B(x)||<=16sqrt(2/3)|x|`. The previous bound is optimal for Euclidean |x| but is **not** the best input when the oscillator naturally controls the color sum. Do not treat constants 8sqrt2 and 16sqrt(2/3) as interchangeable against different denominators.

## 3. Reallocate transverse kinetic energy, keeping a STRICTLY positive gradient

Let `0<a<1/2`. On the **source smooth physical Spin9-isotype core** `C_lambda`, the source's fixed-color slice u=x^a !=0 has transverse variables z in a genuine 16-dimensional Euclidean subspace. The bosonic potential still satisfies `V>=|u|² |z|²`, and `a G` bounds the transverse kinetic energy `-a Delta_z`. The transverse oscillator on z has eigenvalues

`(2n+16)sqrt(a)|u| = 2sqrt(a)(n+8)|u|`, `n=0,1,2,...`.

The original `Spin9->Spin8` interlacing lemma gives `nu1>=lambda2`. The ORIGINAL 48-Majorana stabilizer weight bound `M<=6` gives `nu1<=n+6` for a K_u-type appearing in oscillator level n tensored with F. Thus if `lambda2>m+6`, levels n<=m are absent from the actual slice. The remaining oscillator energy satisfies for each fixed choice of color a

`a G+T >= 2sqrt(a)(m+9) int |x^a| |Psi(x)|² dx`.

Here `G=||grad Psi||²` and `T=int V|Psi|²`; the inequality is integrated over original x and remains valid on the smooth isotypic core. **For all three colors, average the three inequalities**, without tripling the potential or kinetic terms:

`a G+T >= [2sqrt(a)(m+9)/3] int [sum_(a=1)^3 |x^a|] |Psi|² dx.`

Consequently, the source exact form and (CS) imply the stronger, color-adapted family of estimates

`BOX: q[Psi]>= (1/2-a)G+[2sqrt(a)(m+9)/3-8sqrt2] int(sum_a|x^a|)|Psi|².` (NEW)

The retained `1/2-a>0` gradient is essential for local Rellich compactness. This is the same **source-defined q** as in the original manuscript; no momentum-dependent or singular operator substitutions were made.

## 4. Explicit rational allocation and optimal integer m **within this comparison**

Take **a=12/25**, so `1/2-a=1/50>0`. For m=16, the radial coefficient is

`c=(2sqrt(12/25)/3)*25-8sqrt2 = 20sqrt3/3-8sqrt2`.

Its positivity is **exact**:

`(20sqrt3/3)^2=400/3 >128=(8sqrt2)^2`.

Numerically `c=0.233296884807755...`. The core estimate becomes

`BOX: q[Psi] >= (1/50)||grad Psi||² + c int(sum_a |x^a|)|Psi(x)|² dx`,

for every source-defined nonzero Spin9 isotype with

`BOX: lambda2>m+M=16+6=22`.

Since `sum_a|x^a|>=|x|`, the same closed-domain closure argument as in `BFSS_HIGH_SPIN_CLOSED_DOMAIN_COMPACTNESS_AND_SPECTRAL_BOUNDARY_AUDIT_0_1_0.md` transports the estimate to the **actual restricted closed form q_lambda**, assuming its group reduction and smooth-core arguments. The retained gradient plus radial moment yield compact inclusion of form domain into the true isotypic L² Hilbert space, compact resolvent and no zero eigenvector in any nonzero sector with lambda2>22.

**A limited optimality statement:** For every `a<1/2` and m<=15, the maximum possible oscillator-sum coefficient is `2sqrt(1/2)(m+9)/3 <= 2sqrt(1/2)*24/3=8sqrt2`. The color-resolved B estimate cannot then yield a STRICT positive radial coefficient while retaining strictly positive gradient. Thus **m=16 is minimal within this particular uniform color-sum/single-kinetic-allocation comparison**. This does NOT prove m=16 is minimal for more sophisticated source confinement analyses, gauge-restricted B spectra, or geometry-adaptive allocations.

A new conditional energy floor also follows: the d=27 Hardy inequality gives `G>=625/4 int r^-2 |Psi|²` and `r=|x|`; with epsilon=1/50 and `sum|x^a|>=r`,

`inf spec H_lambda >= 3[( (625/4)*(1/50)*c² )/4]^(1/3) = 3[(25/8)*c²/4]^(1/3)`

for lambda2>22, in the manuscript units. At m=16 this is approximately **1.0471**, a bound for these high-spin sectors only, **not** for all H. A smaller quantitative energy floor than the older m=31 case is unsurprising because the new inequality includes more rotation sectors.

## 5. Exact physical-sector witnesses — earlier k18 bound superseded

The exact decomposition `BFSS_COMPLETE_SU2_SINGLET_FOCK_SPIN9_DECOMPOSITION_AND_K18_WITNESS_0_1_0.md` remains valid, including its SU2 x Spin9 character, 32 actual fermionic highest types, 35 copies and `max_mu mu2=3`. But its `k=18` optimality **only held for the obsolete >37 numerical cutoff**.

For the ORIGINAL manuscript polynomial P with highest weight (2,2,0,0), any actual gauge-invariant Fock highest vector of type mu gives a highest physical state with

`lambda=mu+(2k,2k,0,0)`, `lambda2=mu2+2k`.

Because `max_mu mu2=3`, no exponent **k<=9** can satisfy strict `lambda2>22`: `3+18=21<=22`. But k=10 **works** using the actual original `mu=(3,3,1,0)` Fock irrep (present once in the exact decomposition):

`BOX: mu=(3,3,1,0), k=10, lambda=(23,23,1,0), lambda2=23>22.`

This produces infinitely many linearly independent smooth gauge-invariant compactly supported radial bumps of degree-40 source bosonic polynomial, in a single actual physical Spin9 isotype. It is a **method-relative minimum polynomial exponent k=10**, not a universal best high-spin solution.

Its B4 Weyl dimension is **237,658,409,820**, and its six permitted one-step source supercharge partner types all have second weight at least 22.5>22. Minuscule Spin9 tensor character dimension equality verified exactly; do not claim every possible partner channel is occupied.

A separate practical choice minimizes the **dimension of the physical rotation irrep** among the 32 choices at their individual least admissible k:

`BOX: mu=(2,2,0,0), k=11, lambda=(24,24,0,0)`, `dim V_lambda=72,903,575,745`.

This needs degree-44 P^11, but the target Spin9 irrep is over **99 times smaller** than the formerly favored `(38,38,0,0)` irrep. The actual gauge- and Spin9-invariant fermion scalar `mu=(0,0,0,0)` with k=12 reaches the **same** lambda=(24,24,0,0); do not automatically interpret these as two independent eigenspaces or distinct energy sequences.

For comparison:
- Former `lambda=(38,38,0,0),k=18`: dim 7,252,446,280,716, degree 72;
- Minimal-exponent `lambda=(23,23,1,0),k=10`: dim 237,658,409,820, degree 40;
- Smallest-target `lambda=(24,24,0,0),k=11`: dim 72,903,575,745, degree 44.

These are representation dimensions, **not** spectral multiplicities or costs of a finite matrix diagonalization.

## 6. Mathematical test, negative knowledge, next decision

Companion standard-library `BFSS_COLOR_ADAPTED_M16_CONFINEMENT_AND_K10_SECTOR_CHECK_0_1_0.py` exact-checks positivity using rational square comparison `400/3>128`, verifies epsilon=1/50, shows the a<1/2 / m<=15 boundary, recomputes B4 Weyl dimensions for all original 32 source Fock highest types, and finds optimal k and best dimension. It also checks six allowed one-step Spin9 partner types for the k10 witness, all with second coordinate >22, and the character-dimension identity `sum dim(V_nu)=16 dim(V_lambda)`.

**Major scientific lesson:** The previous Euclidean-|x| sharp constant was correct but **not the right sharp constant for the oscillator observable**. Retaining geometry throughout the inequality was significantly more powerful than further optimizing a global norm. Likewise retaining just a small positive fraction of gradient is enough for Rellich compactness: fixing a=1/4 was a convenient choice, not mathematically necessary. This is a substantive new proof insight and a strong candidate for later efficient source Lean formalization.

**Qualification:** Full original source BFSS positive eigenvalues remain conditional on the earlier original source Spin9/Gauss group invariance, exact form identity and closed-domain slice argument until independent specialist review / end-to-end Lean. This is an improved source-faithful *ordinary mathematical argument*, not compiler-qualified and not a proof of a global gap.

**Next Project Lead research decision:** Preserve the improved coefficient/threshold and update older audits to mark their claimed 'minimum k18' as **superseded under the improved proof method**, without deleting evidence. Return to (i) an explicit source CAR vector in a suitable physical Fock highest type, or (ii) seek further strictly source-grounded geometry-sensitive confinement improvements. Do not restart the monolithic 65-second timeout Lean compilation without a new bounded proof design.

**Governance:** FCP research branch only. Main and the upstream etblink/math, openai/math source repos unchanged; draft PR25 remains unmerged. No CI requested.
