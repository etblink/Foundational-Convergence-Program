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
