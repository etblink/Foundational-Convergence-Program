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

## 10. Exact 24-mode special-unitary bridge — S1C prospective

**Target:** show that the actual accepted complex 24-orbital Fock mode matrix
`complexOneParticleMatrix g` has determinant 1, for every
`g : GaugeGroup 2`. This is not a substitute model.

The exact already accepted G3-B definition is
`modeReindex (Matrix.kronecker 1 (adjointColorMatrix g))`,
where the identity is on `Fin 8` and the real color block is
a 3×3 orthogonal matrix, with input/output index orientation certified
in G3-A. The accepted G3-C complex matrix is the real-to-complex
scalar extension of that *same* one-particle matrix.
These facts are sufficient, in ordinary matrix algebra, to prove
```text
det(oneParticleMatrix g)
  = det(I_8 ⊗ adjointColorMatrix g)
  = det(adjointColorMatrix g)^8
  = (det(adjointColorMatrix g)^2)^4
  = 1.
det(complexOneParticleMatrix g) = 1.
```
Here the eighth power matters: orthogonality gives det²=1 **without
needing** a separate proof that each 3×3 block individually has
orientation +1. This is the mathematically minimal route.

**Pinned source reuse** for kernel checking:
`Mathlib/LinearAlgebra/Matrix/Kronecker.lean`:
`Matrix.det_kronecker`;
`Mathlib/LinearAlgebra/Matrix/Reindex.lean`:
`Matrix.det_reindexAlgEquiv`;
`Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean`:
`Matrix.det_mul`, `Matrix.det_transpose`, `RingHom.map_det`.
These are at exact pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
A proof candidate lives in
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe.lean`,
and is tested by the physical-domain workflow. **Do not promote its
Lean certificate without a passing exact gate and axiom check.**

**Why this matters to S1:** standard spin representation theory
identifies the restriction of the Spin(2m) spinors to SU(m) with
the exterior powers of ℂ^m, for the usual compatible polarization.
For U(m), a determinant square-root character modifies the exterior
action. At m=24, source-derived det=1 removes that twist in the
canonical SU(24) embedding. This strongly motivates a direct
source-polarization route identifying the accepted exterior-Fock SU(2)
action with the manuscript's Spin(48) lift. A useful independent source
is the lecture notes
[Lie Groups (Imperial College), spin representation restriction]
(https://www.ma.imperial.ac.uk/~skdona/LIEGROUPSCONSOL.PDF).

**Important gap:** a generic `Mathlib.spinGroup` type, the SU(24)
determinant theorem, and an exterior-Fock action are **not in themselves**
a Lean proof of the actual *specific* spin-cover embedding and
spinor-representation equality. The remaining S1 obligation still
requires that explicit lift/implementation and its generator
covariance (or a fully justified equivalent standard-construction
transport), with no hidden central sign/phase.

**Potential shortening:** the accepted FCP source also proves
`fermionVacuum_ne_zero` and `fermionVacuum_unitary_invariant` in
G4K2A. Therefore if the manuscript spin lift is identified in the
same exterior polarization and shown to fix this **same** nonzero
vacuum, S1B's scalar necessarily equals 1 *pointwise*, avoiding a
separate global SU(2)-character formalization. Vacuum preservation
by the manuscript lift is still an obligation; do not assume it.

## 11. Gate #108: exact source one-particle determinant-one, kernel accepted

**Outcome: `S1C_EXACT_SOURCE_24_MODE_DET_ONE__KERNEL_ACCEPTED`.**
[Physical Domain Bridge #108](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38077555933),
run `38077555933`, **SUCCESS** at exact proof commit
`fc28cdf02064cebe2e01e6ddb829ca3a32767921`.
Its three theorems:
`adjointColorMatrix_det_sq_one`,
`oneParticleMatrix_det_one`, and
`complexOneParticleMatrix_det_one` compiled under the exact pinned
Lean/Mathlib toolchain with only `propext`, `Classical.choice`,
and `Quot.sound`. The workflow accepted
`S1C_PAIRED_24_MODE_SU24_DETERMINANT_ONE_PASS`.
The accepted Gate-93 cache hit and all D2B11–D2B28 objects
were reused; no unqualified D2B29 was compiled.

This proves that the *actual* accepted G3-C one-particle SU(2) matrix,
formed by complex extension of the 8×3 real Fock orbital color action,
has determinant one on every group element. As indicated in §10,
the eighth power of an orthogonal 3×3 determinant supplies the proof
without an unproved orientation lemma.

**Prospective extension (not accepted by #108):** an exact
`GaugeGroup 2 →* Matrix.specialUnitaryGroup (Fin 24) ℂ` subtype-valued
representation has been added to S1C and a 5-declaration kernel gate
requested. Do not elevate that new group-homomorphism declaration
before its **own** green gate.

### Manuscript-level S1 argument from already accepted data

The paper's `F` can be instantiated as the accepted FCP irreducible
`Fermion 2` with the normalized paired theta operators. It chooses
the unique **connected** SU(2)→Spin(48) lift of
`g ↦ O_g ⊗ I₁₆` and lets its Clifford action be `V_paper(g)`.
G3-A fixes `O_g` by literal conjugation in the same normalized
Pauli color basis and with output-color B/input-color A index
orientation. G4-H certifies exactly
`V_FCP(g) theta_A V_FCP(g)^(-1)=Σ_B O_g[B,A] theta_B`;
G4-E and G4-IC2 certify a genuine continuous SU(2) unitary action.
Thus the paper and FCP unitary actions both implement the *same*
48-generator orthogonal automorphism on the *same* irreducible module.

The accepted S1A scalar-commutant and S1B covariance-implementer
rigidity make their pointwise ratio scalar:
`V_paper(g) = z(g) V_FCP(g)`. The two group-homomorphism laws
imply `z(gh)=z(g)z(h)`; unitarity implies `z(g)∈U(1)`.
The compact Lie group SU(2) is perfect, so every group homomorphism
SU(2)→an abelian group is trivial: `z(g)=1`. Therefore, *at the
ordinary-mathematical manuscript level*, the unique SU(2) spin lift
must agree with this Fock gauge action **provided the paper's action
is interpreted on the exact normalized theta module and with the
verified O_g orientation**. No **additional** SU(24) determinant-one
hypothesis is needed for this uniqueness argument; S1C additionally
supports an explicit polarization/spinor-construction crosscheck.

This is a standard external-mathematics **identification argument**,
not a kernel certificate for the Spin(48) cover, the SU(2) perfectness
instance, or the paper-defined `V_paper`. The manuscript explicitly
supplies the Spin(48) lift as part of its setup; we do not fabricate an
unproved Lean construction or count this argument as a new theorem
about point eigenvalues. The next scientific check should be exact
bosonic coordinate, smooth invariant core, joint supercharge,
quadratic-form and closed-operator comparison, reusing the accepted
source-side D2B13–D2B28 without reopening them. If an actual mismatch
occurs it overrides this paper-level identification argument.

## 12. Gate #110 and source-to-paper closed-operator crosswalk

### S1C final: literal SU(2)→SU(24) representation, kernel accepted

[Physical Domain Bridge #110](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38077814928),
run `38077814928`, **SUCCESS**; proof-gate commit
`f525a4adb9a637320e176ba5b5f6730ee386d043`.

Source file:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe.lean`,
blob `c5de7c744744212711780aee2d4f9742c002cd84`.
The existing three S1C determinant declarations and the new
`complexOneParticleSpecialUnitary` and
`complexOneParticleSpecialUnitaryHom` all passed the exact
pinned compiler and explicit expected-name/axiom check,
with axiom dependencies contained in
`[propext, Classical.choice, Quot.sound]`. This is the **actual**
G3-C matrix action lifted into
`GaugeGroup 2 →* Matrix.specialUnitaryGroup (Fin 24) ℂ`.
The immutable Gate-93 D2B11–D2B28 compiled-object cache was again
restored and verified, without recompilation. D2B29 stayed skipped.

