> **Successor mathematical update (2026-10-12):** The earlier statement that the actual gauge-invariant Fock highest weight `mu` is unknown has now been superseded for one explicitly exhibited choice. The exact source 48-Majorana Spin(9) torus character has a unique top-weight line of weight `mu=(6,0,0,0)`. Since SU(2) commutes with the torus and has no nontrivial characters, this line is gauge invariant; it is also highest. See `BFSS_EXPLICIT_FOCK_GAUGE_SINGLET_MU6_AND_PHYSICAL_LAMBDA44_38_AUDIT_0_1_0.md`. Thus an **actual** k=19 physical isotype is `lambda=(44,38,0,0)`, with exactly four *candidate* one-step supercharge destinations. The original general minuscule and energy-cutoff results below remain valid; do not infer that all four candidates are populated or that this exhausts the invariant Fock space.

# BFSS S3L — Spin(9) minuscule supercharge-sector transitions and sharp high-spin protection

**Date:** 2026-10-12. **Project Lead research audit 0.1.0.** Verdict: `B4_SPINOR_TENSOR_RULE_DERIVED__EXACT_DIMENSION_TESTS_PASS__CONDITIONAL_SUPERPARTNER_HIGH_SPIN_PERSISTENCE__ENERGY_ANGULAR_CUTOFF__NO_LEAN_SPECTRAL_CERTIFICATION`.

## Primary-source identity and task

Pinned original BFSS definitions: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. The ORIGINAL Hilbert space is the SU2-fixed subspace of `L²(R27;F)`, with the actual 48 Majoranas and 16 source Q_alpha. Do not substitute an abstract or rescaled fermion system.

Inputs from preceding research audits, **still ordinary mathematical derivations rather than full Lean kernel certificates**:

1. `BFSS_ORIGINAL_GAUSS_SUPERSYMMETRY_AND_POSITIVE_E_CLIFFORD_MULTIPLICITY_0_1_0.md`: on the true physical smooth core `{Q_alpha,Q_beta}=2 delta_alpha,beta H_0` after discharging **both bosonic and fermionic** SU2 Gauss constraints; the supercharges have source-faithful closed self-adjoint realizations with `Q(w)^2=|w|²H`. Each preserves the positive-energy eigenspaces of H.
2. `BFSS_ORIGINAL_ALL_SPINOR_GLOBAL_COVARIANCE_AND_FORM_BRIDGE_AUDIT_0_1_0.md`: the genuine Spin9 action D rotates the 16 Q labels in the real spinor representation `S16` and commutes with the source Hamiltonian.
3. `BFSS_SHARP_ORIGINAL_FERMION_NORM_AND_IMPROVED_PHYSICAL_SECTOR_0_1_0.md`: the sharp full-F norm `C_B=16 sqrt(2/3)`, the admissible original Spin8 fermion-weight bound `M<=6`, and the sufficient high-spin confinement condition `lambda2>37` with `m=31`.
4. `BFSS_GAUGE_VACUUM_HIGHEST_WEIGHT_AND_UNIFORM_SECTOR_AUDIT_0_1_0.md`: the actual gauge-fixed nonzero high-weight source sector `lambda=mu+(38,38,0,0)` from the original gauge-invariant highest-weight fermion v and polynomial P with **k=19**. The underlying `mu` is unknown but dominant and satisfies `mu2>=0`.

**New scientific question:** which Spin9 types can the ORIGINAL supercharges reach from that high-weight sector, and do those direct partners retain the coercive confinement property?

## 1. Mathematical theorem — exact B4 spinor minuscule Pieri decomposition

The 16-real-dimensional complexified Spin9 spinor is the minuscule highest-weight module `S16=V_(1/2,1/2,1/2,1/2)` (type B4). Its weights are exactly

`delta=(s1,s2,s3,s4)/2, s_i in {+1,-1}`,

each with multiplicity one. For **every** dominant integral or half-integral Spin9 weight `lambda`,

`S16 tensor V_lambda = direct_sum_(delta: lambda+delta dominant) V_(lambda+delta)`,

**multiplicity one** for every retained summand. This is the classical minuscule tensor-product rule, NOT a new physics assumption. Explicit statement and proof route: https://alphabetamath.cc/lie-theory/tensor-product-multiplicities-and-littlewood-richardson ; minuscule classification of Bn spinors: https://en.wikipedia.org/wiki/Minuscule_representation .

For source-independent mathematical reasoning, multiply Weyl's alternating numerator `A(lambda+rho)` by the minuscule character `sum_delta exp(delta)`. This gives `sum_delta A(lambda+rho+delta)`. Because for any simple coroot the minuscule pairing with delta is in {-1,0,1}, and lambda is dominant, non-dominant `lambda+delta` makes `lambda+rho+delta` singular (its alternation vanishes). Dominant shifted terms are Weyl characters with coefficient one. This proves the rule simultaneously for genuine half-integral Spin9 types.

## 2. The real physical supercharge map and its exact support

Fix E>0, `E_E=ker(H-E)`, and the complete (possibly infinite-multiplicity) Spin9 isotypic subspace `H_lambda`. The map

`S16 tensor (E_E intersect H_lambda) -> E_E`, `w tensor psi |-> Q(w)psi`

is **Spin9-equivariant**, since D rotates Q's 16 labels as its spinor representation and commutes with H. Hence its image belongs to

`direct_sum_(nu in N(lambda)) (E_E intersect H_nu)`,

where `N(lambda)={lambda+delta: delta is one of the 16 half-sign patterns and lambda+delta dominant}`. Therefore for EVERY individual original supercharge Q_alpha and EVERY `psi in E_E intersect H_lambda`,

`P_nu Q_alpha psi=0` whenever `nu notin N(lambda)`.

