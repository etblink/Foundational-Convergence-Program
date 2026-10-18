# FCP BFSS SU(2) — source-exact premise-to-conclusion scientific cross-audit 0.1.0

**Audit date:** 2026-10-12. **Project Lead disposition:** `SOURCE_ARGUMENT_CROSSWALK_COHERENT__CLASSICAL_GENERAL_BRANCHING_CONFIRMED__LARGE_WEIGHT_EXACT_TESTS_PASS__NO_COUNTEREXAMPLE_FOUND__NOT_LEAN_CERTIFIED_OR_EXTERNALLY_REFEREED`.

## Investigation scope and provenance

The question was whether the independently investigated pieces establish premises on **one and the same** source-defined irreducible 48-Majorana Fock space, physical gauge Hilbert space, Spin(9) action, and closed quadratic-form Hamiltonian, and whether any step uses a result for a different model or quietly assumes its conclusion.

**Mathematical primary source (pinned):** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. Refer to its `eq:supercharges`, `lem:form`, `lem:rotations`, `lem:branching`, `lem:slice`, `lem:oscillator`, `prop:confinement`, `lem:fermion-invariant`, and `lem:large-sectors`.

**Independent research predecessors in this branch:** `BFSS_FORM_AND_HIGH_WEIGHT_SECTORS_SOURCE_AUDIT_0_1_0.md`; `BFSS_EXPLICIT_FERMION_NORM_AND_HIGH_SPIN_ENERGY_BOUND_AUDIT_0_1_0.md`; `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`; `BFSS_HIGH_SPIN_CLOSED_DOMAIN_COMPACTNESS_AND_SPECTRAL_BOUNDARY_AUDIT_0_1_0.md`; `BFSS_GAUGE_VACUUM_HIGHEST_WEIGHT_AND_UNIFORM_SECTOR_AUDIT_0_1_0.md`. This record adds independent exact large-weight branching and the *source-aligned composite obligation map*, and does not purport to reread or certify all of the source papers afresh.

## The single-source dependency crosswalk

| # | Assertion and evidence class | Actual source-defined objects | Needed output and forbidden substitution |
|---|---|---|---|
| 1 | **[DEFINITION]** 48 self-adjoint Majoranas, real gamma(9), original 16 supercharges | Same irreducible `F` and `C=[C_c^infty(R^27;F)]^SU(2)`; `q=1/16 sum ||Q_alpha Psi||^2` | This `q` defines the paper's H *by form closure*. No generic `AlgebraData` Hamiltonian or arbitrarily different self-adjoint extension may be silently substituted. |
| 2 | **[SOURCE-ALGEBRA]** `q=1/2||grad||^2+int V+int<B>` on C, `V=sum wedges squared`, `||B||<=8sqrt6 |x|` | Original `f=sqrt2 epsilon`, `{theta,theta}=delta`, exact real gamma matrices; prior exhaustive linear coefficient diagnostics | Reject half/sign changes; finite tests support the algebra on C, not a closed-domain operator equality. |
| 3 | **[ORDINARY GROUP PROOF + FINITE SOURCE TESTS]** `Spin(9) x SU(2)->SO(48)` via `O_h tensor S_g` lifts jointly to Spin48 | The *same* 48 generator labels and irreducible F; combined `D_g Psi(x)=U_g Psi(R_g^-1 x)` | Gives honest commuting gauge/rotation action. Do not replace the Fock rotation by an isolated spinor-label transformation or quotient by the 2pi sign. |
| 4 | **[ORDINARY SOURCE INDEX PROOF + EXACT TESTS]** all 16 original `Q_alpha` transform covariantly under D | Both original kinetic and full original cubic source terms on **the same C** | `D_g Q_alpha D_g^-1=sum_beta (S_g^-1)_(alpha,beta)Q_beta`. Prior R4B/R4D Lean composition **not qualified** despite this independent ordinary-mathematical argument. |
| 5 | **[STANDARD CLOSED-FORM ANALYSIS]** q is closable; D acts as a form isometry; isotypic projections preserve C and the closed q | `H` is *by definition* the self-adjoint operator of closed original q, no alternative realization | `H_lambda` is the actual restriction/part of H on a reducing Spin9 isotype. Resolvent commutation, not formal symbol commutation, establishes reduction. |
| 6 | **[ESTABLISHED GENERAL THEOREM + EXACT STRESS TEST]** compact `Spin(9)->Spin(8)` branching | Same G as D, stabilizer `K_u` of a **spatial** nonzero u. Half-integer spinor weights included | Any constituent obeys `nu_1>=lambda_2`. Distinguish it from a merely SO(9) integral-weight branching statement. |
| 7 | **[CORE SLICE + OSCILLATOR + CLOSURE]** legitimate restriction for smooth finite-dimensional orbit spans; 16 transverse directions, spectral gap after low-level exclusion; 3-color coercivity; closed weighted Sobolev domain | Actual C_lambda= C cap Hphys_lambda, same V and B as (2), same K_u as (6), source `M<=6` bound | For m>=50, lambda_2>m+6, `q_lambda>=1/4||grad||^2+c_m int|x||Psi|^2` on **closed** Dom(q_lambda), with `c_m=(m+9)/3-8sqrt6>0`. Compact inclusion and trivial kernel hold. |
| 8 | **[ORIGINAL CAR + B4 HIGHEST WEIGHT]** nonzero SU2-invariant CAR vacuum line; F^SU2 is G-stable; polynomial P highest of weight (2,2,0,0), color gauge invariant, not identically zero on shells | The same F, G, source color action and C; v lies in an actual G-irrep inside F^SU2 of some unknown dominant mu | `Psi_chi=chi(|x|)P^29 v` produces infinite independent C_lambda vectors of **one actually realized** lambda=mu+(58,58,0,0), lambda_2>=58. Do NOT assume mu=0 or that the illustrative weight (58,58,0,0) is physically realized. |
| 9 | **[STANDARD COMPACT-RESOLVENT SPECTRAL THEORY]** on the nonzero infinite-dimensional reducing Hphys_lambda, H_lambda>=0, resolvent compact, kernel zero | Same H from (1), and actual lambda from (8) | There are infinitely many strictly positive eigenvalues tending to infinity **of this source-defined H**. This does not assert a gap of full H, absence of essential spectrum, or identification with every other extension. |

