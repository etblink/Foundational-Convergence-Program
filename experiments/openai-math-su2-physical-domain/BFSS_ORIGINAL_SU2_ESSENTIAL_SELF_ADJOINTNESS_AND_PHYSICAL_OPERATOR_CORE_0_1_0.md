# BFSS S3L — essential self-adjointness of the ORIGINAL relative SU(2) matrix Schrödinger Hamiltonian

**2026-10-12 | Project Lead mathematical extension 0.1.0 | SOURCE_DEFINED_ESSENTIAL_SELF_ADJOINTNESS_PROVED_BY_LOCALIZATION_IN_ORDINARY_ANALYSIS | NO_LEAN_CERTIFICATE | EXTERNAL_REALIZATION_EQUIVALENCE_NOT_CLAIMED**

## 0. Scope: directly answer the physical-realization ambiguity

Source: pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, especially `eq:supercharges`, `lem:form`, `eq:potential`, and the form closure immediately before `thm:main`.

We prove in ordinary mathematics a statement beyond what the manuscript explicitly needs: the original smooth-core differential expression `H_0=(1/16) sum_alpha Q_alpha^2=-1/2 Delta+V+B` is **essentially self-adjoint** on `C_c^infty(R^27;F)`, and its restriction to the **original** gauge-invariant smooth core `C=[C_c^infty(R^27;F)]^SU(2)` is also essentially self-adjoint. Therefore the paper's H obtained from the closed source supercharge form q is **the unique self-adjoint extension of this exact minimal physical differential operator**, not merely one choice among self-adjoint boundary conditions at spatial infinity.

No equivalence to a distinct physical model, convention, or representation is asserted. The theorem relies on the original `q>=0` on the full smooth core and the matrix potential smoothness. It does **not** require the new sharp B bound, high-rotation confinement, or a global spectral gap.

## 1. Data verified from the ORIGINAL source

Let `F` be the irreducible finite-dimensional original 48-Majorana complex Hilbert space with source `{theta_A,theta_B}=delta_AB`, and define

`K=L2(R^27;F)`,
`C_full=C_c^infty(R^27;F)`,
`K_phys=K^SU(2)`,
`C_phys=(C_full)^SU(2)`.

The source's literal 16 `Q_alpha` have polynomial coefficients, are symmetric on C_full, and preserve it. Source `lem:form` **explicitly says** its calculation holds on C_full before gauge projection. Thus the operator

`T_0=(1/16)sum_alpha Q_alpha^2:C_full->C_full`

is symmetric, and for all `phi in C_full`,

`<phi,T_0 phi>=(1/16)sum_alpha ||Q_alpha phi||²>=0.`

The algebraic source identity, understood as a differential operator equality on C_full by polarization, is

`T_0=-(1/2)Delta I_F +W(x)`, `W(x)=V(x)I_F+B(x)`.

Here `V=sum_(a<b)|x^a wedge x^b|²` is real polynomial and `B(x)=(i/2)f_abc x_i^a gamma_i[beta,delta]theta_beta^b theta_delta^c` is Hermitian and matrix-polynomial in x. Therefore W is smooth, locally bounded, Hermitian and finite-dimensional on all R27. **The full operator is nonnegative as a quadratic form even though W(x) need not be pointwise nonnegative.** This distinction matters: one should not smuggle in a false `V+B>=0` pointwise claim.

The compact gauge action `mathcal G_h phi(x)=V_h phi(O_h^-1 x)` preserves C_full, is unitary on K, and commutes with **each original** Q_alpha, and hence T_0. Its Haar projector `P=integral_SU2 G_h dh` is orthogonal, maps C_full into C_phys, and commutes with T_0 on C_full.

## 2. General elementary lemma: positivity + scalar elliptic principal part

**Lemma.** Let E be a finite-dimensional complex Hilbert space, d>=1, and `W:R^d->Herm(E)` be smooth and locally bounded. Define `A_0=-a Delta I_E+W(x)` on `C_c^infty(R^d;E)`, with `a>0`. If `<phi,A_0 phi> >=0` for every compact smooth phi, then `A_0` is essentially self-adjoint.

**Proof.** The densely-defined symmetric nonnegative A_0 has a nonnegative Friedrichs extension. For a nonnegative symmetric operator, essential self-adjointness is equivalent to `ker(A_0^*+1)={0}`: equivalently `Ran(A_0+1)` is dense; its closure is then all of L2 because `||(A_0+1)phi||>=||phi||`, and the closed symmetric operator has -1 in its real resolvent set, forcing self-adjointness.

Suppose `u in ker(A_0^*+1)`. Distributionally, `(-a Delta+W+1)u=0`, because smooth compactly supported vectors test the adjoint relation. Scalar-principal-part elliptic regularity and smoothness of W imply `u in C^infty_loc(R^d;E)`; e.g. local elliptic H² bootstrapping from local L², since W is locally smooth/bounded. No boundary or singularity occurs at finite x.

Fix any **real** `chi in C_c^infty(R^d)`. The exact localized Schrödinger/IMS identity is

`<chi u,(A_0+1)(chi u)> - Re<chi² u,(A_0+1)u> = a int |grad chi|² ||u(x)||² dx.`

The potential W and the scalar 1 terms cancel pointwise; one may establish the formula by integration by parts on the compact support. The second term is zero because u solves the adjoint equation locally. Since `chi u in C_c^infty(R^d;E)` and `A_0>=0`,