This is a **selection rule**, not an assertion that every allowed destination is actually populated. For any nonzero real w, the already-derived physical superalgebra yields

`||Q(w)psi||²=E|w|²||psi||²`,

so every nonzero psi has a nonzero direct partner at the same E. It implies the exact sector sum rule

`sum_(nu in N(lambda)) sum_(alpha=1)^16 ||P_nu Q_alpha psi||² =16 E ||psi||²`.

The Spin9 central element `-1` acts on S16 as -I, so all allowed nu have **opposite** Spin9 central character from lambda: the integral/half-integral weight lattice toggles. This is also consistent with fermionic parity pairing. It is NOT valid to claim the entire 256-state Clifford module sits inside one lambda-isotype, or that all 16 Q images occupy distinct spin sectors.

## 3. New protection property for the actual source k=19 sector

For any lambda with `lambda2>=38`, all allowable nu have

`nu2 in {lambda2-1/2,lambda2+1/2}`,
`nu2>=37.5>37`.

So the ORIGINAL source's high-spin confinement inequality (and compact resolvent of every nonzero H_nu) applies to **every possible one-supercharge destination**. This holds for the real source sector `lambda=mu+(38,38,0,0)` with unknown dominant mu, because `lambda2=mu2+38>=38`. Unlike a qualitative supersymmetry pairing, this explicitly links the symmetry-branching spectral confinement threshold to actual source supercharge transitions.

**Precise limitation:** Only **one-step** transitions are controlled here. Subsequent applications can lower nu2 by another 1/2 and may eventually leave the high-spin regime; do **not** state the entire 256 multiplet stays high. Nor does compact resolvent of each one-step sector imply that the full H has compact resolvent.

## 4. Exact illustrative (NOT assumed physical) lambda and broader check

For the *illustrative* B4 dominant weight `lambda=(38,38,0,0)` (not asserted to be the actual source sector because fermion mu is not identified), exactly **three** tensor-product summands appear:

`(75/2,75/2,1/2,1/2)` with dimension 25267412020032,
`(77/2,75/2,1/2,1/2)` with dimension 57717519827968,
`(77/2,77/2,1/2,1/2)` with dimension 33054208643456.

Their sum `116039140491456` is **exactly** `16 dim V_(38,38,0,0)`. This is not an asserted decomposition of a BFSS eigenspace—only of `S16 tensor V_lambda`.

The companion exact-Python standard-library script enumerates all 16 signed weight shifts and verifies `16 dim V_lambda = sum_nu dim V_nu` using rational B4 Weyl dimension formulas on **seven** distinct integral/half-integral cases, including the illustrative high-weight one, weights with 8, 9 and all 16 allowed destinations, and trivial/vector/spinor benchmark types. All seven executed successfully. It also verifies the central-character toggle and the sharp >37 cutoff on cases with lambda2>=38. These finite checks are strong regression evidence for the classical rule but do not replace its Weyl-character proof.

## 5. Further conditional spectral inequality — energy limits second highest weight

Our previous sharp-fermion plus 27-dimensional Hardy argument gives, for any E-eigenvector in an actual nonzero high-spin type lambda with `lambda2>37`, using `m=ceil(lambda2-6)-1`:

`E >= K_H [ (m+9)/3 - C_B ]^(2/3)`,

where `K_H=(15/4) 5^(1/3)` and `C_B=16sqrt(2/3)`. Since `m>=lambda2-7`,

`E >= K_H [ (lambda2+2)/3 - C_B ]^(2/3)`,

whose bracket is positive for all permitted integer/half-integer `lambda2>37`. Rearrangement yields a practical angular spectral cutoff:

`lambda2 <= 48sqrt(2/3)-2 +3 (E/K_H)^(3/2)`.

For example E=3 in original manuscript units requires `lambda2<=38.1518358845...` for a high-spin E eigenstate; with half-integral weight lattice this excludes any high-spin lambda2>=38.5 at E=3. This is **conditional on** the original source high-spin coercivity, not a result about the full-H first weight coordinate `lambda1` or a global BFSS mass gap.

## 6. Scientific interpretation, limitations and recommended continuation

**New qualified result:** exact source-relevant Spin9 supercharge selection rule, a source-aligned proof that all **direct** superpartners of the actually constructed k=19 high-weight sector remain in confined discrete-operator sectors, and a quantitative angular cutoff at a specified energy. These connect the source-defined superalgebra and high-spin existence mechanism rather than simply rechecking already-known representations.

**Open scientific questions:** the actual gauge-invariant Fock highest weight mu has not been independently extracted, so the source physical spin sector remains `mu+(38,38,0,0)` rather than an explicitly identified single quadruple. Determining the actual `F^{SU(2)}` Spin9 decomposition would sharpen the selected lambda and possibly lower k. The general theoretical decomposition does not prove the BFSS physical supercharge map is nonzero in *each* allowed channel.

**Do not claim:** that all signed shifts appear among eigenstates, that the set of allowed neighbors is the entire 256-supermultiplet, that positive E eigenspaces are finite, that an illustrative lambda with mu=0 is physically realized, or that these new results are already Lean-certified. Refrain from retrying oversized R4B/R4D source assembly without a mathematically discriminating compression.

**Project Lead next decision:** Return to the **original gauge-invariant 48-Majorana Fock representation** to determine explicit irreducible Spin9 types inside `F^{SU(2)}`, preferably by exact finite character integration with low-memory arithmetic rather than full 2^24 Fock matrices. This has real potential to improve the quantitative physical-sector witness and is a better scientific use of time than another generic operator-algebra lemma.

**Governance:** Research branch only. No FCP main edits or merges; no etblink/math or openai/math edits; draft PR #25 remains unmerged. No CI workflow launched.
