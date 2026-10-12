> **Numerical-threshold supersession (2026-10-12):** The exact SU2 x Spin9 Fock decomposition and method-relative k18 calculation below remain mathematically valid **for the previous >37 confinement bound**, but the bound itself has been substantially improved by keeping the original color-sum fermion norm and allocating more kinetic energy to the transverse oscillator. The new source inequality gives **lambda2>22**, and a minimal method-relative **k=10** witness `mu=(3,3,1,0), lambda=(23,23,1,0)`; a smaller representation choice is k11, lambda=(24,24,0,0). See `BFSS_COLOR_ADAPTED_M16_CONFINEMENT_AND_K10_SECTOR_AUDIT_0_1_0.md`. Do not repeat k18 as the current optimal degree.

# BFSS SU(2) relative model — complete gauge-invariant original Fock character and improved minimal-degree high-spin witness

**2026-10-12 — Project Lead mathematical research, 0.1.0.**  
**Acceptance:** `SU2_X_SPIN9_CHARACTER_PROJECTED_EXACTLY__32_TYPES_35_COPIES__366080_DIM_INVARIANT_FOCK__BEST_P_EXPONENT_18__PHYSICAL_LAMBDA_38_38_0_0__SPECTRAL_APPLICATION_CONDITIONAL__NOT_LEAN_CERTIFIED`.

## Authority, scope and principal finding

Pinned original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. F is the **same original irreducible 48-Majorana** complex Clifford module `{theta_A,theta_B}=delta_AB` and gauge action is the source's genuine SU2 lift of the adjoint color `R3`, commuting with the source's genuine Spin9 action. We neither changed F nor replaced the Hamiltonian.

The predecessor `BFSS_EXPLICIT_FOCK_GAUGE_SINGLET_MU6_AND_PHYSICAL_LAMBDA44_38_AUDIT_0_1_0.md` built one valid gauge-singlet highest weight `mu=(6,0,0,0)` and `k=19` sector `lambda=(44,38,0,0)`. **That construction remains correct as a witness but is not optimal for either the polynomial exponent or target representation size.**

**New exact finding:** On the ORIGINAL Fock module, `F^SU2` has complex dimension **366,080** and decomposes into **32 distinct Spin9 highest-weight types, 35 total irreducible copies**. In particular the `mu=(2,2,0,0)` irrep occurs once and has dimension **495**. The source's gauge-invariant polynomial P of Spin9 highest weight (2,2,0,0) raised to **k=18** gives a nonzero physical highest-weight sector

`BOX: lambda=mu+(36,36,0,0)=(38,38,0,0)`.

It satisfies the previous sharp original-source confinement sufficient condition `lambda_2>37`. This improves polynomial degree from 76 to **72** and lowers the target irrep dimension from `107060263101792` to **`7252446280716`**, a factor of ~**14.762** reduction in representation size. This is a mathematical dimension comparison, not a claim that either large representation has been enumerated as wavefunctions.

## 1. Exact source SU2 x Spin9 character, no gigantic Fock matrices

Let the eight positive representatives of the **real** original Spin9 spinor label weights be

`omega_s=(epsilon1+s2 epsilon2+s3 epsilon3+s4 epsilon4)/2`, with `s2,s3,s4 in {+/-1}`.

For each omega_s, the **three** color modes transform as the complexification of the original SO3 adjoint representation `3` of SU2. On the entire Fock space, its Clifford character can be written as eight independent exterior-algebra factors with the correct Clifford vacuum weight:

`ch(F)(z,t)=prod_(s in {+/-1}^3) e^(-3 omega_s/2) [1+chi_3(z)e^(omega_s)+chi_3(z)e^(2omega_s)+e^(3omega_s)]`,

where `chi_3(z)=z^2+1+z^-2` for the SU2 *fundamental* torus variable z. Each block has exactly eight terms (dimensions 1+3+3+1); the full product has `8^8=2^24=16777216` states with multiplicity. Both source group actions are represented simultaneously—this is not the Spin9 character prior to projection.

**SU2 singlet extraction:** For any genuine finite-dimensional SU2 character with only even torus exponents, the multiplicity of the trivial SU2 representation is exactly `[z^0]-[z^2]`. Apply it **coefficientwise** to the Spin9 torus variables in the displayed Fock product. This is the SU2 Weyl/Haar character projection; it does not confuse a torus weight zero with an actual gauge singlet. In particular, naively retaining only z^0 would overcount non-singlet integer-spin SU2 representations.