`||chi u||² <= <chi u,(A_0+1)(chi u)> = a int |grad chi|²||u||².`

Choose `chi_R(x)=chi_1(x/R)`, where `chi_1` is real smooth, equals 1 on the unit ball, vanishes outside the ball of radius 2, and `|grad chi_R|<=K/R`. Then

`||chi_R u||² <= a K²/R² ||u||² ->0`.

But `chi_R u->u` in L² by dominated convergence, so u=0. Therefore `ker(A_0^*+1)=0`, proving essential self-adjointness. **QED.**

**Important:** The argument requires nonnegativity of the **operator on the full compact smooth core**, not merely on a gauge-fixed subspace or an abstract form. In the pinned source this is satisfied by `sum Q_alpha²` on C_full, because the source explicitly verifies the form expansion there. Generalizations to wildly growing nonsmooth potentials or nonconstant metric coefficients are not claimed.

This is a direct finite-matrix version of the standard localization-based essential-self-adjointness method (compare M. Shubin, `Essential self-adjointness for semi-bounded magnetic Schrödinger operators on non-compact manifolds`, JFA 186 (2001) 92–116, arXiv:math/0007019). The argument above is self-contained and does not apply a scalar-only theorem without checking the matrix case.

## 3. Apply lemma to the original full BFSS operator

Take `d=27`, `a=1/2`, `E=F`, `W=V I_F+B`. Every lemma hypothesis was discharged **on C_full** in section 1. Hence

`T_full=closure(T_0 | C_full)`

is a unique self-adjoint operator on the original full Hilbert space K. In particular, the original differential expression does not admit an independent self-adjoint boundary condition at the infinitely long, collinear flat valleys when its smooth compact core is fixed.

This does **not** infer compact resolvent or a positive spectral gap for T_full. Nonnegative essentially self-adjoint operators may have continuous spectrum all the way down to zero.

## 4. Exact gauge physical reduction and UNIQUE source form operator

Because the orthogonal gauge averaging projector P maps C_full to C_phys and `P T_0=T_0 P` there, it also commutes with the self-adjoint closure T_full: for any `u in Dom(T_full)`, approximate by `u_n in C_full` in the graph norm; then `P u_n in C_phys`, `P u_n -> P u` and `T_0 P u_n=P T_0 u_n -> P T_full u`. Hence `P Dom(T_full) subset Dom(T_full)` and `T_full P=P T_full`. P therefore reduces T_full, and its restriction

`T_phys = T_full | (Dom(T_full) cap K_phys)`

is self-adjoint on K_phys. For any u in its domain, project a full graph-core approximation `u_n in C_full`; then `P u_n in C_phys` converges to u in the graph norm. Hence **C_phys is an operator core for T_phys**. The source minimal physical differential operator `T_0 | C_phys` is thus essentially self-adjoint, with closure T_phys.

The source defines `q[phi]=(1/16)sum ||Q_alpha phi||²=<phi,T_0 phi>` on C_phys and closes the form; its representation-theorem H is exactly the Friedrichs extension of that symmetric nonnegative minimal operator. But the minimal physical operator is essentially self-adjoint, so all self-adjoint extensions agree. Therefore

`H = T_phys = closure( [-(1/2)Delta+V+B] | C_phys )`.

This identifies the source-defined H with the **unique physical-gauge self-adjoint realization of the very same source differential expression**. It also proves that its operator core includes C_phys; one does **not** have to infer ESA from the high-isotype weighted form domain or confuse operator and form cores.

## 5. What this closes and what remains open

**Scientifically closed at the level of ordinary mathematics:** The *extension ambiguity* for the specified R27/full-F model is removed. No unspoken self-adjoint boundary condition at the flat valleys is responsible for the manuscript's proposed positive-energy eigenstates. A reader choosing the natural unique closure of the same explicit formal Hamiltonian on the same gauge-fixed Hilbert space obtains exactly the source's H.

**Explicitly not closed:** If another “standard BFSS Hamiltonian” is defined using different `f_abc`, gamma/fermion conventions, a center-of-mass degree of freedom, nontrivial coupling or rescaled kinetic energy, gauge-fixed quotient variables/measure, or an inequivalent quantization, one must exhibit and verify a **unitary intertwining map** of its physical Hilbert space and operator core to the exact objects above (or account for known rescalings). Essential self-adjointness does not manufacture that equivalence. Nor does this result show any universal gap of the full Hamiltonian or complete the existing unqualified Lean cubic-assembly theorem.

**To adversarial specialists:** Try to refute (i) positivity of the original T_0 on C_full, (ii) the full-core operator equality (source q-form identity by polarization), (iii) the locally smooth Hermitian W needed for elliptic regularity, (iv) the cutoff IMS identity, (v) gauge commutation and graph-core projection. If any fails, give an exact counterexample in the original 48 Majorana model. The relevant distinctions are *operator core versus form core*, *nonnegative operator versus pointwise nonnegative potential*, *same realization versus differently normalized physical Hamiltonians*.

**Project Lead:** This is a bounded, source-aligned mathematical theorem rather than more proof-engineering overhead. Return after this to the physical normalization/intertwiner question or to a genuinely stronger spectral inequality, not blind re-execution of R4B/R4D.

**Permissions:** Research branch only. Leave FCP main, etblink/math, openai/math and draft PR #25 unmerged and unmodified; no new CI gate.
