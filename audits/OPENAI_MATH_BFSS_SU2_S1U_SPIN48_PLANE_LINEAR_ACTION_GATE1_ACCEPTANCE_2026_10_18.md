# S1U — actual source Spin(48) rotor on arbitrary two-plane plus perpendicular real linear combinations

**October 18, 2026 PDT | Project Lead | research-only**

**Disposition:** `STRICT_KERNEL_PASS__ONE_ROOT__FULL_LINEAR_COMBINATION_LOCAL_SPIN_HALF_TURN__GLOBAL_SU2_SPIN48_LIFT_OPEN`.

## Immutable proof custody and strict acceptance

- [S1U Source Spin48 Plane Linear Action #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39173544366), run `39173544366`, job `117811442026`, **SUCCESS**, full pinned checkout `1e3c835f87261f7bf03d6e153d9be441e05f7bd9`.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1USourceSpin48PlaneLinearCombinationProbe.lean`, exact Git blob `9c489177a20748aa8dcab1278c34e0f0b16deb08`.
- Workflow `.github/workflows/bfss-su2-source-spin48-plane-linear-action.yml`, exact Git blob `bbe2a77f0e6475bac8a226236c4ba2aab47174b9`.
- Original independent source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Runner verified immutable original source, source/candidate/workflow revisions, binary cache provenance, and freshly recompiled accepted S1C/S1J/S1K/S1P0/S1P1/S1Q/S1R/S1S/S1T. S1U compiled into a new `.olean` with its single `#print axioms` root depending ONLY on `propext, Classical.choice, Quot.sound`; no `sorryAx`, missing declaration, unsupported axiom or Lean error. Final acceptance marker `S1U_SOURCE_SPIN48_ARBITRARY_PLANE_LINEAR_COMBINATION_1_ROOT_KERNEL_PASS`.

## Actual theorem, no strengthened quantifier

For the actual 48-source-Majorana quadratic space `Q=source48Quadratic` with `Q(v)=Σᵢvᵢ²`, arbitrary real vectors `a,b,c`, hypotheses `Q a=1`, `Q b=1`, `Q.IsOrtho a b`, `Q.IsOrtho a c`, `Q.IsOrtho b c`, and arbitrary scalars `x,y:ℝ`, let `s=sourceSpinPair a b ha hb` (actual Mathlib `spinGroup Q` built and verified in S1S).

The new proved theorem is exactly:

```lean
sourceSpinPair_conjugates_plane_combination :
  (s : CliffordAlgebra Q) *
    CliffordAlgebra.ι Q (x • a + y • b + c) *
    star (s : CliffordAlgebra Q) =
      CliffordAlgebra.ι Q ((-x) • a + (-y) • b + c)
```

S1U derives this from the S1S/S1T accepted **three literal Clifford generator conjugation identities** by linearity of the canonical `CliffordAlgebra.ι` map, distributivity and scalar multiplication. There is NO added spin implementer, SO projection, Clifford generator injectivity or independent manuscript module assumption. For vectors given in an orthogonal two-plane-plus-complement decomposition, the spin rotor reverses the in-plane component and fixes the rest.

**Important precision:** S1U has NOT independently proved every `v : Source48Vector` has the decomposition `v=x•a+y•b+c` with `c⊥a,b`; that finite-dimensional orthogonal decomposition is the next separate formal obligation before claiming an unconditional action on every vector. Do not silently expand quantifiers in the theorem statement.

## Research and next falsifiable steps

1. Prove exact orthogonal decomposition of an arbitrary 48-source vector relative to `a,b`, using the REAL weighted-sum-squares quadratic form and original Euclidean dot product. Keep exact source labels, no arbitrary Clifford injection hypothesis.
2. Compare the resulting unconditional plane half-turn on Clifford generators with an **actual source SU(2) element**. S1G has the qualified exact 2×2 Pauli source quarter-turn, `sourceZ sourceQuarterTurnTime = !![i,0;0,-i]` for `sourceQuarterTurnTime=(π/2)√2`; its adjoint 3×3 color matrix must be separately kernel-checked as the expected half-turn with exact source +i orientation. Combine S1L's literal `adjointColorMatrix(g) ⊗ I16` indexing and coordinate color axes. No sign inference from a diagram.
3. Construct sixteen independent even-Clifford color blocks in actual 48 labels and prove cross-block commutation, source group law, center and continuity; no choice of a lifting map may be assumed.
4. Further independent obligations: unitary equivalence of manuscript's separate complex irreducible Clifford module with source Fermion 2, smooth physical core, all 16 closed charge/adjoint Hamiltonian domains, global Spin(9) and positive spectrum.

S1U Gate #1 passed first strict attempt. No fabricated red-to-green history. S1O two red attempts and S1S Gate #1 negative knowledge remain preserved.

Research-only `research/openai-math-su2-s3l-combined-rotation`, draft [PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25), [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28). Canonical main/upstream/pinned dependencies unaffected; no merge.
