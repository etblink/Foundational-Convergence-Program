# BFSS SU(2) — exact coupling-dilation unitary intertwiner on the original gauge and Spin(9) domains

**2026-10-12 | Project Lead mathematical continuation 0.1.0 | SOURCE_DEFINED_COUPLING_EQUIVALENCE_PROVED_IN_ORDINARY_MATHEMATICS | NO_EXTERNAL_BFSS_CONVENTION_EQUIVALENCE_ASSUMED | NO_LEAN_CERTIFICATE**

## Why this is the next mathematical task

The source-defined differential Hamiltonian's *essential self-adjointness* was established in `BFSS_ORIGINAL_SU2_ESSENTIAL_SELF_ADJOINTNESS_AND_PHYSICAL_OPERATOR_CORE_0_1_0.md` on this research branch. This excludes ambiguity between self-adjoint extensions of the **same** original differential expression. It leaves a different scientific issue: when source BFSS supercharges are written with different coupling normalizations, do we need an additional spectral theorem, or is there an exact unitary equivalence?

Here we prove a source-faithful exact coupling-scaling theorem that handles **all g>0** at the original 16-supercharge, 48-Majorana and gauge-fixed self-adjoint operator levels; it neither imports a different physics model nor asserts that every external use of “BFSS” has the same operator.

**Primary source:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. The original model has `x in R^27`, irreducible original CAR F, `{theta,theta}=delta`, `f_abc=sqrt(2)epsilon_abc`, and `Q_alpha=A_alpha+W_alpha`, with `A=-i gamma_i theta^a partial_(ia)`, `W=(1/2)f_abc x_i^b x_j^c gamma_ij theta^a`.

## The exact coupling theorem

For g>0, introduce a precisely specified one-parameter family *within the same model*:

`Q_alpha(g)=A_alpha+g W_alpha` on `C_full=C_c^infty(R^27;F)`;
`q_g[Psi]=(1/16)sum_alpha ||Q_alpha(g)Psi||²` on `C_phys=(C_full)^SU(2)`;
`H_g=` nonnegative self-adjoint operator associated with the closure of q_g.

The source supercharge-square calculation, with g as a scalar multiplying the original cubic W, gives on C_full

`H_{0,g}=(1/16)sum Q_alpha(g)^2=-(1/2)Delta+g² V(x)+g B(x)`.

Important: it is **g²** in front of the original quartic V, and **g** in front of the original linear fermionic B. Treating both potentials as g or g² would describe a different family.

For any s>0 define the exact unitary dilation on L2(R^27;F):

`(D_s Psi)(x)=s^(27/2) Psi(s x)`.

It is unitary by the Jacobian `dx=s^-27 d(sx)`; it maps C_full bijectively to itself and commutes with gauge SU2 and with the genuine Spin9 action, since all group transformations on x are orthogonal and all Fock actions act only on F. Thus it also preserves C_phys, Hphys, every Spin9 isotype, and group projectors. Crucially, it is the **identity on the original 48-Majorana F**: no surrogate spin space appears.

The exact conjugation formulas on C_full are

`D_s partial_(ia) D_s^-1=s^-1 partial_(ia)`,
`D_s (multiplication x_i^a) D_s^-1=s (multiplication x_i^a)`,
`D_s A_alpha D_s^-1=s^-1 A_alpha`,
`D_s W_alpha D_s^-1=s² W_alpha`.

Take `s=g^-1/3`. Then `s^-1=g^(1/3)=g s²`. Hence **for every original alpha**

`D_(g^-1/3) Q_alpha(g) D_(g^-1/3)^-1 = g^(1/3) Q_alpha(1)`.

Consequently on C_full the original full differential expressions obey

`D_(g^-1/3) H_{0,g} D_(g^-1/3)^-1=g^(2/3) H_{0,1}`.

Equivalently, using the scalar Schrödinger expression:

`D_s(-Delta/2)D_s^-1=s^-2 (-Delta/2)`,
`D_s(g² V)D_s^-1=g² s^4 V`,
`D_s(g B)D_s^-1=g s B`,

and each coefficient equals `g^(2/3)` for `s=g^-1/3`.

### The nontrivial domain and closure claim

These are not merely formal polynomial transformations. The core identity implies

