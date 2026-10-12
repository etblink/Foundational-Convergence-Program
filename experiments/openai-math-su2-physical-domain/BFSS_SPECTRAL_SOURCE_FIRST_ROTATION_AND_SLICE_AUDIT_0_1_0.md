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


## Follow-up: global-lift proof reduction, finite falsification checks, and closed-form boundary (2026-10-12)

**New reproducible source:** `BFSS_SPIN9_FINITE_COVARIANCE_AND_BRANCHING_CHECK_0_1_0.py` in this directory. The finite calculations below were independently checked with explicit 9 real \(16\times16\) gamma matrices and exact-rational Weyl dimensions; the committed script is a convenience for reproducing these checks, **not a Lean certificate or verification of the whole paper**. Its gamma words are deliberately the same source-registered exact gamma system in `audits/external/OPENAI_MATH_FAMILY270B_REAL_SYMMETRIC_GAMMA_CHECK_2026_10_07.py`. The latter had already verified Clifford relations and gamma traces, and earlier FCP Grok/Codex source reviews were favorable with scope limitations. We did not count their judgments as fresh independent proof.

### 1. Explicit `Spin(9)` two-plane spinor coefficients: [FINITE NUMERICAL CHECK PASSED, STRUCTURAL IDENTITY EXHIBITED]

For every one of the 36 pairs \(0\le i<j\le8\), take the \(\mathrm{SO}(9)\) plane rotation
\(R_{ii}=R_{jj}=\cos t,\ R_{ij}=-\sin t,\ R_{ji}=\sin t\), other diagonal entries 1. Set
\[
S_{ij}(t)=\cos(t/2)I_{16}-\sin(t/2)\gamma^i\gamma^j.
\]
Because the exact **real symmetric** gamma matrices satisfy \(\{\gamma^i,\gamma^j\}=2\delta_{ij}\), the skew generator \(\gamma^i\gamma^j\) squares to \(-I\) and \(S_{ij}(t)\) is orthogonal. Clifford anticommutation directly gives
\[
S_{ij}(t)\gamma^kS_{ij}(t)^\mathsf T=\sum_pR_{pk}\gamma^p.
\]
Multiplying by \(S^\mathsf T\) and applying the commutator to \(\gamma^{ij}\) gives the manuscript's exact **all 16 spinor indices** kinetic/cubic coefficient transformations:
\[
\sum_{i,\beta}R_{pi}\gamma^i_{\alpha\beta}S_{\delta\beta}
=(S^\mathsf T\gamma^p)_{\alpha\delta},
\quad
\sum_{i,j,\beta}R_{pi}R_{qj}\gamma^{ij}_{\alpha\beta}S_{\delta\beta}
=(S^\mathsf T\gamma^{pq})_{\alpha\delta}.
\]
The finite check evaluated those 3 identities at 2 nonzero angles for every plane, 72 cases, and found maximum coefficient discrepancy \(1.11\times10^{-16}\), consistent with floating-point roundoff. It separately checked commutation at the **48-dimensional generator-label level** between \(O\otimes I_{16}\) and \(I_3\otimes S\). It checked that a \(2\pi\) plane rotation produces \(R=I_9\) and \(S=-I_{16}\): the distinction between \(\mathrm{Spin}(9)\) and \(\mathrm{SO}(9)\) is essential, not an anomalous sign.

These checks are finite diagnostics, not a formal proof of the global 48-Majorana implementation or invariance of the closed form. The *Clifford-algebra derivation* of the plane identities is an ordinary symbolic argument conditional on the original gamma relations.

### 2. Stronger abstract gauge-commutation argument: [STANDARD COVERING-GROUP PROOF, SOURCE-IMPLEMENTATION BRIDGE REMAINS]

For the source-claimed commuting continuous homomorphisms
\[
\rho_G:\mathrm{Spin}(9)\to\mathrm{SO}(48),\quad \rho_G(g)=I_3\otimes S_g;
\qquad
\rho_H:\mathrm{SU}(2)\to\mathrm{SO}(48),\quad \rho_H(h)=O_h\otimes I_{16},
\]
both **domain groups are connected and simply connected**, so each homomorphism lifts uniquely (after fixing the identity) through the twofold covering \(\mathrm{Spin}(48)\to\mathrm{SO}(48)\). The lifts are continuous group homomorphisms. Their images under the covering commute, so their commutator lies in its discrete central kernel \(\{\pm1\}\). The commutator is continuous on the connected product \(\mathrm{Spin}(9)\times\mathrm{SU}(2)\), hence constant; at the identity it is \(+1\). Therefore the lifted homomorphisms **commute exactly** in \(\mathrm{Spin}(48)\). This proof requires neither an independent scalar-character argument on the Fock module nor an ad hoc choice of lift sign.

The source's irreducible complex Clifford module \(\mathcal F\) for the normalized 48 CAR generators then supplies a unitary action of \(\mathrm{Spin}(48)\) by even Clifford products; its restriction gives the claimed commuting \(U_g,V_h\) with correct conjugation of \(\theta\). This is a credible conventional mathematical construction **under the exact source premises**. It has not been implemented/checked as a single full-\(G\) object in the pinned Lean development.