The resulting singlet character has nonnegative integer Spin9 weight multiplicities, dimension **366080**, and 6137 nonzero distinct torus weights. The full unprojected Spin9 character has 6649 distinct torus weights.

## 2. Three independent arithmetic consistency certificates

Companion pure-Python regression `BFSS_EXACT_SU2_SINGLET_SPIN9_FOCK_DECOMPOSITION_0_1_0.py` was executed and all assertions passed in ordinary integer/Fraction arithmetic:

**(A) Independent SU2-only dimension.** Ignore Spin9 entirely. For each block `exterior^*(3)` the SU2 character is `2(1+chi_3(z))=4+2z^2+2z^-2`. Its eighth power has `[z^0]=3294720`, `[z^2]=2928640`, giving `3294720-2928640=366080`. Its character dimension at z=1 is `8^8=2^24`.

**(B) Independent original ungauged Spin9 weight character.** Multiply **24 separate Clifford sign pairs** `(e^(omega_s/2)+e^(-omega_s/2))` with three copies per omega_s, as in the earlier original Fock construction. The resulting 6649 Spin9 torus weight multiplicities match the sum over SU2 weights of our new two-group character **entry by entry**, not merely the total dimension.

**(C) Independent Spin9 dimension reconstruction.** Apply the B4 Weyl alternating denominator with `rho=(7/2,5/2,3/2,1/2)` and all 384 signed permutations. For each dominant highest weight mu extract multiplicity

`mult(mu)=[e^(mu+rho)](ch(F^SU2) * sum_(w in W_B4) det(w)e^(w rho))`.

All multiplicities are nonnegative integers. There are exactly 32 positive irreducible types and 35 copies. Using exact rational B4 Weyl dimension products, `sum_mu mult(mu)dim(V_mu)=366080` **exactly**. This cross-check rules out a mere torus-weight candidate being mistaken for an actual highest irreducible.

## 3. Complete highest-weight decomposition (source original F^SU2)

Weights are dominant B4 quadruples; all are in the source Spin9 convention. 'Copies' are representation multiplicities, not weight multiplicities.

| Spin9 highest weight | Copies | Dimension |
|---|---:|---:|
| (6,0,0,0) | 1 | 2508 |
| (5,1,1,0) | 1 | 20196 |
| (9/2,3/2,3/2,3/2) | 1 | 56320 |
| (9/2,1/2,1/2,1/2) | 1 | 5280 |
| (4,2,2,0) | 1 | 44352 |
| (4,2,0,0) | 1 | 8748 |
| (4,1,1,1) | 1 | 12375 |
| (4,0,0,0) | 1 | 450 |
| (7/2,5/2,3/2,1/2) | 1 | 65536 |
| (7/2,3/2,3/2,1/2) | 1 | 19712 |
| (7/2,3/2,1/2,1/2) | 1 | 9504 |
| (3,3,3,0) | 1 | 23595 |
| (3,3,1,0) | 1 | 15444 |
| (3,2,2,1) | 1 | 25740 |
| (3,2,1,1) | 1 | 15444 |
| (3,1,1,0) | 2 | 2457 |
| (3,1,0,0) | 1 | 910 |
| (5/2,5/2,3/2,1/2) | 1 | 12672 |
| (5/2,3/2,3/2,3/2) | 1 | 4608 |
| (5/2,3/2,3/2,1/2) | 1 | 5040 |
| (5/2,3/2,1/2,1/2) | 1 | 2560 |
| (5/2,1/2,1/2,1/2) | 1 | 576 |
| (2,2,2,0) | 2 | 1980 |
| (2,2,1,1) | 1 | 2772 |
| **(2,2,0,0)** | **1** | **495** |
| (2,1,1,1) | 1 | 924 |
| (2,0,0,0) | 1 | 44 |
| (3/2,3/2,3/2,3/2) | 1 | 672 |
| (3/2,3/2,1/2,1/2) | 1 | 432 |
| (3/2,1/2,1/2,1/2) | 1 | 128 |
| (1,1,1,0) | 2 | 84 |
| (0,0,0,0) | 1 | 1 |

