# S1L — exact original source versus manuscript SU(2) 48-Majorana color-matrix labeling

**October 18, 2026 PDT | Project Lead | Research branch only.**

**Disposition:** `STRICT_KERNEL_PASS__THREE_ROOTS__EXACT_SOURCE_O_G_TENSOR_I16_LABEL_FORMULA__NO_SPIN48_OR_MANUSCRIPT_HAMILTONIAN_TRANSPORT`.

## Immutable acceptance evidence

- [BFSS SU2 Manuscript 48 Color Label Bridge #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39155823338), run `39155823338`, job `117758719993`, completed **SUCCESS**.
- Strict run source/workflow HEAD: `056301b52c4a08cf23acbb4df0e5634e5640404d`; source candidate commit `09c2f85da567d8711f153bea7327a95990e892e2`.
- Lean source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1LOriginalManuscript48ColorLabelBridgeProbe.lean`, immutable Git blob `f225a7417413008e281a143fe6db4c0da4b86026`.
- Pinned workflow: `.github/workflows/bfss-su2-manuscript-48-color-label-bridge.yml`, immutable Git blob `0240939218c2df51bb8e46f363b019dc73e146d5`.
- Original mathematical source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- The workflow verified original source, candidate blob, compiler and dependency pins, successfully rebuilt S1C's five roots, S1J's eight roots, S1K's three roots, and freshly compiled S1L's three roots into `.olean`.
- All three S1L `#print axioms` roots were reported with exactly the allowed set `[propext, Classical.choice, Quot.sound]`, with no `sorryAx`, Lean `error:`, missing root, or unsupported axiom:
  1. `FCP.BFSSSU2PhysicalDomainS1L.sourceColorSpinMatrix`
  2. `FCP.BFSSSU2PhysicalDomainS1L.sourceRealMajoranaMatrix_paper_entry`
  3. `FCP.BFSSSU2PhysicalDomainS1L.sourceColorSpinMatrix_eq_adjoint_kronecker`
- Final machine acceptance marker: `S1L_SOURCE_EXACT_MANUSCRIPT_COLOR_TENSOR_I16_3_ROOTS_KERNEL_PASS`.

## Exact mathematical gain

The original accepted S1J source action is `sourceRealMajoranaMatrix g : Matrix (Fin 24 × Fin 2) (Fin 24 × Fin 2) ℝ`, built as `oneParticleMatrix g ⊗ I₂`, with the original positive-i adjoint color coefficient convention.

The *already-qualified* `pairedLabelEquiv : (SpinIndex × ColorIndex 2) ≃ (Fin 24 × Fin 2)` explicitly identifies each of 16 spin labels with one of eight real/imaginary Majorana spin pairs and each of three colors with the corresponding 24-mode Fock label.

S1L now proves, for every source SU(2) element `g`, colors `A,B` and spin labels `α,β`:

```lean
sourceRealMajoranaMatrix g
  (pairedLabelEquiv (α, A)) (pairedLabelEquiv (β, B)) =
    if α = β then adjointColorMatrix g A B else 0
```

It then proves equality of the entire matrix expressed in the manuscript's **color-first, spin-second indexing**:

```lean
sourceColorSpinMatrix g =
  Matrix.kronecker (adjointColorMatrix g)
    (1 : Matrix SpinIndex SpinIndex ℝ)
```

Here `adjointColorMatrix g` is the exact 3×3 original normalized-Pauli color adjoint representation, rows = output color and columns = input color, from qualified G3A. The original manuscript at its pinned TeX lines ~70–110 specifies `T_a=σ_a/√2` and the corresponding `O_g ⊗ I₁₆` real-label action. The bridge checks exact index ordering of the concrete source action against this formula; it does not manufacture an independent second Clifford representation.

## Negative knowledge and scientific stop boundary

- No S1L gate failed: its first strict pinned run was green. Do not manufacture a red-to-green story.
- Precursor S1J Gate #1 and #2 were red because a direct determinant-Kronecker rewrite did not match the actual normal form. S1J Gate #3 succeeded by reusing S1C's named `⊗ₖ` determinant-normal-form method; those negative records remain independently authoritative.
- This acceptance is **not** continuity of the `SU(2) → SO(48)` homomorphism, a lifted `SU(2) → Spin(48)` homomorphism, or a proof identifying the manuscript's abstract irreducible Clifford module and normalized Spin(48) action with source `Fermion 2`.
- S1I's general gauge transport is CONDITIONAL on an independently supplied exact generator-preserving linear isomorphism and independently supplied covariant group action; S1L does not discharge those assumptions.
- Do not infer manuscript smooth physical-core equality, closure/adjoint/normalized Hamiltonian domain equivalence, global Spin(9) sector confinement, positive eigenvalues, or a global mass gap from this matrix identity.
- Current highest-value next exact step: establish source continuity/topological lift premises where genuinely required; then independently construct (rather than assume) the manuscript Clifford/unitary representation identification, and transport all sixteen charges and their closed domains. If a stronger target cannot be reconstructed from qualified sources, hold it OPEN.

## Governance

Research branch `research/openai-math-su2-s3l-combined-rotation`; [draft PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25); [manuscript–source realization Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28). No merge, `main` modification, rewrite of original `etblink/math`, unpinned dependency, proof hole or alternative source Fock representation authorized.
