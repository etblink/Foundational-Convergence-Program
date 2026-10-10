# BFSS SU(2) Gate-93 manuscript-to-source representation identity audit 0.1.0

**Date:** 2026-10-10 (US Pacific)  
**Scope:** Pinned primary manuscript/source and qualified FCP Lean source; no new Lean theorem claimed.  
**Disposition:** `ABSTRACT_INTERTWINER_ROUTE_IDENTIFIED__SOURCE_OPERATOR_EQUIVALENCE_NOT_FORMALLY_DISCHARGED`  
**Scientific scope:** Relative N=2 SU(2) BFSS only. No new eigenvalue theorem, empirical prediction, FCP framework promotion, or NFC/TOE inference.

## 1. Primary sources and immutable evidence

- Primary October 5, 2026 manuscript's **actual LaTeX source**, not a secondary summary:
  `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
  `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, Git blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`.
  Its PDF is registered in FCP as `SRC-OPENAI-MATH-F270B-BFSS-2026`.
- Primary upstream Lean:
  `lean/OAI/MathematicalPhysics/BFSS/Core.lean`, `GaugeCore.lean`, `ClosedProfiles.lean`, same immutable upstream commit.
- Accepted FCP math at **Gate #93**, Actions run 38069074087, exact accepted commit
  `e6dcc0f751252f9cdb609d3de61f67abe733a041`.
- FCP source register and independent T6 adjudication on main:
  `T6_CONFIRMED__NO_T2__MODEL_LEVEL_STRENGTHENING_ONLY`.
- Later Gate #94/#95 unqualified D2B29 is **not** part of the accepted proof chain.

## 2. Exact source-to-manuscript crosswalk

| Primary manuscript datum | Qualified FCP / pinned upstream object | Status and remaining burden |
|---|---|---|
| Relative SU(2), nine traceless bosonic matrices, color basis `T_a = sigma_a / sqrt(2)`, `f_abc = sqrt(2) epsilon_abc` (manuscript introduction, lines 68-83) | `pairedAlgebraData.color = normalizedPauli`; `Boson 2 = EuclideanSpace R (Fin 9 × Fin 3)`; `G2A.bosonGauge` is exact source matrix conjugation | Source side pinned; explicit coordinate/basis identification with manuscript notation remains to be stated as a bridge |
| Irreducible complex Clifford module with 48 self-adjoint theta generators satisfying `{theta_i,theta_j} = delta_ij` (lines 85-91) | `Fermion 2 = EuclideanSpace C (Fin (2^24))`, `G1A.pairedTheta`, `G1A.pairedTheta_CAR`, `G1A.pairedTheta_irreducible` | **Exact matching CAR, dimension and irreducibility certified**; cross-module unitary intertwiner not yet formalized |
| Real symmetric 9 Clifford gamma matrices with `{gamma_i,gamma_j} = 2 delta_ij I` (lines 92-97) | `SU2RealGammaProbe`, `pairedAlgebraData.gamma = FCP.BFSSGamma9.gamma` | A permitted manuscript representative can be fixed to the accepted gamma matrices. Do not assume **all** independent choices of Cl(9) gamma have a specified intertwiner; the odd-dimensional chirality/convention must be audited |
| Fermion gauge action: unique Spin(48) lift of `O_h tensor I_16` acting on irreducible Clifford module (lines 98-107) | `G4E.fermionGaugeUnitaryHom` is SU(2) unitary action; `G4H.pairedAlgebraData_fermion_adjoint` proves covariance of every one of the 48 generators; `G4IC2` supplies joint continuity; `G4J.pairedGaugeData` assembles the literal six-field source structure | Promising **abstract uniqueness argument** below. Exact Spin(48)-lift-to-paired-action intertwining has NOT been formalized |
| Physical `[L2(R^27;F)]^SU(2)`, smooth invariant core `[C_c^infty]^SU(2)` (lines 104-112) | Upstream `G.physicalSpace`, `G.invariantCore = physicalSpace.comap coreToL2`, `SmoothCore = TestFunction (top opens) Fermion top`; D2B10C physical L2 core density | The source uses exact gauge fixedness. Requires explicit identification of classical `C_c^infty` with the pinned Mathlib TestFunction and agreement of the physical action under the intertwiner |
| Core `Q_alpha = -i gamma^i_{alpha beta} theta^a_beta partial_ia + (1/2) f_abc x_i^b x_j^c gamma^{ij}_{alpha beta} theta^a_beta`, form `q=(1/16) sum_alpha ||Q_alpha psi||^2` (lines 113-133) | Pinned `M.charge`, `M.coreForm`; G4K9 and D2B14, D2B22 establish exact source massless h=1,m=0 and 1/16 form identities | Formal operator formula transport through the cross-module intertwiner still required; source normalization is pinned, not newly postulated |
| Closed gauge-restricted supercharge form and associated nonnegative self-adjoint `H` (lines 127-133) | D2B13 closes **restricted invariant smooth-core charge graph**; D2B17 true 16-component Hilbert charge column; D2B23-D2B26 exact form/domain/weak associated operator; D2B27-D2B28 `H_FCP = (1/16) T†T` genuinely self-adjoint on the paired physical Hilbert space | This is a meaningful accepted operator milestone; cannot identify it with the **different manuscript representation** until the unitary/core/operator intertwiner is proved |
| Infinitely many positive point eigenvalues tending to infinity (Theorem 1.1, lines 135-143) | Manuscript theorem, not formalized by FCP | NO transfer of spectral claim by bare analogy, matching dimension, or shared Hamiltonian formula |

## 3. Proposed exact mathematical mechanism — not a Lean certificate

Let `F_paper` be the manuscript irreducible complex Clifford module and
`F_FCP` be the accepted 24-orbital paired Fock representation, both
with the specified 48 self-adjoint CAR generators. In finite dimension,
the complex Clifford algebra with 48 generators is a full matrix algebra;
nonzero irreducible finite-dimensional *-representations are unitarily equivalent.

**First target (U1):** construct/identify a complex-linear unitary
`W : F_paper -> F_FCP` satisfying, for every `alpha,a`,
`W theta_paper(alpha,a) = pairedTheta(alpha,a) W`.
This uses matching normalization `{theta,theta}=delta`, not the
more commonly written convention `{gamma,gamma}=2 delta`.
`W` is unique up to a scalar phase.

**Second target (U2):** the manuscript Spin(48)-lift action `V_paper(h)`
and the paired exterior-Fock action `V_FCP(h)` implement the **same**
color rotations on each generator. Consequently,
`V_FCP(h) W V_paper(h)^{-1} W^{-1}` commutes with every FCP theta,
so irreducibility makes it a scalar unitary `z(h)`. The group
homomorphism laws and continuity make `z:SU(2)->U(1)` a continuous
character. SU(2) has no nontrivial characters, therefore `z=1`.
Thus a properly indexed `W` *also intertwines the fermionic gauge action*.

**Important checks:** (a) manuscript action conventions could differ
by inverse/transpose color indexing; verify using the actual displayed
adjoint-coefficient formula before stating U2; (b) match gamma
conventions rather than silently assuming all odd-dimensional
real Cl(9) representations are identical; (c) a subgroup Spin(48)
lift is a property of the manuscript representation, not a new
FCP axiom.

**Third target (U3):** combine W with the real 27-coordinate isometry.
The pointwise induced L2 unitary must preserve the gauge fixed-point
spaces and map the manuscript smooth invariant core onto the precise
pinned TestFunction invariant core. It must satisfy
`T_FCP (U psi) = (U^16) (Q_paper psi)` **on that core**.

**Fourth target (U4):** transport the graph closure and form closure
under the unitary, then obtain equality of associated self-adjoint
operators *including their natural domains*:
`U H_paper = H_FCP U`. Only with U1-U4 discharged can the
manuscript's positive-eigenvalue theorem legitimately be
transported to the formally constructed FCP operator.
This would be a formal identity/verification of an existing published
result, **not** a new independent proof of positive spectrum.

## 4. Negative knowledge / no-go routes

1. `dim F_paper = dim F_FCP` alone is insufficient; exact theta
   intertwining is needed.
2. Identifying abstract Lie algebra `su(2)` alone is insufficient;
   the group action, gauge-invariant core, and closed form must agree.
3. Agreement of *full-space* and *gauge-restricted* closures is not automatic;
   D2B13 addresses the source **restricted-core** closure only.
4. L2 norm-density is not the same as graph/form norm core density.
5. The D2B29 single positive radial trial does not prove positive
   eigenvalues, a gap, or manuscript identity and is not a dependency
   of U1-U4.
6. NFC's finite-incidence/compression analogy does not select this
   particular Clifford/SU(2) representation; do not conflate that
   side investigation with the source-first BFSS proof.
7. Clifford representation classification, phase uniqueness, and
   gauge-core transport must be separately instantiated in the
   **pinned Lean 4.34.1 / Mathlib API** before marking them compiled.
8. Do not claim the manuscript spectral theorem itself has been
   independently kernel-proved; the existing FCP result is an
   actual self-adjoint source Hamiltonian, not its spectrum.

## 5. Execution recommendation

- First qualify and warm-cache the exact Gate-93 D2B11-D2B28
  compilation without modifying any accepted theorem.
- Next bounded proof obligation: **U1**, an exact unitary between
  the two normalized irreducible 48-generator Clifford representations,
  followed by **U2**, the SU(2)-equivariant phase-rigidity theorem.
  Consult the pinned upstream/Mathlib Clifford-algebra and finite
  representation results; use a generic reusable theorem if one is
  already available.
- Do not gate a speculative U3/U4 theorem without successful U1/U2
  API/type checks. No automatic extra trial CI.
- Keep FCP main and its registered framework adjudications unchanged.

**Current factual status:**
`PINNED_PRIMARY_TEX_LOCATED = YES`; `SOURCE_REPRESENTATION_MATCHING_DATA = VERIFIED_BY_READ_ONLY_SOURCE_AUDIT`;
`UNITARY_CLIFFORD_INTERTWINER_IN_LEAN = OPEN`;
`SU2_SPIN48_ACTION_EQUIVARIANCE_IN_LEAN = OPEN`;
`MANUSCRIPT_CLOSED_OPERATOR_IDENTITY = OPEN`;
`MANUSCRIPT_POSITIVE_SPECTRAL_THEOREM_IN_LEAN = NOT_CLAIMED`.

## 6. Project Lead improvement after the first audit: direct manuscript instantiation

**Correction/optimization of Section 5, not an elevation of proof status.**
The primary manuscript says **"Let F be an irreducible complex Clifford module"**
with the specified 48 theta generators, and **"Fix real symmetric matrices" gamma**
subject to the Cl(9) CAR. The theorem is formulated for a chosen
representation satisfying those assumptions. Accordingly a universal
**between-two-arbitrary-modules** Lean classification theorem U1 is **not
logically required** for source-to-manuscript instantiation.

We can instead take the paper's `F` *to be* the kernel-qualified
`OAI.BFSSQuantum.Fermion 2` with `pairedTheta`, and take its gamma
matrices *to be* `FCP.BFSSGamma9.gamma`, which satisfy the manuscript's
stated real symmetry and anticommutation relations. This is a genuine
allowed choice of the paper's data, not a substitution of a new physics
model. Source evidence: `SU2BFSSG1APairedThetaProbe.lean` proves the exact
48-theta CAR and irreducibility, and `SU2BFSSFullAlgebraDataProbe.lean`
assembles the Pauli color/gamma/theta data into the actual upstream API.

The **first genuinely nontrivial matching obligation** can therefore be
reduced to **S1 — gauge-action identity on the same module**:

- Define/use the manuscript's unique Spin(48) lift of the representation
  `h -> O_h tensor I_16`, acting on the *already-constructed FCP Fermion 2*.
- Compare with the accepted `fermionGaugeUnitaryHom`. The FCP
  `G4H.pairedAlgebraData_fermion_adjoint` establishes the required
  48-generator covariance. Irreducibility implies that the pointwise
  difference from the Spin lift is scalar; both actions are continuous
  homomorphisms, so this scalar is a continuous character of SU(2), hence
  trivial. Check the precise inverse/order of the source
  `adjointCoefficient` matrix before treating the covariance as identical.
- No unsupported physical representation-uniqueness claim is needed.
  `Spin(48)` itself remains a **manuscript-defined** construction to
  match, not an extra axiom that can be inserted into FCP.

Then **S2** is the existing concrete boson representation/coordinate
identity; **S3** is exact core charge and invariant smooth-core
identification; **S4** is transport of the restricted graph closure,
quadratic form and associated self-adjoint Hamiltonian. The source
D2B13 restricted-core closure, D2B22 exact normalization, and D2B28
self-adjoint operator can then be reused verbatim.

This route potentially eliminates the costliest generic U1 task.
However, the released manuscript's proof of positive spectrum is not a
Lean theorem. Specializing an *external mathematical theorem* to the
FCP instance still does **not** amount to kernel-formalizing that theorem.
The FCP crosswalk can be proved; the spectrum remains manuscript-sourced
unless the spectral proof is independently formalized.

**Revised implementation priority:** S1 first; U1 retained as an optional
stronger abstraction only if the direct instantiation encounters an
actual representation-obstruction. This avoids building an unnecessary
universal library theorem merely for symmetry of presentations.

**Cache execution status:** Actions Gate #96, run 38073972157, **SUCCESS**
for exact 18 accepted D2B11-D2B28 modules; Gate-93 cache save step
succeeded, D2B29 was skipped by design. A separately checked warm-cache
restore remains the next CI confirmation before subsequent Lean proofs.

## 7. Exact pinned upstream Mathlib reuse for S1 scalar-commutant step

The pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
`lean/lake-manifest.json` fixes Mathlib at
`leanprover-community/mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612`.
At that **exact pinned commit**, the source file
`Mathlib/RepresentationTheory/AlgebraRepresentation/Basic.lean`
already proves
`IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed`:
under finite-dimensional irreducible module assumptions over an
algebraically closed field, every algebra-linear endomorphism is scalar.
This is the correct *existing* Schur-lemma infrastructure for S1.

The genuine missing glue is narrower: exhibit the accepted paired
48-theta generators as an action of their generated complex
associative operator subalgebra on `Fermion 2`, prove that its
submodules are exactly theta-invariant complex submodules, and
transfer the already accepted `pairedTheta_irreducible` to an
`IsSimpleModule` instance. Then apply the pinned Mathlib Schur theorem
rather than re-proving eigenvector/centralizer lemmas.

**Not yet proved in Lean:** construction/compatibility of that generated
algebra module, the manuscript's Spin(48) lift, SU(2) character
triviality, or the resulting representation equality. These are
concrete separate goals; source existence is not proof discharge.

## 8. S1A exact kernel acceptance — Gate #99

**Outcome: `S1A_PAIRED_48_THETA_SCALAR_COMMUTANT__KERNEL_ACCEPTED`.**

- Run: **BFSS SU2 Physical Domain Bridge #99**, GitHub Actions run
  `38074916490`, **SUCCESS**.
- Qualified proof-producing commit:
  `d8d91a356f9fdcaca02f627642bd0eb59fea8006`.
- New file:
  `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1ASchurScalarCommutantProbe.lean`
  with immutable blob `fd5f9e0f3d36a52e3a0222116022a11a83c387d7`.
- Explicit green compiler output:
  `'FCP.BFSSSU2PhysicalDomainS1A.pairedTheta_commutant_scalar' depends on axioms: [propext, Classical.choice, Quot.sound]`.
- The exact axiom/sorry gate emitted
  `S1A_PAIRED_48_THETA_SCALAR_COMMUTANT_PASS`.
- Gate #99 restored/verified the exact Gate-93 18-source cache; the
  D2B11–D2B28 accepted proofs did not recompile; unqualified D2B29
  remained intentionally skipped.

**Proved statement:** on the *literal* pinned `Fermion 2` of
dimension `2^24`, if a complex-linear endomorphism `L` commutes
pointwise with all 48 `pairedTheta alpha A` generators, then there
exists `z : Complex` such that `L v = z • v` for every `v`.
The proof uses the **accepted exact irreducibility** certificate of
the paired theta family and the pinned Mathlib theorem
`Module.End.exists_eigenvalue`. This is a substantive
representation-theoretic source bridge ingredient, not a spectral
result and not an invented physical assumption.

**New pin-aligned source finding:** the exact Mathlib snapshot includes
`Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean` and the
`spinGroup` algebraic group structure. But this file itself
**does not supply the required explicit global continuous lift**
`SU(2) -> Spin(48)` of the actual color action, nor does it prove
equivalence with FCP's `fermionGaugeUnitaryHom`. Existence of a
`spinGroup` type is not existence of the *particular lift*.

**Next real scientific bridge, named S1B:** establish equality of the
paper's actual Spin(48)-lift implementation and FCP's accepted
fermionic SU(2) action on the *same* paired module by exact covariance,
irreducibility, and triviality of SU(2) scalar characters. S1A supplies
the pointwise centralizer-scalar theorem; the actual lift and global
character elimination remain separate, undischargeable by S1A alone.
For a more efficient alternative, a direct derivation that the
accepted Fock exterior action implements the *unique* spin lift may
bypass general representation classification, but must identify the
same color-index action and group-law normalization.

**Scientific distinction preserved:** Gate #99 does **not** show that
the FCP Hamiltonian is unitarily equivalent to the manuscript
Hamiltonian, nor does it prove an eigenvalue. The accepted FCP
Hamiltonian at Gate #93 remains a real self-adjoint operator
construction; `U H_paper = H_FCP U` is still open.

**Operational posture:** The accepted exact Gate-93 cache was saved
in Gate #96 and independently warm-qualified in Gate #98. No further
cache repair is justified; future Lean modules should reuse it and
must not recompile the accepted D2B11-D2B28 chain. Keep FCP main,
the source register, and its framework comparison ledgers unchanged.

## 9. S1B relative gauge implementer rigidity — Gate #102

**Outcome: `S1B_SAME_COVARIANCE_IMPLEMENTER_SCALAR__KERNEL_ACCEPTED`.**
Accepted workflow run: **BFSS SU2 Physical Domain Bridge #102**,
[run 38075901151](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38075901151),
completed **SUCCESS** at proof-gate commit
`bab2f905a6d4cab8abb60e6bbffa95ea2e1799b6`.
The actual compiled Lean source:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1BRelativeGaugeImplementerProbe.lean`,
Git blob `4bf6bb015c68b7a1702fefbc908c12a88ad656b1`.

