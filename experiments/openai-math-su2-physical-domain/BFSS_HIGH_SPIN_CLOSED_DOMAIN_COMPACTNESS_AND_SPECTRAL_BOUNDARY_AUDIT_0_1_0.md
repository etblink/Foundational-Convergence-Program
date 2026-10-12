# BFSS S3L — closed high-spin confinement, weighted form-domain identification, compact resolvent

**Date:** 2026-10-12. **Project Lead audit:** `CONFINEMENT_CLOSURE_DISCHARGED_IN_ORDINARY_ANALYSIS_CONDITIONAL_ON_SOURCE_SYMMETRY_AND_BRANCHING__HIGH_SPIN_WEIGHTED_FORM_DOMAIN_IDENTIFIED__NO_NEW_LEAN_CERTIFICATE`.

## Primary-source authority and verdict

Pinned original: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, specifically `lem:slice` (approx. lines 525–552), `lem:oscillator` (approx. 569–613), `prop:confinement` (approx. 615–685), and `lem:rotations` (approx. 335–410).

This is an independent adversarial reconstruction of the **actual high-isotype closed form** defined as the closure of the source 16-supercharge sum of squares, not a proof about a generic altered Hamiltonian. Prior research audits establish source-exact ordinary-mathematical covariance and finite tests, but do not constitute an accepted Lean kernel proof of the large original full-source identity. This audit neither re-runs Lean nor changes the source repositories.

**Falsification targets:** illegitimate evaluation of L2 functions on codimension-11 slices; hidden derivatives of the moving frame; an incorrect oscillator dimension; failure to pass to the physical closed domain; failure to control V separately; lack of compactness for radial escape; false exclusion of zero eigenvectors. **Outcome:** no counterexample or unaccounted analytic premise found once the stated global symmetry and branching bounds are supplied. The closure argument yields a stronger explicit domain identification than previously recorded.

## 1. The load-bearing source setup

Let `Hphys=[L2(R^27;F)]^SU(2)`, `C=[C_c^infty(R^27;F)]^SU(2)`, `q[Psi]=(1/16)sum_(alpha=1)^16 ||Q_alpha Psi||^2`, and H the associated nonnegative self-adjoint operator after closing q. Assume the genuine source `Spin(9)` action `D_g` with `D_g C=C` and exact 16-spinor covariance, as analyzed in `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`. Thus each isotypic projector `P_lambda` preserves C, the physical closed form, and the form domain; `C_lambda=P_lambda C=C cap Hphys_lambda` is a form core of the restricted `q_lambda`.

Use the original-source identity on C:

`q[Psi] = (1/2) ||grad Psi||^2 + int V|Psi|^2 + int <Psi,B(x)Psi>`,

where `V(x)=sum_(a<b)|x^a wedge x^b|^2` and `||B(x)||<=C_B |x|` (`C_B=8 sqrt(6)` is an explicit admissible bound recorded in the predecessor quantitative audit). Keep `C_B` distinct from the name C of the vector-core space.

## 2. Fixed-slice equivariance and low-level exclusion: why the apparent L2 objection fails

For any `Psi in C_lambda`, the span `W_Psi=span{D_g Psi:g in Spin(9)}` is **finite dimensional**, even when the multiplicity of lambda in Hphys is infinite: in `Hphys_lambda=V_lambda hat tensor M_lambda`, a single Psi involves at most `dim(V_lambda)` multiplicity vectors. The orbit span therefore has dimension at most `dim(V_lambda)^2`. All its elements have *continuous smooth compact support* representatives, unique among their L2 classes. Restriction to a fixed slice is legitimate on this finite space, never on arbitrary L2 classes.

For each fixed color a, `u=x^a!=0`, longitudinal coordinates `s_b`, and two transverse `z_b in u^perp`, the map `E_(u,s):W_Psi -> C_c^infty((u^perp)^2;F)` intertwines the stabilizer `K_u=Spin(8)` representation. Under the general `Spin(9) downarrow Spin(8)` branching rule, every constituent in the restricted lambda has `nu_1>=lambda_2`. Consequently **each** fiber E(Psi) has only these K_u types. This hinges on standard branching, separately investigated in previous source and exact-dimensional tests; it is not proved afresh from Weyl characters here.

For `r=|u|>0`, the fiber operator `h_r=-(1/4)Delta_z +r^2 |z|^2` acts in 16 transverse dimensions, with eigenvalues `r(n+8)` (`n=0,1,2,...`). The oscillator n-eigenspace is Gaussian times polynomials of degree at most n and carries K_u weights with first coordinate <=n before tensoring with F. If M bounds the first K_u weight coordinate in F (the source 48-Majorana label construction admits `M<=6` in the preceding audit), its tensor product contains only `nu_1<=n+M`. For `lambda_2>m+M`, no n<=m can occur in the fiber. Therefore, for every nonzero u and every s,

