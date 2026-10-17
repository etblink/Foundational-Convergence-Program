# BFSS original 48-Majorana constants and quantitative high-spin bound: successor adjudication 0.1.0

**Date:** 2026-10-12. **Disposition:** `SOURCE_CAR_NORM_BOUND_DERIVED__SPINOR_WEIGHT_BOUND_DERIVED__CONDITIONAL_SECTOR_ENERGY_BOUND_DERIVED__FULL_SPECTRAL_THEOREM_UNCERTIFIED`. No new Lean gate, no manuscript modification, no PR merge.

## Provenance and scientific motivation

The owner provided a report from an incognito GPT review, describing a source-algebra calculation and suggesting `C <= 8 sqrt(6)`, `M <= 6`, `m=50`, `lambda_2>56`, and a `lambda_2^(2/3)` spectral lower bound. **External-model claims are hypotheses for independent review, not accepted evidence merely because the reviewer asserted them.** This memo checks the stated constants from the original pinned source and distinguishes inherited spectral hypotheses from new consequences.

Primary mathematical source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Essential definitions: `{theta_beta^b,theta_delta^c}=delta_beta_delta delta_bc`, `f_abc=sqrt(2)epsilon_abc`, `B(x)=(i/2)f_abc x_i^a gamma_i[beta,delta] theta_beta^b theta_delta^c`, and the source `Spin(9)` spinor label action. Exact use: `lem:form`, `lem:rotations`, `lem:oscillator`, `prop:confinement`. Prior checks live in `BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md` and `BFSS_FORM_AND_HIGH_WEIGHT_SECTORS_SOURCE_AUDIT_0_1_0.md` in this research directory.

## 1. Independent derivation of the conservative fermionic norm C

For distinct colors b,c, define the original-source operator

`T_bc(v) = i sum_(beta,delta) gamma(v)[beta,delta] theta_beta^b theta_delta^c`, with `gamma(v)=sum_i v_i gamma_i`.

The **real symmetric** Clifford matrices satisfy `gamma(v)^T gamma(v)=|v|^2 I_16`. For `v != 0`, set `eta_beta^c = |v|^-1 sum_delta gamma(v)[beta,delta] theta_delta^c`. This is an orthogonal change among the 16 original color-c Majoranas, so the eta family satisfies the same CAR and anticommutes with all color-b theta. For each beta,

`Z_beta=i theta_beta^b eta_beta^c` is Hermitian, `Z_beta^2=1/4 I`, hence `||Z_beta||=1/2`. The distinct `Z_beta` commute (they are even bilinears in disjoint CAR generators), although the norm upper bound needs only the triangle inequality. Therefore

`||T_bc(v)|| = |v| ||sum_(beta=1)^16 Z_beta|| <= 16 |v|/2 = 8|v|`.

With the original `f_abc=sqrt(2)epsilon_abc` and symmetric `gamma(v)`, swapping the two distinct color indices reverses both epsilon and the CAR word, so the two halves of B add. In colors (1,2,3), exactly

`B(x) = sqrt(2) [T_23(x^1) + T_31(x^2) + T_12(x^3)]`.

Consequently

`||B(x)|| <= 8 sqrt(2) (|x^1|+|x^2|+|x^3|) <= 8 sqrt(6)|x|`.

**Qualified statement:** `C=8sqrt(6)` is an explicit admissible upper-bound constant, **not** the proved optimal norm constant. It applies to the actual 48 original Majoranas with `{theta,theta}=delta`; the `1/2` in each bilinear is essential. This is an ordinary finite-CAR derivation; the companion script does not attempt to materialize the full `2^24` Fock matrix.

## 2. Independent 48-label rotation weight bound M

For a spatial two-plane `(i,j)`, the original 16-real-spinor label action is `S(t)=exp(-t gamma_i gamma_j/2)`. Clifford relations give `J=gamma_i gamma_j`, `J^T=-J` and `J^2=-I_16`. It decomposes orthogonally into **eight** real rotation two-planes of angular speed `1/2` per spatial angle t. Three color copies give **24** label rotation planes. The normalized Clifford spin lift `Gamma=sqrt(2)theta` contributes a Fock-spin weight of magnitude `1/2` per label-plane rotation angle. Since each label-plane angle is `t/2`, each contributes weight magnitude `1/4` per spatial angle t. Hence the first weight coordinate of every constituent of the original finite Fock space restricted to a fixed `Spin(8)` is bounded by

`M <= (3 colors) * (8 label planes/color) * (1/4 weight/plane) = 6`.

