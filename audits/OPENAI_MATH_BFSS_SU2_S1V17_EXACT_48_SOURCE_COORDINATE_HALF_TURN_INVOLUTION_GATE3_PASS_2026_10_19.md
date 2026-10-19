# BFSS SU(2) S1V17 — literal source 48-coordinate quarter-flip and involution ACCEPTED

**Date:** October 19, 2026 PDT.  
**Final strict gate:** [#39268703293 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39268703293), job `118115000852`, qualified workflow checkout `4ef4d8c9d194ddf7ab896e1550f3fad96f6acc71`.  
**Exact accepted source:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V17QuarterFlipLiteralCoordinateAndInvolutionProbe.lean`, Git blob `ceac341fe05fbe4d54c45a7c12120c03eb646157`.  
**Exact qualified workflow:** `.github/workflows/bfss-s1v4-disjoint-spin-rotors-cold-mathlib.yml`, Git blob `6674b611ecbef87c87c0b82ec8b9bfd858660f98`.  
**Pinned independent environment:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Three accepted statements, exact full-source 48-real Majorana coordinates

Recall S1V16's axiom-qualified real map `source48QuarterFlip : ((Fin24×Fin2)→ℝ) → ((Fin24×Fin2)→ℝ)`, defined by the finite sum of concrete 16×3 Majorana coordinate axes with color coefficients `-,-,+`, and the actual Mathlib `spinGroup Q` ordered sixteen-factor product implementing its Clifford conjugation on EVERY real vector.

**NEW S1V17** kernel proves:

1. `source48QuarterFlip_apply_label`: For all `v`, all `α : Fin8×Fin2`, all `A : Fin3`, its coordinate at the literal source label `sourceBlockColorLabel α A` is **exactly** `v(label)` for `A=2`, and `-v(label)` for colors 0 and 1. It explicitly proves every other basis summand is zero using S1V5's source-label injection and `sourceBlockColorAxis_other`.
2. `source48QuarterFlip_apply`: The same equation holds at EVERY arbitrary source label `i : Fin24×Fin2` using the proven equivalence `sourceBlockColorEquiv.symm i`; the whole 48-component coordinate action is not merely established on a chosen subset.
3. `source48QuarterFlip_involution`: `source48QuarterFlip (source48QuarterFlip v) = v` for every 48-real source vector, with the two negative colors sign-cancelling and the third unchanged.

All three `#print axioms` reports show exactly `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, zero Lean errors, and a fresh nonempty `.olean`. Strict job emitted `S1V17_SOURCE48_EXACT_POINTWISE_COLOR_FLIP_INVOLUTION_3_ROOTS_KERNEL_PASS`.

These exact source-valued equalities extend S1V16's theorem about the ACTUAL sixteen-block Spin(48) conjugation by establishing a literal coordinatewise statement and a square-one transformation, with no assumed SU2 lift, global Fock representation, or independent Hilbert action.

## Negative knowledge: two local Lean-only failures, no source mathematics change

- [Gate #39266677938, RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39266677938) failed on both a `Pi.single` off-diagonal zero simplification and a `((symm i).1,(symm i).2)` product η normalization. Exact evidence: `audits/OPENAI_MATH_BFSS_SU2_S1V17_EXACT_COORDINATE_INVOLUTION_FIRST_GATE_RED_2026_10_19.md`.
- [Gate #39267648356, RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39267648356) accepted the direct `change` / `Equiv.apply_symm_apply` fix for the second issue but uncovered one remaining simp rewrite-order dependency. The simplifier replaced `p.2` by the literal color `2` before applying a separately proved exact zero of `sourceBlockColorAxis p.1 p.2`. Exact evidence: `audits/OPENAI_MATH_BFSS_SU2_S1V17_GATE2_RED_OFF_DIAGONAL_ZERO_REWRITE_ORDER_2026_10_19.md`.
- The targeted Gate #3 repair uses `simp only [if_pos h, hz', smul_zero]` and the analogous `if_neg h` branch, applying the zero-coordinate fact before changing the vector index. All three statements and original source convention were unchanged, and the pinned final gate is GREEN.

## Next source-real matrix bridge and limits

S1V18 `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V18QuarterFlipRealMajoranaDiagonalMatrixProbe.lean` constructs a literal `Matrix SourceLabel SourceLabel ℝ` with diagonal coefficient `-1` for colors 0/1 and `+1` for color 2. It proposes to prove that its `Matrix.mulVec` equals `source48QuarterFlip` everywhere, that it squares to identity as an action, and that the genuine source quadratic form is preserved. **S1V18 is not automatically accepted by S1V17;** its separate [isolated gate #39269678300](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39269678300) was deliberately triggered and must be assessed from its own strict compiler evidence.

The accepted ORIGINAL S1J source `sourceRealMajoranaMatrix` acts on the same 48 indices and has the exact original gauge group law and output-row/input-column convention, but the original-named typed equality with the new S1V18 matrix is **still OPEN** because its heavy Fock import closure has not been compiled in the isolated chain.

No continuous source-normalized SU2→Spin48 group homomorphism, real-to-complex original Fock intertwiner, physical-domain Hamiltonian transport, Spin9 spectrum reduction, eigenvalue theorem or BFSS mass gap is proved by S1V17.

## Repository discipline

Only the isolated branch and its dedicated isolated-workflow trigger path changed. The active PR25 branch and canonical main were not modified. No mergers, source replacements or unproved axioms.