`(1/4) int |grad_z Phi|^2 dz + r^2 int |z|^2 |Phi|^2 dz >= (m+9)r int |Phi|^2 dz`.

This is a spectral projection statement, not an estimate for unrestricted scalar Gaussian ground states.

## 3. Integration across moving escape directions: exact Jacobian and gradient accounting

At **fixed u**, the change from the other two color vectors `(x^b)_(b!=a)` to `(s_b,z_b)_(b!=a)` is an orthogonal transformation in `R^18` (two nine-vectors). It has absolute Jacobian 1. Integrating over u adds the unchanged nine-dimensional variable: the full change is triangular in u, with total absolute Jacobian 1 wherever `u!=0`. Global continuously varying frames on S^8 are unnecessary; choose measurable local orthonormal frames and use Fubini/partition of unity. `u=0` is Lebesgue null in R^9.

For transverse derivatives, **hold u fixed**. Since each `z_b` is an orthogonal projection of the original variable `x^b`, `|grad_z Phi|^2 <= |grad_x Psi|^2` pointwise. No derivative of the rotation/frame as a function of u appears. Also `V(x)>=r^2 |z|^2` because the terms `|u wedge x^b|^2=r^2|z_b|^2` for b!=a occur among its nonnegative wedge terms. Thus integration of the fiber estimate gives the **one-color original-space inequality**

`(1/4)||grad Psi||^2 + int V|Psi|^2 >= (m+9)int |x^a| |Psi|^2`.

The *same* left side works for all three color choices. Averaging yields `(1/4)G+V >= ((m+9)/3)int(sum_a|x^a|)|Psi|^2`.

Combine with the source form identity, splitting its `(1/2)G` into retained `(1/4)G` and oscillator `(1/4)G`, and `<Psi,B Psi>>=-C_B |x||Psi|^2`. Since `sum_a|x^a|>=|x|`, on C_lambda:

`q[Psi] >= (1/4)||grad Psi||^2 + c_m int |x| |Psi|^2`,
where `c_m=(m+9)/3-C_B>0`.

Using admissible `C_B=8sqrt(6)`, `M=6`, a sufficient explicit choice is `m=50`, `lambda_2>56`. These values are not claimed sharp.

## 4. First closed-domain step: no hidden regularity assumption

Take any `Psi in Dom(q_lambda)` and `Psi_n in C_lambda` with `||Psi_n-Psi||_2^2+q[Psi_n-Psi]->0`. By applying the core coercivity estimate to **differences**, we get

`||grad(Psi_n-Psi_k)||^2 <=4 q[Psi_n-Psi_k]`, and
`|| |x|^(1/2)(Psi_n-Psi_k)||^2 <=q[Psi_n-Psi_k]/c_m`.

The distributional gradient `grad:H1->L2` and multiplication `M_(|x|^(1/2))` are closed on L2. Since Psi_n is L2-Cauchy, both sequences converge to the genuine weak gradient and weighted product of Psi. Passing to the limit proves the original **coercive inequality on the full closed restricted form domain**; this neither evaluates Psi on fixed slices nor assumes a priori that Psi belongs to H1.

## 5. Stronger new statement: exact weighted Sobolev form domain

Let `r=|x|` and introduce

`W_lambda = Hphys_lambda cap H1(R^27;F) cap Dom(V^(1/2)) cap Dom(r^(1/2))`,

with squared graph norm

`N(Psi)^2 = ||Psi||_2^2 + ||grad Psi||_2^2 + ||V^(1/2)Psi||_2^2 + ||r^(1/2)Psi||_2^2`.

**Claim (ordinary functional analysis, given previous source hypotheses):**

`Dom(q_lambda)=W_lambda` as sets, and `||Psi||_q^2=||Psi||_2^2+q[Psi]` is equivalent to `N(Psi)^2`.

**Proof, both norm inequalities, before taking closures.** For Psi in C_lambda write `G=||grad Psi||^2`, `T=int V|Psi|^2`, `R=int r|Psi|^2`. We already proved

`G<=4q[Psi]`; `R<=q[Psi]/c_m`.

Since `q=(1/2)G+T+b` and `|b|<=C_B R`, we also have the **previously unrecorded potential control**

`T=q-(1/2)G-b <=q+C_B R <=(1+C_B/c_m)q`.

Therefore

`N(Psi)^2 <=||Psi||^2+[5+(C_B+1)/c_m]q[Psi]`.