The exact pinned compiler reports:

```text
'FCP.BFSSSU2PhysicalDomainS1B.theta_covariant_implementer_scalar'
  depends on axioms: [propext, Classical.choice, Quot.sound]
S1B_THETA_GAUGE_IMPLEMENTER_SCALAR_UNIQUENESS_PASS
```

**Proved statement (conditional):** Given the actual `GaugeGroup 2` element
`g` and an *assumed* invertible complex-linear candidate
`V : Fermion 2 ≃ₗ[ℂ] Fermion 2` satisfying the same indexed 48-theta
adjoint-color covariance as the **accepted** exterior-Fock action at `g`,
there exists a complex scalar `z` such that for all `v`,
`V v = z • fermionGaugeLinearEquiv g v`.

This is a non-vacuous exact representation-rigidity theorem using Gate #99
S1A scalar commutant and accepted G4H exact theta covariance. It is **not**
the construction of the manuscript's Spin(48) lift, nor does it prove that
the manuscript action satisfies the explicit S1B candidate hypothesis.
Removing the possible scalar **globally over SU(2)** requires both the
paper-action construction/identification and continuous-character
triviality (or an exact source-normalized equivalent).

The accepted Gate-93 D2B11–D2B28 cache was restored and verified;
the 18 accepted modules were not recompiled. The unqualified D2B29 trial
was skipped. **No spectral transfer or positive-eigenvalue theorem in Lean
is claimed.** FCP main, source register and FCP comparisons remain unchanged.

**Next discriminating bridge:** verify the exact `O_g ⊗ I₁₆` theta covariance
of the manuscript's defined Spin(48) lift on the *same* Fock module and
the correct adjoint-matrix index convention. Apply S1B to obtain a
pointwise scalar, and then prove the scalar is one using exact
group/continuity infrastructure. Do **not** assume the existence of the
specific lift merely from the pinned generic `spinGroup` type.