This new source-side theorem does **not** by itself construct a
`GaugeGroup 2 →* Spin(48)` lift in the pinned Lean library.
See §11 for the standard paper-level Schur/character argument for
gauge-action agreement. Both statements should be preserved at their
actual evidence levels.

### S2 — exact real bosonic space and adjoint gauge coefficients

The manuscript coordinates
`(x^a_i) ∈ (ℝ^9)^3` are canonically reordered to the actual
upstream `Boson 2 = EuclideanSpace ℝ (Fin 9 × Fin 3)`,
with source `SpaceIndex = Fin 9`, `ColorIndex 2 = Fin 3`.
This coordinate permutation is an isometry of finite Euclidean
spaces and preserves Lebesgue volume. The original source
`GaugeGroup 2 = Matrix.specialUnitaryGroup (Fin 2) ℂ`
is exactly SU(2), not a surrogate group.

Accepted G2-A `bosonGauge` and `bosonGauge_adjoint` use
genuine color-matrix conjugation on the source nine traceless
matrices. Accepted G3-A `adjointCoefficient_on_basis` and
`adjointColorMatrix` identify precisely the *output B/input A*
coefficients with the manuscript's `O_g` action in the normalized
Pauli basis. Under the coordinate reorder, the bosonic action is
the paper's `O_g x`.