Conversely, from the same source form equality and `|b|<=C_B R`,

`||Psi||^2+q[Psi] <= max(1,C_B) N(Psi)^2`

(our explicit `C_B>1`). Thus N and q graph norms are equivalent on C_lambda.

**Proof that C_lambda is dense in the entire proposed W_lambda (not just that the q closure is contained in it).** W_lambda is complete since grad, V^(1/2) and r^(1/2) are closed multiplication/differentiation operators. For any Psi in W_lambda: (i) multiply by radial cutoffs converging to 1, yielding convergence in H1 and both weighted L2 norms (the cutoff gradient error vanishes); (ii) approximate compactly supported cutoff functions in H1 by ordinary mollification, which also converges in both weighted L2 norms because V and r are bounded on a common compact support; (iii) average over color SU(2) and project to the original `Spin(9)` lambda-isotype. These group actions are unitary in each component of N because grad, V and r are invariant; their projections are N-bounded and act as the identity on the desired Psi. For smooth compact input they preserve smoothness and a common compact radial support. The resulting sequence lies in `C_lambda` and converges to Psi in N. Hence `C_lambda` is N-dense in W_lambda. Norm equivalence on the core identifies the two completions, proving the claim.

**The original quadratic form identity therefore extends to every Psi in W_lambda**, not just its inequality:

`q_lambda[Psi]=(1/2)||grad Psi||^2+int V|Psi|^2 + int<Psi,B(x)Psi>`.

All three terms are finite on W_lambda. The B term is continuous for weighted L2 convergence by `||B(x)||<=C_B r`. The associated isotype Hamiltonian is precisely the semibounded form/Friedrichs extension of this original differential expression on C_lambda. This does **not** identify it with every conceivable alternative BFSS self-adjoint realization.

This stronger result is meaningful: it precludes hiding a domain mismatch in the passage from the source squared supercharges to the high-isotype differential form.

## 6. Compact embedding and strict positivity: no additional operator theorem assumed

For any Psi in Dom(q_lambda), the coercivity inequality gives

`int_(r>R) |Psi|^2 <= q[Psi]/(c_m R)`.

Thus every bounded subset in the q graph norm is uniformly tight in L2 at large radii. The retained gradient quarter gives uniformly bounded H1 norms on all bounded balls. Rellich compactness there, a diagonal subsequence, and the uniform weighted tail bound yield a subsequence convergent in full L2. Hence `Dom(q_lambda) hookrightarrow Hphys_lambda` is compact. The bounded map `(H_lambda+1)^(-1):Hphys_lambda->Dom(q_lambda)` composed with this embedding is compact.

If H_lambda Psi=0, `q[Psi]=0` and coercivity gives `r^(1/2)Psi=0` L2; r>0 except on a null set, so Psi=0. Thus `ker H_lambda=0`. The conclusion holds for each *existing nonzero* lambda-isotype that meets the inequality; the separate highest-weight-sector construction is still needed to exhibit infinitely dimensional such isotypes. Compact resolvent on an infinite-dimensional nonnegative Hilbert space with zero kernel gives an unbounded sequence of positive eigenvalues **within that reducing isotype**. It says nothing about a global spectral gap or absence of essential spectrum in the full unprojected BFSS Hamiltonian.

## 7. Negative knowledge, residual conditions and next science

- Do **not** apply the slice evaluation to general L2/form-domain vectors. Work on smooth isotypic core, integrate and then use graph closure.
- Do **not** differentiate the u-dependent coordinate frame while establishing the z-gradient estimate. This derivative is absent in the original source coordinate calculation.
- Do **not** infer compactness from the quartic potential alone: V vanishes on collinear valleys. Both high-isotype oscillator exclusion **and** the retained H1 quarter are required.
- Do **not** infer a full-H spectral gap or that the source-defined q coincides automatically with all possible alternative Hamiltonian domains.
- **Ordinary mathematical reasoning now independently addresses the full high-isotype closed-domain and compactness step, including an explicit weighted-domain identification**, subject to the exact global 48-Majorana/G action and general B4→D4 branching assumptions documented elsewhere. This is not a Lean certificate, nor an external referee acceptance of the full preprint.
- The next most discriminating scientific task is an adversarial high-weight-sector review at the **genuine Fock invariant-line and `Spin(9)` highest-weight conventions**, and a final cross-module theorem-premise audit. An already-compiled R4C small source lemma does not replace that, and an R4D kernel timeout is not physical evidence of failure.

**Governance:** Research branch only. Leave FCP main unchanged; no edits to etblink/math or openai/math; PR #25 stays draft and unmerged; no CI rerun.