The companion check reconstructs the repository-registered nine `16x16` Clifford matrices and confirms `J^T=-J`, `J^2=-I`, `tr J=0` for **all 36 spatial rotation planes** in exact integer arithmetic. The spin-lift weight factor `1/2` follows analytically from the normalized CAR/spin representation and is not independently checked by a `2^24`-dimensional matrix run. Conjugate stabilizers `K_u` have the same bound. This is a safe upper bound, even if gauge invariance later yields a sharper value.

## 3. Explicit confinement threshold, inherited theorem hypotheses

The pinned manuscript's `prop:confinement` states, **subject to the source's global rotation/isotype, branching, slice and closed-domain arguments**, that whenever

`c_m = (m+9)/3-C > 0`, with integer `m>=0`, and `lambda_2>m+M`,

one has `q[Psi] >= (1/4)||grad Psi||^2 + c_m integral |x| ||Psi(x)||^2 dx` on its restricted closed form domain.

Choosing our justified admissible bounds `C=8sqrt(6)`, `M=6`, the smallest integer m making the displayed sufficient coefficient positive is `m=50`: exactly `(59/3)^2 - (8sqrt(6))^2=25/9>0`, so

`c_50=59/3 - 8sqrt(6) = 0.07074872440124189... >0`.

Thus **all nonzero physically realized rotation isotypes with `lambda_2>56`** satisfy that proposition's numerical hypotheses if its global-source and domain arguments hold. The threshold is sufficient, not necessary or sharp. This does NOT imply the full Hamiltonian H has a spectral gap; these high-spin sectors may have eigenvalues embedded in the larger spectrum.

## 4. Conditional quantitative energy bound: make kappa fully explicit with Hardy

Let r=|x| in the **27-dimensional** original bosonic space. The standard (componentwise, vector-valued) Hardy inequality for H^1 states gives

`||grad Psi||^2 >= ((27-2)^2/4) integral r^-2 ||Psi(x)||^2 dx = (625/4) integral r^-2 ||Psi||^2`.

Therefore the source's confinement inequality implies

`q[Psi] >= integral [625/(16 r^2) + c_m r] ||Psi(x)||^2 dx`.

For any r>0, a>0 and c>0, the pointwise minimization

`a/r^2 + cr >= 3(a c^2/4)^(1/3)`

is exact, with equality at `r^3=2a/c`. Taking `a=625/16` gives

`q[Psi] >= K_H c_m^(2/3) ||Psi||^2`, where
`K_H=3(625/64)^(1/3) = (15/4) * 5^(1/3) = 6.412409800037613...`.

**Conditional isotypic spectral corollary:**

`inf spec(H_lambda) >= K_H [ (m+9)/3 - 8sqrt(6) ]^(2/3)`
for every nonzero lambda-isotype with integer `m>=50` and `lambda_2>m+6`, provided the pinned `prop:confinement` and its source-to-closed-form bridge hold.

With m=50 this explicit lower bound is `1.0968999376610176...` in the manuscript's energy units. It is not a claimed estimate for the bottom of the *full* BFSS Hamiltonian.

For arbitrarily high realized types choose `m(lambda)=ceil(lambda_2-6)-1`. It obeys `lambda_2>m+6` and has `m(lambda)=lambda_2+O(1)`; for all `lambda_2>56`, it is at least 50. The resulting **conditional** asymptotic lower bound is `inf spec(H_lambda) >= (K_H/3^(2/3) + o(1)) lambda_2^(2/3)`. No assertion of novelty or sharpness is made; the manuscript only needs qualitative confinement and its full spectral theorem remains unverified end-to-end.

## 5. Acceptance boundary and next research priority

**Accepted at ordinary source-algebra level:** admissible `C=8sqrt6`, admissible `M=6`, valid sufficient numerical threshold `lambda_2>56`, the Hardy consequence **conditional** on the source's coercive estimate. Companion Python gives exact gamma-plane and arithmetic checks but does not establish the global 48-Majorana unitary representation or the closed-domain form theorem.

**Not promoted:** the incognito review's claims that the full theorem is proven, that C is optimal, that an explicit energy gap exists in all sectors, or that the quantitative result is new relative to the literature. Earlier independent finite source checks and the highest-weight polynomial argument remain scoped to their existing audit files.

**Project Lead decision:** preserve this bounded quantitative byproduct; return primary scientific attention to the exact `Spin(9)` combined spatial/Fock covariance of **all sixteen original Q_alpha on the physical core**, followed by closed-form reduction. No resumed R4B/R4D oversized Lean assembly without a new genuinely discriminating compression path, and no unnecessary 65-second CI expirations. The purpose is truth in the original source, not a new theorem-shaped headline.

Repository boundary: research branch only; leave FCP `main`, `etblink/math`, `openai/math`, draft PR #25 merge status unchanged.