**One further mathematical discovery:** The *original Fock module* has an actual SU2- AND Spin9-invariant singlet. Earlier demonstrations only required an SU2-invariant vacuum line and did **not** prove that vacuum was Spin9-invariant. The completely decomposed character now shows a **separate Spin9 scalar** `mu=(0,0,0,0)` inside `F^SU2`. Do not conflate these distinct vectors or claim that the original CAR annihilator vacuum itself is invariant under Spin9.

## 4. A qualified optimality theorem for the source polynomial method

The previous source-derived optimal full-F pointwise bound `||B(x)||<=16sqrt(2/3)|x|` and admissible fermionic stabilizer-weight `M<=6` give the sufficient oscillator cutoff `lambda_2>37`, via m=31 in the *paper's chosen kinetic split*.

For an actual original gauge-invariant fermionic highest irrep `mu` from the complete list, the manuscript's **specific** gauge-invariant highest polynomial P has weight `(2,2,0,0)`. Therefore `P^k v_mu` has `lambda_2=mu_2+2k`. The decomposition proves `max_mu mu_2=3`, attained by `(3,3,3,0)` and `(3,3,1,0)`. Thus `k<=17` gives `lambda_2<=3+34=37` for EVERY such original Fock highest vector. It cannot satisfy the strict sufficient condition.

Conversely **k=18 works**, since `mu=(2,2,0,0)` occurs and yields `lambda_2=38`. Exactly 19 of the 32 highest types permit k=18, while the remaining 13 require k=19 for this sufficient condition. This proves **k=18 is minimal within the exact source P^k times gauge-invariant Fock-highest-vector method**, under these quantitative constants. It is NOT a theorem that no other gauge-invariant bosonic polynomial, angular mechanism, sharper physical-fermion operator bound, or revised oscillator estimate can do better.

Among all 32 choices at their own minimum admissible k, the dimension `dim V_(38,38,0,0)=7252446280716` is smallest; it is achieved using `mu=(2,2,0,0),k=18` or using the separate `mu=(0,0,0,0),k=19`. The latter is a useful equivalent way to reach the **same** physical isotype with a higher-degree polynomial and an actual Spin9 fermion singlet. We have identified a highest-weight *subrepresentation*, not explicitly written a 495-component fermionic vector in the original oscillator basis.

The **source-defined physical core** contains infinitely many linearly independent compactly supported smooth gauge-invariant states `chi_j(|x|)P(x)^18 v_mu` within **one** actual Spin9 isotype `lambda=(38,38,0,0)`, as before. Nonzero radial shells follow from the pinned P ray `P(t(e1,e3,0))=t^4`; disjoint radial bumps yield orthogonality. If the preceding original source Spin9 symmetry, branching, coercivity and closed operator proofs hold, the high-spin sector has compact resolvent, trivial kernel, and consequently infinitely many positive eigenvalues. The full spectral application remains **conditional on those prior source proofs** (no end-to-end Lean certificate or external referee report).

For a state in `lambda=(38,38,0,0)`, the already qualified Spin9 minuscule tensor rule allows exactly THREE one-supercharge partner irreps:
`(75/2,75/2,1/2,1/2)`, `(77/2,75/2,1/2,1/2)`, `(77/2,77/2,1/2,1/2)`.
Every one has second coordinate 37.5 or 38.5 and so remains within the sharp high-spin sufficient confinement regime. **No assertion that all three partner channels are populated.**

## 5. Project Lead decision and preserved negative knowledge

**Qualified substantive advancement:** exact complete original gauge-invariant Fock Spin9 decomposition; new physical singlet; improved minimal-degree polynomial sector; ~14.76-fold smaller target Spin9 representation; proof of *method-relative* optimality k>=18. No costly `2^24` full matrices or speculative Lean CI.

**Do not claim:** only weight-zero gauge states survive, the SU2-only vacuum is Spin9 invariant, k=18 is universally optimal for all high-spin confinement strategies, these large representative dimensions equal eigenspace multiplicity, the different constructions yield independent spectral eigenvalues, or the complete original source theorem has been Lean-certified. Do not promote a computational character extraction into an explicit written CAR basis vector without actually constructing one.

**Next scientific work:** determine an explicit source-fermion highest vector in the 495-dimensional `(2,2,0,0)` irrep using gauge-invariant CAR creation combinations, or look for a qualitatively different bosonic highest-weight polynomial/energy estimate that can push the exponent below 18. Prioritize mathematical value over unnecessary CI repetition.

**Permissions:** Commit FCP research branch only, leave FCP main, etblink/math and openai/math untouched; PR #25 stays draft and unmerged.
