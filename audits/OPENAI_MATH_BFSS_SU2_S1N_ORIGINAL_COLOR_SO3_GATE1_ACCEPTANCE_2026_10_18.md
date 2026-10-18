# S1N — actual original normalized-Pauli SU(2) color SO(3) orientation

**October 18, 2026 PDT | Project Lead | Research branch only.**

**Disposition:** `STRICT_KERNEL_PASS__SEVEN_ROOTS__TRUE_ORIGINAL_3X3_ADJOINT_COLOR_DETERMINANT_ONE__SU2_TO_SO3_HOM__INDEPENDENT_SPIN48_LIFT_OPEN`.

## Exact source-pinned acceptance

- [BFSS SU2 Source Adjoint Color SO3 Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39158512809), run `39158512809`, job `117766660518`, full **SUCCESS**, source/workflow checkout commit `31650cc55ce3c1ca903d7e1de6217b68b62a61fd`.
- Exact S1N source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1NOriginalAdjointColorSO3Probe.lean`, blob `d451b713d8717d3d0675138e0c8c2ed98b175eb0`.
- Strict qualification workflow `.github/workflows/bfss-su2-source-adjoint-color-so3.yml`, blob `1cfe4f1e7694f91d5a117f4bcc4d1ff0b429aab2`.
- Original pinned mathematical source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Verified previously accepted S1A/S1B scalar commutants, S1D source-relative character, S1E generic curve character reduction, S1F literal positive-i source curve half/inverse, S1G actual Euler/quarter-turn character triviality (eleven roots; cache provenance verified), and G3A original normalized-Pauli adjoint color coefficient/matrix closure (eight roots). Historical Euler source cache successfully restored; recovery step was skipped because cache hit.
- Fresh S1N `.olean` and seven `#print axioms` declarations were accepted. Each has precisely the allowed axiom set `propext, Classical.choice, Quot.sound`, no `sorryAx`, `error:`, unknown root, or unsupported axiom. Final machine marker `S1N_EXACT_ORIGINAL_COLOR_SU2_TO_SO3_7_ROOTS_KERNEL_PASS`.

## Exact mathematical statement

Source `G3A.adjointColorMatrix g` has rows=output color and columns=input color, expressed by the frozen source `pairedAlgebraData.adjointCoefficient g A B`. G3A already proves matrix orthogonality, multiplicativity and group identity, but its determinant sign was not yet proved.

Define the **actual** complex scalar character

```lean
sourceAdjointDetCharacter (g : GaugeGroup 2) : ℂ :=
  ((adjointColorMatrix g).det : ℂ)
```

The first three S1N roots establish identity and multiplicativity, with no character hypothesis. S1N then invokes the previously qualified S1E `scalar_character_trivial_of_zyz` together with S1F/S1G's actual positive-i source Pauli curves, flip relations, halving identities and **exact source Euler generation**, discharging ALL hypotheses of character triviality:

```lean
sourceAdjointDetCharacter_trivial (g : GaugeGroup 2) :
  sourceAdjointDetCharacter g = 1
```

Complex `ofReal` injectivity yields

```lean
sourceAdjointColorMatrix_det_one (g : GaugeGroup 2) :
  (adjointColorMatrix g).det = 1
```

Lastly S1N packages the original SO(3) element and group representation

```lean
sourceAdjointColorSO (g : GaugeGroup 2) :
  Matrix.specialOrthogonalGroup (ColorIndex 2) ℝ

sourceAdjointColorSOHom :
  GaugeGroup 2 →* Matrix.specialOrthogonalGroup (ColorIndex 2) ℝ
```

This is the independent source-exact 3-dimensional orientation proof. S1J/S1K's 48-dimensional determinant alone **cannot** be substituted for this proof: duplicating a real action on two Majoranas squares its determinant.

## Explicit scientific boundary and negative knowledge

- S1N Gate #1 passed as first attempted strict run, **no fabricated red-to-green history**.
- The proof works because the *existing source exact scalar-character theorem* is reusable for the determinant, and it avoids a separate topological connectivity axiom or a 3×3 literal Pauli determinant expansion. This is a reusable proof-engineering strategy: identify source determinant characters and discharge using verified source-group structure.
- This **does not** construct a continuous SU(2) → Spin(48) lift. S1M separately verifies continuity of the original source SU(2) → SO(48) representation, but the exact color SO(3)-subtype continuity has not been jointly kernel-checked with S1N (though continuity of its matrix entries was verified in S1M).
- Pinned Mathlib's `Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean` defines the Spin group as the Pin/even Clifford subgroup and gives conjugation stability and group operations. The inspected source file does **not** contain a canonical continuous `Spin(48) → SO(48)` projection or a group-covering lifting theorem; do not extrapolate this to a comprehensive claim that no such theorem exists anywhere in Mathlib.
- The manuscript's separate irreducible 48-generator complex Clifford module, its named Spin(48) lift, a source-preserving **unitary** intertwiner, source/manual physical smooth-core equality, unbounded 16-charge graph closure, normalized Hamiltonian domains and global Spin(9) positive-point-spectrum argument remain **open**. A true original SO3 action proves none of these.

## Next research direction

Investigate a genuinely source-exact Spin(48) lifting construction from S1M + S1N + S1L. Two paths deserve separately scoped mathematical assessment: (A) establish the missing Clifford Spin projection and the simply-connected covering lift in the pinned formal library; or (B) construct an explicit lift using sixteen commuting color-Spin(3) blocks and the source's normalized Majorana generators, then prove it projects to the S1L source 48-label matrix with correct `+i` conventions. The second route is a research hypothesis, not an accepted proof.

Avoid a surrogate `Spin48 :=` original source fermionGauge action, a declared unproved lifting homomorphism, changing the manuscript or source orientation, and claiming full Clifford module equivalence solely from S1I's conditional transport theorem. Before costly CI, isolate the exact typed original algebra map and first falsifiable identity.

**Governance:** research branch `research/openai-math-su2-s3l-combined-rotation`; [draft PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) remains unmerged. [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28) remains the independent manuscript–source realization and closed-domain task. No `main`, `etblink/math`, pinned dependency or accepted source proof altered.