**Relevant reusable source-defined Lean results rather than reconstruction from scratch:**
- `SU2BFSSPhysicalDomainS3IActualFockPlaneFlowGaugeCommutationProbe.lean`: actual Fock plane flow commutes with the actual gauge fiber representation.
- `SU2BFSSPhysicalDomainS3K0SourceSpinFullL2LiftProbe.lean`: original Fock plane flow lifted to the actual `FullL2 2`; explicitly *not* the bosonic-spatial combined rotation.
- `SU2BFSSPhysicalDomainS3K1ExactPhysicalGaugePreservationProbe.lean`: actual Fock flow preserves the exact gauge-invariant physical space.
- `SU2BFSSPhysicalDomainS3L5J9ActualKineticFreeSpinorCovarianceProbe.lean`: original kinetic free-spinor covariance.
These qualified theorems are **finite-plane / sector-limited** and do not magically certify the global \(\mathrm{Spin}(9)\) action, the complete cubic source charge, or the closed quadratic form.

### 3. Exact-rational \(B_4\downarrow D_4\) representation stress test: [SELECTED CASES PASS, GENERAL STATEMENT STILL SOURCE-ARGUED]

The finite check enumerated dominant \(D_4\) highest weights of the proper integer or half-integer parity, formed the manuscript's \(4\times4\) indicator determinant (lines 475–516), independently tested its multiplicities against standard \(B_4\downarrow D_4\) interlacing inequalities, and checked sum-of-constituent dimensions using **exact Fraction arithmetic** and independent \(B_4,D_4\) Weyl dimension products. Representative results:

| \(B_4\) highest weight \(\lambda\) | \(\dim V_\lambda\) | \(\sum_{\nu}m_\nu\dim V_\nu\) | constituent count |
|---|---:|---:|---:|
| \((1,0,0,0)\) | 9 | 9 | 2 |
| \((1,1,0,0)\) | 36 | 36 | 2 |
| \((2,1,0,0)\) | 231 | 231 | 4 |
| \((3,2,1,1)\) | 15444 | 15444 | 12 |
| \((\frac12,\frac12,\frac12,\frac12)\) | 16 | 16 | 2 |
| \((\frac32,\frac32,\frac12,\frac12)\) | 432 | 432 | 4 |
| \((\frac52,\frac32,\frac12,\frac12)\) | 2560 | 2560 | 8 |

Five additional weights were also checked, 12 in all; **none violated** \(\nu_1\ge\lambda_2\), exact-dimensional branching, or the interlacing multiplicity pattern. This is nontrivial stress evidence but not an exhaustive check or new proof of Weyl branching.

### 4. Closed-form reduction: [MATHEMATICALLY STANDARD CONDITIONAL BRIDGE; FORMALIZATION STATUS OPEN]

A focused analytical implication, sufficient for the manuscript's Lemma 2.2, is:

1. Each original \(Q_\alpha\) is symmetric on the common dense gauge-fixed smooth compact core \(\mathcal C\). Its kinetic term is a constant Hermitian matrix times \(-i\partial_{ia}\); its cubic term is Hermitian multiplication by a real-coefficient linear combination of Hermitian \(\theta\)'s. On \(\mathcal C\), integration by parts and compact support establish symmetry. The simultaneous graph map \(\mathcal Q=(Q_1,\ldots,Q_{16})\) is closable; the quadratic form \(q=\|\mathcal Q\cdot\|^2/16\) has the closure defined by the graph closure.
2. If the true combined spatial/Fock action \(D_g\) preserves \(\mathcal C\) and obeys all-spinor covariance \(D_gQ_\alpha D_g^{-1}=\sum_\beta(S_g^{-1})_{\alpha\beta}Q_\beta\) **on that exact core**, then \(D_g\) is a form-norm isometry and extends to the closed domain.
3. Strong continuity follows on \(\mathcal C\) from compact support, smoothness, the continuous finite-dimensional matrices \(R_g,U_g\), and the covariance law; extend to the completed form domain by uniform isometry and density.
4. The compact-group isotypic projector \(P_\lambda=d_\lambda\int_G\overline{\chi_\lambda(g)}D_g\,dg\) is bounded in form norm. On a smooth compact core vector, integration over the compact group preserves smoothness and a common compact support, so it maps \(\mathcal C\to\mathcal C\); this gives \(P_\lambda\mathcal C\) as a restricted form core.
5. Form invariance gives \(D_g(H+1)^{-1}=(H+1)^{-1}D_g\) by uniqueness of the closed-form variational resolvent. Integrate to obtain resolvent commutation with \(P_\lambda\); hence the isotypic subspace reduces \(H\).

This bridge is **substantively accounted for by standard Hilbert-space operator arguments once premise (2) is established on the actual \(\mathcal C\)**. It is not a separate spectral miracle and no new counterexample appeared here. The remaining *formalization* boundary lies at real combined spatial/Fock covariance of all 16 exact source \(Q_\alpha\) and the explicit closed-form domain construction (not just the already-qualified kinetic half). The rigorous manuscript's abstract setup provides a plausible ordinary mathematical proof route even though the current Lean program has not discharged it.

### 5. Decision after the new check

- **No counterexample found.** The original manuscript remains supported at a reasoned source-argument level; do not relabel finite tests or abstract covering-group reasoning as a complete Lean certificate.
- **No further R4B/R4D assembly CI without a new source-faithful compression interface.** The kernel timeout/recursion problem is preserved separately.
- **Next possible scientific falsifier:** the exact \(K_u\) slice-equivariance and allowed-weight exclusion at all longitudinal parameters; seek a truly pathological representation/domain example, not more random points. Then test the confinement and infinite-sector construction at their actual domains.
- Never modify the pinned `etblink/math` fork, upstream `openai/math`, FCP main, or create an upstream pull request without owner authorization.
