# BFSS SU(2): source-first rotation and slice audit 0.1.0

**Date:** 2026-10-12. **Status:** source-bound algebraic sanity audit; **not a proof or a validation of the spectral theorem**. No Lean compilation or downstream manuscript amendment was performed in this audit.

**Primary source:** `etblink/math` pin `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, LaTeX file `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex` (the source claims are not independently certified).
**FCP context:** research branch `research/openai-math-su2-s3l-combined-rotation`, draft PR #25; qualified J9 kinetic, K2D3 original cubic monomial response, K4/K6C coefficients, R1D/R3C, and separately qualified R4C1/R4C2. The literal combined R4D remains unqualified after Gate #2 emitted maximum recursion depth and a kernel deterministic timeout. This spectral audit does **not** promote any partial BFSS Lean identity into a full group or Hamiltonian theorem.

## First load-bearing lemma: `lem:rotations`, primary-source lines 327–410

### Claim 1 — formal all-spinor index covariance: [ALGEBRAICALLY CONSISTENT CONDITIONAL ON THE STATED LIFTS]

Let \(R=R_g\in\mathrm{SO}(9)\) and \(S=S_g\in\mathrm{SO}(16)\), with the paper's stated gamma covariance
\(S\gamma^iS^\mathsf T=\sum_j R_{ji}\gamma^j\), and write \(\gamma^{ij}=\tfrac12[\gamma^i,\gamma^j]\).
For the spatial pullback \(T_gf(x)=f(R^{-1}x)\), direct conjugation gives
\[
T_g x_i^a T_g^{-1}=\sum_p R_{pi}x_p^a,\quad
T_g \partial_{ia}T_g^{-1}=\sum_p R_{pi}\partial_{pa}.
\]
For the paper's Clifford implementation \(U_g\theta_\beta^aU_g^{-1}=\sum_\delta S_{\delta\beta}\theta_\delta^a\).
The kinetic coefficient therefore transforms by the exact matrix identity
\[
\sum_{i,\beta} R_{pi}\gamma^i_{\alpha\beta}S_{\delta\beta}
=\bigl[\sum_i R_{pi}\gamma^i S^\mathsf T\bigr]_{\alpha\delta}
=(S^\mathsf T\gamma^p)_{\alpha\delta}.
\]
This is a direct restatement of the supplied gamma covariance. The same computation for \(\gamma^{ij}\) yields the cubic coefficient identity
\[
\sum_{i,j,\beta}R_{pi}R_{qj}\gamma^{ij}_{\alpha\beta}S_{\delta\beta}
=(S^\mathsf T\gamma^{pq})_{\alpha\delta}.
\]
Consequently, *if* the original Clifford-lift actions exist with the paper's exact conjugation conventions, both source supercharge summands satisfy
\[
D_gQ_\alpha D_g^{-1}=\sum_\rho(S^{-1})_{\alpha\rho}Q_\rho
\]
on the common full smooth core, as the paper states at lines 372–382. Orthogonality of \(S\) then preserves \(\frac1{16}\sum_\alpha\|Q_\alpha\Psi\|^2\).

**Scope warning:** this checks the **conditional finite-index algebra**. It does not construct a global \(\mathrm{Spin}(9)\to\mathrm{Spin}(48)\) lift in Lean, prove the Clifford action's sign/conjugation convention for the actual 48 Majoranas, or certify domain invariance. The currently accepted source Lean modules prove only selected finite-plane/source obligations, not this global all-spinor identity. No mathematical counterexample was found in this index check.

### Claim 2 — global group and gauge compatibility: [SOURCE ARGUMENT; FURTHER CERTIFICATION NEEDED]

At manuscript lines 359–370 the vector-label actions \(S_g^{\oplus3}\) and \(O_h\otimes I_{16}\) commute in \(\mathrm{SO}(48)\); their lifted commutator in the irreducible complex Clifford module is a scalar. For each fixed \(g\) this scalar is claimed to be a continuous character of gauge \(\mathrm{SU}(2)\), hence trivial. An independent check must verify the lifts are *continuous group homomorphisms*, not merely pointwise choices; that the scalar commutator is multiplicative in \(h\); and that the chosen implementation has the paper's \(\theta\)-conjugation orientation. This is a focused proof obligation, **not a currently identified gap**.

### Claim 3 — form closure and isotypic reduction: [CONDITIONAL SOURCE ARGUMENT]

The manuscript defines the gauge-core nonnegative quadratic form via 16 symmetric \(Q_\alpha\)'s (lines 110–133). Assuming those source-domain claims, the closability of the joint operator \(Q=(Q_\alpha)_\alpha\) and of its norm-square form follows by the standard adjoint/symmetry test. With the *strongly continuous* form-isometric \(D_g\), the compact Haar/character projector is form-norm bounded and maps the smooth compact core into itself (lines 384–399). Form invariance then implies resolvent commutation with \(P_\lambda\) using the form representation theorem (lines 400–410).

**What remains unverified:** symmetry and closability for each original \(Q_\alpha\) on the exact gauge invariant core; continuity of \(D_g\) in the completed form norm; preservation of the core under the character integral; and identification of the restricted self-adjoint part. These are separate operator-domain obligations, not consequences merely of the algebraic matrix identity above.

## Second bridge: orthogonal branching and fixed-slice spectral exclusion

### `lem:branching`, manuscript lines 453–517: [SIMPLE REPRESENTATION SANITY CASES PASS; GENERAL PROOF UNAUDITED]

The claimed \(\mathrm{Spin}(9)\downarrow\mathrm{Spin}(8)\) inequality \(\nu_1\ge\lambda_2\) matches elementary branching cases:
- \(9\)-dimensional vector: \(\lambda=(1,0,0,0)\), restriction \(9\to8_v\oplus1\), giving \(\nu_1=1\) or \(0\), both \(\ge\lambda_2=0\).
- \(36\)-dimensional two-form: \(\lambda=(1,1,0,0)\), restriction \(\Lambda^2\mathbb R^9\to\Lambda^2\mathbb R^8\oplus\mathbb R^8\); each constituent has \(\nu_1=1=\lambda_2\).
- \(16\)-dimensional spinor: \(\lambda=(\tfrac12,\tfrac12,\tfrac12,\tfrac12)\), restriction \(16\to8_s\oplus8_c\), both with \(\nu_1=\tfrac12=\lambda_2\).

These are **tests**, not a proof of the Weyl-character determinant argument, especially for arbitrary half-integral weights. The determinant/coefficient-extraction argument and its weight-lattice conventions remain an explicit high-value adversarial target.

### `lem:slice`, lines 524–558: [KEY ASSUMPTION EXPLICIT, UNVERIFIED]

Evaluation on a fixed lower-dimensional slice is not a well-defined operation on general \(L^2\) equivalence classes. The paper addresses this by first restricting to the finite-dimensional \(\mathrm{Spin}(9)\) orbit span of a *smooth* vector in a single isotypic type, where equality in \(L^2\) of smooth representatives implies pointwise equality. Only then does it form the \(K_u\)-intertwining slice restriction. Audit the finite-dimensional orbit assertion, smoothness/compact-support preservation, and passage from every fixed slice to Fubini-almost-everywhere quantitative estimates. Do not claim the naive general-\(L^2\) restriction.

### `lem:oscillator`, lines 569–613: [NORMALIZATION ALGEBRA CHECK PASSES; EXCLUSION CONDITIONAL]

For \(r=|u|>0\), \(h_r=-\frac14\Delta_z+r^2|z|^2\) on sixteen real transverse directions. Set \(\xi=\sqrt{2r}\,z\). Then \(h_r=\frac r2(-\Delta_\xi+|\xi|^2)\); eigenvalues are \(r(n+8)\), \(n=0,1,\dots\). If the branching/slice bounds indeed force the \(n\le m\) levels to vanish, the next allowed energy is \(r(m+9)\), as in the paper. This normalization check alone cannot establish the full level exclusion.

### `prop:confinement`, lines 615–685: [CONDITIONAL ANALYTIC ARGUMENT]

Assuming the fiber bound and form expansion, the inequalities \(\sum_a|x^a|\ge|x|\), nonnegative retained gradient quarter, and fermionic estimate \(\|B(x)\|\le C|x|\) deliver \(c_m=(m+9)/3-C>0\). On the closed restricted form domain, weighted tail bound plus local Rellich compactness is an appropriate route to compact resolvent. Independently verify the passage to the full restricted form domain, derivative decomposition at varying \(u\), and nonzero physical sectors before attributing a spectral theorem.

## Next falsification-first audit, finite scope

1. **Full symmetry before spectral extrapolation.** Build or locate a source-faithful global \(\mathrm{Spin}(9)\) lift and verify gauge commutation, all 16 original supercharge covariance components, and the no-sign-slip convention. At least one of these has to hold in the actual 48-Majorana implementation, not an unrelated abstract Clifford representation.
2. **Closed-form bridge.** Write a complete hypothesis checklist: dense common gauge core, \(Q_\alpha\) symmetric there, form closability, strong form-unitary group action, projector mapping the core to itself, self-adjoint reduction. Identify the first unproved *mathematical* step, or discharge it. Do not accept a generic closed-form theorem that silently assumes original-domain compatibility.
3. **Branching/slice challenge.** Independently verify the \(\nu_1\ge\lambda_2\) restriction for integral and half-integral dominant weights and the slice-intertwiner construction. A falsifying \(G\) representation or a demonstrable domain mismatch would alter the paper's scientific claim and take priority over further Lean assembly work.
4. **Decision rule.** Stop and publish the exact missing assumption or counterexample if found; if no defect, preserve the paper as source-argued (not independently validated), and select a bounded formalization only when it adds new mathematical information.

**No changes to** FCP main, the source `etblink/math` fork, or upstream `openai/math`. **No R4B/R4D rerun authorized by this record.**