No different bosonic gauge theory or external normalization is
inserted. **The explicit cross-file isometric-coordinate transport
to a separately encoded paper type is not a Lean theorem** (the
paper does not define such a Lean type).

### S3 — paper physical Hilbert space and invariant smooth core

Pinned upstream `GaugeCore.lean` defines
```text
FullL2 N := Lp (Fermion N) 2 (volume : Measure (Boson N))
G.bosonPullback g := pullback along G.boson g
G.fiberAction g := pointwise action of G.fermion g
G.physicalSpace := ⋂g ker (G.bosonPullback g - G.fiberAction g)
G.invariantCore := G.physicalSpace.comap coreToL2
```

Its fixed-vector condition states `f(O_g x) = V_g f(x)` in
the L² sense, equivalently
`f(x) = V_g f(O_g^{-1} x)`, **exactly** the paper's gauge action
`𝒢_g f(x) = V_g f(O_g^{-1} x)`. On compactly supported smooth
functions, pointwise equivariance and the L² condition coincide
by continuity (the source `invariantCore_equivariant` proves the
source-core-to-pointwise direction).

Accepted D2B8-A:
`sourceFullGaugePairCLM_fixed_iff_physical`;
accepted D2B10-C:
`sourceCoreNormClosure_eq_physical_unconditional`.
These establish full-Hilbert fixedness and norm density of the
**actual original invariant smooth core**, respectively.

Paper `C_c^∞(ℝ²⁷;F)` corresponds to the source's
`TestFunction (⊤ : Opens (Boson 2)) (Fermion 2) ⊤`,
with the above invariance. This correspondence uses the
finite-dimensional unitary coordinate/fermion identifications;
the paper's `F` may be chosen as the accepted `Fermion 2`.
No alternative larger/maximal operator core is substituted.

### S4 — literal 16 charges, minimal closure, and H

Primary manuscript source
`positive-eigenvalues-relative-su2-bfss.tex` lines 113–133
specifies, on this **invariant** smooth core,
```text
Q_α = -i Σ_{i,a,β} γⁱ_{αβ} θᵃ_β ∂_{ia}
      + 1/2 Σ_{i,j,a,b,c,β}
        f_{abc} x⁽ᵇ⁾_i x⁽ᶜ⁾_j γⁱʲ_{αβ} θᵃ_β
q(ψ) = 1/16 Σ_{α=1}^{16} ||Q_α ψ||²
H = nonnegative self-adjoint operator of closure(q)
```
Pinned `Core.lean` `AlgebraData.charge` has precisely these
kinetic/potential sums, with
`gammaTwo i j = (1/2)(γ_iγ_j - γ_jγ_i)`,
`structureConstant A B C` from the normalized Pauli commutator,
and the literal `coordinateDerivative`, `position`,
`fermionAction`. Its `coreForm` has the same exact `1/16`
factor. Accepted G4K9-D `sourceUnconditionalCoreCharge_equal`
and `sourceUnconditionalCoreForm_equal` ensure undeformed
`h=1, m=0` is the **original pinned source charge**, not a
further mass or deformation assumption.

Accepted D2B13
`sourceOriginalCoreChargePMap_closure_eq_closed`
and `sourceInvariantSmoothCore_isGraphCoreOfMinimalClosedColumn`
identify the closure of the **original restricted invariant
core's joint 16-charge graph**, not a larger full-space closure.
Accepted D2B22
`sourcePhysicalHilbertChargeEnergy_eq_sourceClosed`
proves form equality on the complete source-closed charge domain.
Accepted D2B28
`pairedSU2PhysicalHamiltonian_selfAdjoint`,
`pairedSU2PhysicalHamiltonian_weakForm_iff`,
`pairedSU2PhysicalHamiltonian_closed`, and
`pairedSU2PhysicalHamiltonian_domain_dense`
yield the literal source's nonnegative normalized associated
Hamiltonian (with its natural domain). Under the data
identification above, the **first representation theorem for
closed nonnegative quadratic forms** gives the same H as
the paper defines, not just the same formal differential
expression.

**Status / truth boundary.** This is an evidence-backed
*ordinary-mathematics, source-to-paper instantiation and
operator identification argument*, using accepted source
proofs and standard unitary transport of form closures.
It is NOT an additional Lean theorem stating
`U H_paper = H_FCP U`, since the manuscript does not supply
the paper-side `H_paper` as a Lean object; nor have we
independently kernel-formalized its Theorem 1.1 positive
eigenvalues. The standard Spin-lift and closed-form
transport theorems are still external mathematical inputs
at the cross-presentation boundary. Any discovery of an
actual sign, normalization, coordinate, gauge, or domain
mismatch would reopen this correspondence.

