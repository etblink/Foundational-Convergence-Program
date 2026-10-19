# BFSS SU(2) S1V18 — exact source48 real matrix quarter turn and Q-isometry ACCEPTED

**Research date:** October 19, 2026 PDT.  
**Strict gate:** [#39269678300, GREEN on first attempt](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39269678300).  
**Exact source:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V18QuarterFlipRealMajoranaDiagonalMatrixProbe.lean`, git blob `980109459761da5438ce48aa347d3dacbcf3c82d`.  
**Exact workflow blob:** `fec0121da2130035f83225142c11209744878a11`.  
**Pinned independent original BFSS environment:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Newly qualified result — REAL source 48×48 matrix, not a surrogate gauge action

The previously accepted S1V9 defines the ACTUAL ordered product of sixteen concrete `spinGroup source48Quadratic` two-plane rotors. S1V11 proves its central square is +1. S1V15 proves its exact 48-generator conjugation action; S1V16 proves that action on EVERY `v : (Fin24×Fin2)→ℝ` is `source48QuarterFlip v`. S1V17 proves `source48QuarterFlip` at EVERY real source label literally negates colors 0 and 1, fixes color 2, and is involutive.

**NEW S1V18** defines the exact 48×48 REAL matrix in the original-sized Majorana label order `SourceLabel=Fin24×Fin2`:

```lean
source48QuarterDiagonalCoeff (i : SourceLabel) : ℝ :=
  if (sourceBlockColorEquiv.symm i).2 = (2 : Fin 3)
  then 1 else -1

source48QuarterDiagonalMatrix :
  Matrix SourceLabel SourceLabel ℝ :=
    Matrix.diagonal source48QuarterDiagonalCoeff
```

It proves, for all real 48-vectors `v`:

```lean
source48QuarterDiagonalMatrix *ᵥ v = source48QuarterFlip v

source48QuarterDiagonalMatrix *ᵥ
  (source48QuarterDiagonalMatrix *ᵥ v) = v

source48Quadratic (source48QuarterFlip v) =
  source48Quadratic v
```

These statements establish the literal output-row/input-column 48×48 matrix representation of the whole source-sized Spin conjugation, its square-one action, and preservation of the EXACT source quadratic form `QuadraticMap.weightedSumSquares ℝ (fun _ => 1)`. This does not assume a continuous SU2 lift or a Hilbert-space implementation.

### Five exact kernel-qualified roots

- `FCP.BFSSS1V18.source48QuarterDiagonalCoeff`
- `FCP.BFSSS1V18.source48QuarterDiagonalMatrix`
- `FCP.BFSSS1V18.source48QuarterDiagonalMatrix_mulVec`
- `FCP.BFSSS1V18.source48QuarterDiagonalMatrix_mulVec_twice`
- `FCP.BFSSS1V18.source48QuarterFlip_preserves_quadratic`

All five `#print axioms` emitted exactly `[propext, Classical.choice, Quot.sound]`, a fresh nonempty compiled `.olean`, no Lean `error:` or `sorryAx`, and the success marker `S1V18_SOURCE48_REAL_MATRIX_QUARTER_ISOMETRY_5_ROOTS_KERNEL_PASS`. The gate itself concluded SUCCESS without a proof retry.

## Exact remaining original-source integration obligation

This theorem is a useful source-size **standalone** result; it has NOT imported the accepted ORIGINAL `FCP.BFSSSU2PhysicalDomainS1J.sourceRealMajoranaMatrix` gauge representation. The S1J source (original research HEAD `e840d811b0ac06b00539ad7f9a168af655fe99ff`, file blob `3f845ae219586be47fa76aabc3259027b1bb4bae`) defines

```lean
sourceRealMajoranaMatrix (g : GaugeGroup 2) :
  Matrix (Fin24 × Fin2) (Fin24 × Fin2) ℝ :=
  Matrix.kronecker (oneParticleMatrix g) (1 : Matrix (Fin2) (Fin2) ℝ)
```

and has accepted exact `sourceRealMajoranaMatrix_entry`, `_mul`, `_orthogonal`, `_det_one`, etc. The original G3B `oneParticleMatrix_block` theorem reduces color-block entries to `G3A.adjointColorMatrix g B A` in **output B / input A** order; original S1G `source_quarter_z_matrix` proves `sourceZ sourceQuarterTurnTime` equals the exact positive-`i` source Pauli matrix `diag(i,-i)`.

**Next falsifiable target, still OPEN:**

```lean
sourceRealMajoranaMatrix (sourceZ sourceQuarterTurnTime) =
  FCP.BFSSS1V18.source48QuarterDiagonalMatrix
```

with proper imported namespaces and the already accepted source-label equivalence, not a copied assertion. A natural proof decomposes entries via S1J `sourceRealMajoranaMatrix_entry`, G3B `oneParticleMatrix_block`, then G3A's original `adjointCoefficient` evaluated at original S1G's `sourceZ sourceQuarterTurnTime`, preserving +i Pauli and row/column conventions. This evaluation needs a compiled original color coefficient lemma and imported original source closure. Standalone S1V12 checked the same literal matrix Pauli sign, but **does NOT supply a typed original group-element theorem**. Original source-name bridges S1V7/S1V13 remain unqualified due to missing heavy accepted G1A/S1G cache chain.

**Do not infer:** a continuous SU2→Spin48 group homomorphism, center identification of original -I, complex Fock irreducible Clifford intertwiner, physical domain Hamiltonian equality, positive spectral point spectrum, BFSS mass gap. A quarter-turn matrix and Spin element at one group point do not prove a global lift.

## CI governance

Only the isolated research branch and deliberately path-scoped workflow were modified for the qualification. The original active PR25 branch, `main` and etblink/math original source were not modified. Cold pinned Mathlib CI is expensive: before the typed original S1J import-gate, establish an explicit source dependency graph and cache reuse plan instead of accidentally triggering broad PR25 workflows.