**Main logical verdict:** The nine stages align under the original pinned definitions, and no incompatible rep, altered operator, hidden evaluation of generic L2 fibers or counterexample was found in this crosswalk. The **ordinary mathematical argument is coherent and connects the known classical and functional-analytic theorems to the exact source**, conditional on the correctness of the preceding independently reconstructed index/CAR/group-algebra proofs. This is evidence favorable to the source theorem, not a declaration that a full formal, independent-referee or physical-equivalence verification is complete.

## New authoritative general branching cross-check

**Roe Goodman and Nolan R. Wallach, _Symmetry, Representations, and Invariants_ (Springer, 2009), section 8.1, Theorem 8.1.3, printed page 365 (PDF page 384, zero-based screenshot page 383):**
https://webhomes.maths.ed.ac.uk/~v1ranick/papers/goodwallx.pdf

The theorem explicitly covers both **integral and half-integral** dominant weights of `Spin(2n+1)` and `Spin(2n)`, including genuine representations which do not descend to SO. It states multiplicity-one precisely under the interlacing `lambda_1>=nu_1>=lambda_2>=...>=lambda_n>=|nu_n|`. Specializing n=4 gives `nu_1>=lambda_2` for all the needed K-stabilizer constituent types. This is stronger support than a finite test or a citation that treats only tensorial SO representations; it is the correct independent published general result for the manuscript's mixed parity setting.

The newly committed Python stdlib regression `BFSS_HIGH_SPIN_B4_D4_BRANCHING_CROSSWALK_CHECK_0_1_0.py` implements **exact Fraction-valued B4 and D4 Weyl dimension products**, enumerates all interlacing K constituent weights, and checks `sum_dim_K=dim_G`, the minimum `nu_1=lambda_2`, and disjointness from oscillator weights up to level n=50 (with original M<=6). It was executed in the Project Lead's Python environment before commit. Results:

| Illustrative B4 lambda | K constituent count | Exact dim B4 = sum dim D4 | min nu1 |
|---|---:|---:|---:|
| (58,58,0,0) | 59 | 574614579257631 | 58 |
| (117/2,117/2,1/2,1/2) | 118 | 2511145897376256 | 117/2 |
| (60,59,1,0) | 236 | 7484363412345600 | 59 |
| (59,58,2,1) | 684 | 43680845816185600 | 58 |

**Scope guard:** All four are **illustrative dominant Spin(9) weights**, not a claim each occurs in the actual gauge-invariant Fock space. Their exact dimensional agreement corroborates the general theorem at the *quantitatively relevant* high weights and its half-integral sector. The theorem, not the four finite cases, licenses arbitrary actual mu and all lambda.

## Adversarial failure-mode assessment

1. **Group lifting:** A mere matrix action on 16 spinor indices would not suffice; the genuine product-group homomorphism on 48 original Majorana labels lifts jointly to Spin48 because the source domain group `Spin9 x SU2` is simply connected. Restriction of the one lifted homomorphism eliminates potential projective gauge/spin commutators. The center/2pi sign remains part of the genuine Spin9 representation.
2. **Cubic noncommutativity:** Do not commute theta operators. The direct original Q covariance uses only a *single theta* per term and transforms its coefficient; no reordering is required. The separate Q-square form expansion uses the CAR correctly. Lean R4D still has no compiled proof and kernel recursion timeout is not a mathematical counterexample.
3. **Averaging and domains:** Projectors on an infinite-dimensional isotypic component are bounded in the closed form norm; on C smoothness and compact support are preserved under compact group integration. The fiber evaluation is only on finite smooth orbit spans; after integrating the core inequality, closedness of gradients/weighted multiplication transports it to Dom(q_lambda). The weighted-domain identification and compact inclusion were derived in the previous audit, not hypothesized from a formal `H=-Delta+V+B` on a different domain.
4. **Physical sector existence:** The SU2 singlet *vacuum line* is not asserted Spin9-invariant. Only F^SU2 is Spin9-stable. Its nonzero G highest vector v need not have mu=0. Setting k=29 gives lambda2>=58 regardless. All radial bumps preserve the same chosen lambda.
5. **Spectral interpretation:** Compact resolvent and injectivity of high-isotype H_lambda yield an infinite sequence of positive normalized eigenstates of the **form-defined** H, even if those energies lie within the essential spectrum of unprojected H. To claim equality with a differently defined physical BFSS Hamiltonian, one must additionally establish operator/domain equivalence; this manuscript defines its H explicitly and does not prove uniqueness among all alternative realizations. The historical claim of contradicting a BFSS-era exclusion has interpretive assumptions independent of the mathematical result.

## Project Lead stopping rule and next independent falsification path

**Scientific summary:** Favorable internal consistency and a strong conventional mathematical proof route. The general branching dependency is now backed by the exact textbook theorem covering half-integer weights. **No material counterexample or missing source-to-source identity emerged.** But internal self-review is correlated; do not turn a sequence of favorable internal audits into a claim of independent refereeing or Lean certification. The public release's verification listing (checked 2026-10-12) records no released collection Lean formalization and no expert review. Neither the prior R4C green nor this exact branching experiment changes that.

**Recommendation:** Freeze repeated low-information finite checks for now. Prepare a deliberately adversarial specialist review packet with: the pinned original Q and H definitions; the source-exact group covariance formula; CAR/cubic signs; Goodman–Wallach half-integral branching; the actual domain transition; gauge vacuum and k=29 highest-sector argument; and a request to identify the **first mathematically invalid implication** or independently certify the full chain. An expert should specifically interrogate (a) the signed real Majorana/Spin48 lift convention, (b) isotypic smooth core density in the weighted q norm, and (c) the equivalence or non-equivalence to physically preferred self-adjoint BFSS realizations. Owner authorization is required before any external submission or upstream PR.

**Negative knowledge:** Do not assert the four illustrative high lambda types are physically realized; do not treat an ordinary published general branching theorem as a Lean object; do not repurpose R4D failure as spectral counterevidence; do not infer full-H spectral gap from high-sector compactness; do not silently substitute `etblink/math`, `openai/math` and FCP repos for one another.

**Governance:** FCP research branch only; main and both mathematical sources remain unchanged; PR #25 stays draft/unmerged. No redundant CI.