**Program decision:** do not rebuild existing Spin or
form representation libraries solely to hide that boundary.
Use the already accepted exact Pauli, theta, gauge, source
charge, restricted-core, closed-form and self-adjointness
theorems to test new physically material questions.
Formalize an additional cross-representation theorem only
if an explicit independent paper-side representation or a
real scientific discriminator makes it necessary.

## 13. Bounded spectral mechanism check — prioritize physics over machinery

**Date:** 2026-10-10. **Evidence:** direct read of pinned primary
`positive-eigenvalues-relative-su2-bfss.tex` at
`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
with focused inspection of lines 228–413 and 413–819.
This is a **targeted mathematical source audit, not an
independent full re-proof and not a kernel certificate**.

The paper's Theorem 1.1 (lines 135–143) is an unbounded sequence
of *positive point* eigenvalues, not merely positivity of
`⟨ψ,Hψ⟩` for a selected trial or the existence of positive
continuous spectrum. Its substantive route is:

1. The standard core-form computation gives
   `q=1/2||∇ψ||² + ∫V|ψ|² + ∫⟨ψ,Bψ⟩`,
   `V=Σ_{a<b}|x^a∧x^b|²`, and `||B(x)||≤C|x|`
   (lines 236–337). Check normalization against actual
   source `AlgebraData.charge`/G4K9-D, not against a
   convenient rescaling.
2. The `Spin(9)` representation preserves the *closed*
   physical form and its isotypic `λ` sectors reduce H
   (lines 338–412). This is additional genuine mathematical
   machinery not present in the FCP Gate-93 spectrum API.
3. Orthogonal branching from `Spin(9)` to the slice
   stabilizer `Spin(8)` gives `ν₁≥λ₂` (lines 453–517).
   The equivariant finite translate-span restriction to each
   transverse slice is the bridge, not pointwise sampling
   of arbitrary L² classes (lines 524–558).
4. In 16 transverse real dimensions,
   `-1/4 Δ_z + |u|²|z|²` has levels
   `|u|(n+8)`. If `λ₂>m+M`, low
   levels `n≤m` are excluded, yielding `(m+9)|u|`
   as the first permitted oscillator energy
   (lines 569–613). The 8 is **16/2**; the 9 is the
   first remaining level, not an arbitrary offset.
5. After averaging the three color slices, form coercivity is
   `q≥1/4||∇ψ||²+c_m∫|x||ψ|²`, where
   `c_m=(m+9)/3-C>0` (lines 615–668).
   Rellich compactness plus the tail
   `∫_{|x|>R}|ψ|²≤q/(c_m R)` gives compact
   resolvent in each high sector; the weight positivity
   excludes a kernel (lines 669–685).
6. The paper builds nonzero gauge-invariant fermion vectors
   and gauge-invariant polynomial highest vectors
   `P(x)^k v` of `Spin(9)` type
   `λ=(2k+μ₁,2k+μ₂,μ₃,μ₄)`.
   Independent radial cutoffs yield an
   infinite-dimensional fixed high sector
   (lines 696–803). The compact-resolvent theorem
   supplies an unbounded **positive** discrete spectrum
   in that reducing sector (lines 805–819).

**Focused audit result:** the indicated coefficient arithmetic
and logical dependency chain are internally consistent with the
identified operator and core. No immediate normalization, missing
zero-sector, or free-parameter contradiction was found.
This check does **not** establish every orthogonal branching,
slice, or functional-analytic argument independently.
A real gap in one of those steps could change the
scientific verdict and must be investigated rather than
papered over with another compiler lemma.

**Next physically material formalization frontier:** derive the
`Spin(9)` action on the actual paired 24-orbital Fock/gauge
physical space, its interaction with the 16 charges and
closed form, and at least one nontrivial rotation sector.
Then test the angular-type exclusion/transverse oscillator
bound (the source of compact-resolvent positive point spectrum)
against the exact accepted Hamiltonian.

A mere additional positive radial form trial, abstract
self-adjointness lemma, or generic spin-group type construction
does **not** test this spectral mechanism and should not be
the default next gate. Conversely, do not attempt a wholesale
formalization of the spectral proof before determining the
minimal existing Mathlib representation/oscillator ingredients.
This is a bounded *source-first* decision, not a license
for open-ended methodology expansion.

**Final scientific status:** source Hamiltonian genuinely
self-adjoint (Gate #93); exact paired Majorana commutant and
gauge-implementer rigidity (Gates #99/#102/#103);
exact one-particle SU(24) action (Gate #110);
ordinary-mathematics source-to-paper operator crosswalk
assembled here; **positive eigenvalues remain a
manuscript theorem, not a Lean-proved FCP theorem**.
No NFC/TOE promotion or independent new empirical claim.