`q_1[D_s Psi]=g^(-2/3) q_g[Psi]`, `||D_s Psi||=||Psi||`, for Psi in C_phys.

Since D_s maps C_phys bijectively to itself, it is an isometry between the two graph norms up to their prescribed energy scaling. By completion it is a unitary map from `Dom(q_g)` onto `Dom(q_1)`, and the polarization/repr-theorem uniqueness gives the **self-adjoint operator intertwiner**:

`D_(g^-1/3) H_g D_(g^-1/3)^-1 = g^(2/3) H_1`.

The previously independently proved essential-self-adjointness on the original gauge-invariant operator core gives the same result by uniqueness of self-adjoint closures. In fact, the quadratic-form closure argument already suffices independently of essential self-adjointness, so this result is robust to that separate proof's status.

Because D_s commutes with Spin9, for **each actual physical rotation isotype lambda** the restricted operators satisfy

`D_s H_(g,lambda) D_s^-1=g^(2/3) H_(1,lambda)`,

and their full spectra, point spectra, spectral multiplicities, and eigenfunctions correspond: `spec(H_g)=g^(2/3)spec(H_1)`, `spec_p(H_g)=g^(2/3)spec_p(H_1)`, `Psi_(g,j)=D_s^-1 Psi_(1,j)` and `E_(g,j)=g^(2/3)E_(1,j)` whenever the latter eigenpair exists. This applies to positive eigenvalues in high-Spin9 sectors without assuming a global gap. The **dimensionless high-weight threshold is independent of g**, since it is a Spin9 representation condition invariant under dilation. Do not falsely change the threshold by inserting a factor g into C_B alone and neglecting the oscillator scaling.

For the entire family of nonzero *real* g, the sign is also irrelevant: spatial parity `(P Psi)(x)=Psi(-x)` is unitary, commutes with gauge rotations and Spin9 proper rotations, and satisfies

`P Q_alpha(g) P^-1=-Q_alpha(-g)` and `P H_g P^-1=H_(-g)`.

However, most BFSS conventions take g>0; we do not infer a positive-g limit theorem at the singular `g=0` point. At g=0, the operator is just the gauge-invariant free Laplacian and has no point spectrum on the full R27 physical Hilbert space. Proof: the ordinary Fourier transform diagonalizes it as |p|²/2; no positive-measure level set exists, so an L² eigenfunction must vanish. This is consistent with `g^(2/3)E_j(1)->0` as g decreases while normalized eigenvectors spread to infinity; there is no contradiction.

## Reproducible exact regression (not evidence replacing the proof)

Companion `BFSS_ORIGINAL_COUPLING_DILATION_EXACT_CHECK_0_1_0.py` checks the exact rational conjugation factors for seven distinct nonzero rational cube couplings, including below and above 1, and `s^27*s^-27=1`. No NumPy/Lean dependencies. The general theorem is the algebraic conjugation and form-domain argument, not finite sampling.

## Source identity versus physical equivalence

**Proved:** Every positive g in the *explicitly specified original BFSS SU2 supercharge family* is unitarily equivalent up to overall energy rescaling. This is a genuine mathematical simplification: no separate existence theorem or closed-domain analysis for each positive g is necessary, and the previous sharp original Majorana norm carries over with appropriate scaling.

**Not proved:** An arbitrary external “BFSS Hamiltonian” is automatically this operator. Differences in center-of-mass degrees of freedom, relative/gauge Hilbert space, choice of trace normalization, kinetic prefactors, extra terms, fermionic quantization, or regularity/boundary conditions must be resolved explicitly before applying the theorem. One must write its supercharges in the original `A+gW` form or provide a concrete unitary/energy-rescaling intertwiner.

**Project Lead:** This exact mathematical result, and the recently proved source ESA result, justify returning to productive spectral mathematics. Candidate next original-source question: whether actual supersymmetry/Gauss-law commutators enable a further precise spectral or representation consequence not already implied by large-spin confinement. Do not burn CI time proving unrelated abstract interfaces without a source-discharge plan; preserve full open status of large inlined Lean R4B/R4D.

**Permissions:** Commit only on FCP research branch; no FCP main merge, no math fork edit, no upstream PR, no new speculative CI.
