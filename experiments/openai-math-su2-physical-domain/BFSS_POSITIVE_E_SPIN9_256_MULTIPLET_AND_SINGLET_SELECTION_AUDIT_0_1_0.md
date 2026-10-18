# BFSS S3L — exact Spin(9) character decomposition of positive-energy 256-supermultiplets and a singlet selection rule

**2026-10-12 | Project Lead original-source mathematical research 0.1.0**  
Disposition: `EXACT_SPIN9_CHARACTER_DECOMPOSITION_PASS__NEW_CONDITIONAL_ROTATIONAL_SINGLET_MULTIPLICITY_BOUND_11264__GRADED_CARTAN_MOMENTS_VANISH_THROUGH_ORDER7__SOURCE_SUPERALGEBRA_DEPENDENCY_OPEN_TO_LEAN`.

## Question and dependency boundary

Owner authorized further mathematics on the active FCP research branch. We test whether the 256-dimensional positive-energy Clifford multiplet found in `BFSS_ORIGINAL_GAUSS_SUPERSYMMETRY_AND_POSITIVE_E_CLIFFORD_MULTIPLICITY_0_1_0.md` has a definite `Spin(9)` representation content, and whether that creates a meaningful new spectral selection rule.

**Exact original pinned BFSS model:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`. The original physical Hilbert space is the `SU(2)` gauge invariant subspace of `L2(R^27;F)` with 48 Majoranas, 16 original Q_alpha and a genuine `Spin(9)` action on F and x.

**Required live-source hypotheses (not replaced by algebraic toy assumptions):** On the actual gauge physical Hilbert space the self-adjoint supercharges obey `{Q_alpha,Q_beta}=2 delta_alpha,beta H` with the correct domains, and the `Spin(9)` unitary action sends their 16 labels through its genuine real spinor representation `S_16`. These claims have detailed ordinary-mathematical derivations and a 36,864-entry exact gamma regression in the predecessor's `BFSS_ORIGINAL_GAUSS_SUPERSYMMETRY_AND_POSITIVE_E_CLIFFORD_MULTIPLICITY_0_1_0.md`; they are **not a fully accepted original-source Lean kernel theorem**. We additionally re-ran the predecessor's Fierz identity independently and found 36,864/36,864 exact agreements.

The following character identity is an **unconditional representation-theoretic result** about the embedded Spin9 in Spin16. Its application to BFSS physical eigenspaces is **conditional on the genuine original superalgebra and covariance**. It is familiar from the eleven-dimensional supergravity multiplet; do not misrepresent it as newly discovered representation theory or identify BFSS quantum-mechanical eigenvectors literally with spacetime field excitations.

## 1. Canonical Cl16 factorization of the full positive-energy eigenspace

Fix any E>0 and let `E_E=ker(H-E)` be the **complete** physical E-eigenspace, not an individual high-spin isotypic slice. The previous original-source supersymmetry derivation gives, on E_E, `Gamma_alpha=E^(-1/2) Q_alpha` with Hermitian CAR `{Gamma_alpha,Gamma_beta}=2 delta_alpha,beta I`.

The complex Clifford algebra `Cl_16(C)=Mat_256(C)` has one irreducible 256-dimensional module W. Its unital representations on any Hilbert space E_E factor unitarily as

`E_E ~= W tensor M_E`,

with a possibly infinite-dimensional multiplicity Hilbert space `M_E`. This is the faithful algebraic content of the 256-fold degeneracy theorem, not a claim E_E has dimension exactly 256.

The Spin9 action on the 16 supercharges gives a homomorphism `Spin(9)->SO(16)`. Since `Spin(9)` is simply connected, it lifts to the spin covering `Spin(16)->SO(16)`, giving a genuine (not projective) action `L(g)` on W implementing the same conjugation of the Clifford generators. Therefore on W tensor M_E,

`D_g=L(g) tensor R_E(g)`.

Indeed `(L(g)^* tensor I)D_g` commutes with every Gamma_alpha and thus lies in the commutant of `Mat_256 tensor I`, which is `I tensor B(M_E)`. Group multiplication proves R_E is a genuine unitary representation of Spin9 (continuous in the inherited topology). The `Spin(9)` action on the physical E-eigenspace is **not necessarily L by itself**: the extra multiplicity representation R_E is essential.

## 2. Exact chiral Spin(9) characters: 44 + 84 versus 128

Choose orthonormal torus-weight coordinates `epsilon1..epsilon4` for Spin9 (type B4). The nine-vector V9 has weights `0, +/-epsilon_i` (nine total); its 16-real-spinor representation S16 has weights `( +/-epsilon1 +/-epsilon2 +/-epsilon3 +/-epsilon4 )/2` (16 total). Pair the latter into eight `+/-mu_j` by choosing the eight weights with epsilon1 coefficient +1/2:

`mu_j=(epsilon1+s2 epsilon2+s3 epsilon3+s4 epsilon4)/2`, with `s2,s3,s4 in {+/-1}`.

The Spin16 Clifford module W has weights `(1/2)sum_j sigma_j mu_j`, `sigma_j in {+/-1}`, 256 sign choices. Chiral parity is the parity of the number of negative sigma_j. Its two 128-dimensional weight characters are

`chi_even=(1/2)[prod_j(e^(mu_j/2)+e^(-mu_j/2)) + prod_j(e^(mu_j/2)-e^(-mu_j/2))]`,

`chi_odd=(1/2)[prod_j(e^(mu_j/2)+e^(-mu_j/2)) - prod_j(e^(mu_j/2)-e^(-mu_j/2))]`.

The **exact Laurent-weight identities**, verified by a complete coefficient-by-coefficient enumeration (not numeric torus samples), are:

`chi_even = chi_(Sym²_0 V9) + chi_(Lambda³ V9)` and
`chi_odd = chi_(V9 tensor S16) - chi_(S16)`.

The `Spin(9)` irreducible decomposition therefore is

`W_even | Spin9 = V_(2,0,0,0) (dim44) direct_sum V_(1,1,1,0) (dim84)`,
`W_odd | Spin9 = V_(3/2,1/2,1/2,1/2) (dim128)`.

In conventional terminology these are symmetric traceless rank-2 tensors (44), three-forms (84), and gamma-traceless vector-spinors (128). They are precisely the standard `44+84+128` eleven-dimensional *massless* supergravity Spin9 representation contents: Bernard de Wit, `Supergravity`, 2002, Section 2.2.1, https://webspace.science.uu.nl/~wit00103/lhlect1.pdf, PDF page 8 (zero-based page 7). This external reference corroborates the decomposition; the exact weight enumeration below checks it independently.

**Grading warning:** "even" and "odd" above are canonical *Cl16 chirality* on W. The original BFSS fermion-parity involution may be `chirality_W tensor parity_M`, where parity_M is an involution on M_E. Thus assigning 44+84 universally to physical bosons without examining the actual multiplicity grading is unjustified. Spin9 chirality decomposition itself is unambiguous up to which chirality is named even.

## 3. New conditional BFSS selection rule: a rotational scalar implies >=11,264 states

Neither `44`, `84`, nor `128` contains a Spin9 singlet. Therefore a **minimal** 256-dimensional W multiplet has **no rotation-invariant vector**.

More strongly, since `E_E=W tensor M_E`, the Spin9 singlet space is

`(E_E)^Spin9 ~= Hom_Spin9(W^*,M_E)`.

The three distinct irreps 44,84,128 are self-dual. To have any singlet, `M_E` must contain at least one of `44`, `84`, `128` (as a subrepresentation). Since the smallest such irrep has dimension 44,

`dim M_E>=44`, and consequently

`BOX: if E>0 and ker(H-E) contains a Spin9 singlet, then dim ker(H-E)>=256*44=11264.`

This holds even if the eigenspace is infinite dimensional (then the cardinal lower bound is automatic). It does **not** assert the existence of an E>0 singlet, finite multiplicity of E, or that the minimal bound is attained. It is a genuinely new **conditional consequence for BFSS eigenspaces** from the previously derived superalgebra, even though the underlying representation theory is classic.

## 4. Higher-order graded Cartan supertraces: cancellation through degree seven

The chirality character difference is

`chi_even-chi_odd = prod_(j=1)^8 (e^(mu_j/2)-e^(-mu_j/2))`.

At `exp(tH_torus)` for any Cartan element, each factor starts linearly in t, so the difference vanishes to **at least eighth order** as t->0. Hence for the canonical 256 multiplet,

`Tr_W[chirality_W J^n]=0` for all integers n=0,1,...,7, for every Spin9 Cartan generator J.

For a positive E eigenspace with finite multiplicity, the true fermion parity grading (as above) gives

`Str_(E_E)(e^(tJ))=(chi_even(t)-chi_odd(t)) Str_(M_E)(e^(tJ))`,

up to a fixed overall sign from the chirality convention. It follows that

`BOX: Str_(E_E) J^n=0 for n<8`

provided the E-eigenspace is finite-dimensional. The first order not forced to vanish by this argument is n=8. The regression checks a concrete generic Cartan direction `J=(1,2,4,8)` **exactly in rational arithmetic**: all 0..7 graded moments vanish, while the eighth equals `638512875/2` in the weight-coordinate normalization of the test. This explicit eighth-order nonzero value is for the 256 factor W, **not a measured BFSS spectral supertrace**.

The even/odd dimensions match 128/128 automatically, and the higher cancellations are strictly stronger than parity pairing. If the full E-eigenspace is infinite-dimensional, ordinary operator traces need not exist and no unregularized supertrace is asserted.

## 5. Independent executable certificate and limitations

Companion script `BFSS_SPIN9_256_CHARACTER_AND_GRADED_TRACE_EXACT_0_1_0.py` uses only Python standard library. All weights are stored as integer quadruples scaled by 4, with exact multiplicity maps `Counter`. It constructs 9 vector weights, 16 original Spin9 spinor weights, chiral 128+128 Clifford weights, 44 via `Sym²(V9)-1`, 84 via `Lambda³(V9)`, and 128 via `V9 tensor S16 - S16`. It verifies **equality of every weight multiplicity**, not just aggregate dimensions, and exact 0..8 graded moments using `Fraction`. The script was run before committing: all assertions passed. It runs independently of Lean, NumPy, FCP's large concrete `SourceEnd` type and any supposed supergravity physical identification.

**Source-discharge requirement remains:** Applying this theorem to original BFSS positive-energy eigenvectors still relies on the previous original-source all-spinor Gauss law and self-adjointness theorem, which is ordinary mathematics supported by explicit gamma arithmetic but not an accepted full Lean kernel certificate. The character identity alone is not evidence that an eigenvalue exists.

## 6. Practical research priorities and negative knowledge

- Do not multiply the 44,84,128 representations by scalar orbital multiplets and assume *all* high-spin sectors stay within one 256 factor. The nontrivial multiplicity R_E changes the Spin9 decomposition of the *full* eigenspace.
- Do not assert positive-energy BFSS eigenstates are massless eleven-dimensional field particles. The shared little-group representation is an algebraic correspondence, not identical Hamiltonians or physics.
- The 11,264 lower bound is **conditional on the existence of a positive-energy Spin9 singlet** and the physical superalgebra. The earlier high-spin construction does not generate a Spin9 singlet, nor imply that one exists.
- Do not use a finite-dimensional trace identity for an infinite-multiplicity full positive eigenspace without specifying a regularized trace.
- For a future lean source formalization, the quickest informative path is the previously isolated single diagonal Gauss-square + Clifford identity and a reusable finite representation module; avoid reentering the R4B/R4D gigantic raw assembly without a new tactic compression plan.
- Next mathematically meaningful target: derive **explicit Spin9 superpartner selection rules** for a constructed high-weight lambda, using tensor-product weights of S16 and/or a nontrivial bound on the multiplicity representation M_E. Avoid repeating known character facts.

**Governance:** research branch only, keep FCP main, etblink/math, openai/math untouched, draft PR #25 unmerged. No CI runs launched.
