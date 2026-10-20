# S1V45 — GENUINE original source Lipschitz48 UNIVERSAL grade/determinant parity — Gate #2 ACCEPTED

**Project Lead acceptance disposition (October 19 PDT / October 20 UTC 2026):** `S1V45_G2_THREE_TRUE_CLIFFORD_LIPSCHITZ_CLOSURE_ROOTS_KERNEL_PASS__S1V44_CACHE_RESTORED__S1V45_CACHE_SAVED__UNIVERSAL_GRADE_DET_PARITY_ACCEPTED__SPIN_DET_PLUS_ONE_AND_SPECTRAL_CLAIMS_OPEN`.

## Strict primary-source acceptance evidence
- [GitHub Actions S1V45 Actual Lipschitz Grade Determinant Closure Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39367051210), job `118446159444`: **SUCCESS**, original immutable checkout/source-workflow commit `0be983b46a22dacda2b57fb921fb3bd3e98bb206`, exact original Lean source revision commit `bd61d1ff5c3d2873ba71c17308bfdc1a6ed8d38c`, Git source blob `337110568c3a27f52580d8ee7a157c9e021575cd`.
- Pinned original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; exact FCP original-source SHA preflight passed. These source labels remain `Source48Vector = Fin 24 × Fin 2 → ℝ`, with original `source48Quadratic`.
- Previously accepted S1V44 cache successfully **restored**, key `bfss-s1v44-isolated-source48-grade-det-parity-inverse-v1-adc7f124-lean4341-d13f23b-Linux-X64`. All qualified upstream dependencies' `.olean` files checked nonempty.
- The exact file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V45ActualLipschitzGradeDetClosureProbe.lean` compiled to a nonempty `.olean` without compiler errors or `sorryAx`. Its THREE `#print axioms` reports each listed only `[propext, Classical.choice, Quot.sound]` (the first two were printed wrapped across lines). Strict marker `S1V45_ACTUAL_LIPSCHITZ_GRADE_DET_CLOSURE_3_ROOTS_KERNEL_PASS`.
- New qualified dependency cache **saved** `bfss-s1v45-isolated-source48-grade-det-closure-v1-adc7f124-lean4341-d13f23b-Linux-X64`, exact diagnostic artifact `bfss-s1v45-grade-det-closure-39367051210` uploaded, artifact ID `12239533508`.

## Precisely qualified THREE original-source roots

1. `FCP.BFSSS1V45.source48ActualGeneratorPreimage_gradeDetParity`: For **every genuine unit** of the original Clifford algebra lying in Mathlib's typed preimage `((↑) ⁻¹' Set.range (CliffordAlgebra.ι Q) : Set (CliffordAlgebra Q)ˣ)`, derive `Invertible (Q a)` from its exact represented original generator via `invertibleOfInvertibleι`, then identify that genuine subtype element with S1V42's previously accepted source generator and reuse S1V43 generator parity.
2. `source48ActualGeneratorPreimage_inv_gradeDetParity`: For the inverse of each such genuine generator, parity follows from that first root and S1V44's separately qualified general inverse theorem.
3. `source48ActualLipschitz_gradeDetParity_all`: **For EVERY** element `x : lipschitzGroup source48Quadratic`, `CliffordAlgebra.involute (↑x) = (sourceLipschitz48OriginalRealDetCharacter x : ℝ) • ↑x`. This is proved by pinned `Subgroup.closure_induction''` directly on the **actual original Mathlib subgroup closure**, discharging its `mem`, `inv_mem`, `one` and `mul` cases from the first two roots and S1V43's prior identity/multiplication proofs.

This is a fully qualified **universal** Lipschitz theorem, not merely verification of a convenient replacement Pin group or a selected finite generator word. The determinant character is the one actually constructed from original Clifford-conjugation real automorphisms in S1V41; its degree-one generator sign is linked to the original 48-real rank-one matrix in S1V42.

## Red-gate negative knowledge

- [Gate #1 #39366477497](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39366477497), job `118444379837`, **RED**, after all original source and S1V44 cache preflight passed. The first genuine generator-preimage proof had exactly two reversed equalities: `Set.range` witness produced `ha : CliffordAlgebra.ι Q a = ↑u`; rewrite `rw [←ha]` failed to find `↑u` in the goal `Invertible (ι Q a)`, and `exact ha` failed to satisfy the opposite equality `↑u = ι Q a` in `Units.ext`. Dependent later proof roots consequently had `sorryAx`, and new cache save was skipped. [Causal audit](OPENAI_MATH_BFSS_SU2_S1V45_GATE1_GENERATOR_PREIMAGE_EQ_DIRECTION_RED_2026_10_19.md).
- Gate #2 changed ONLY `rw [←ha]` to `rw [ha]` and `exact ha` to `exact ha.symm`; no mathematical statement, original 48-real source convention, group definition or dependency was changed. All three declarations then compiled and passed strict verification, and the cache was saved. This confirms the red was a source-equality orientation error, not a mathematical parity gap.

## Exact open boundaries / Project Lead next scientific test

The universal Lipschitz grade/determinant character theorem **does not, without further verified work, prove universal Spin real determinant +1**. The pinned true `spinGroup Q` is an intersection of `pinGroup Q` and the even Clifford subalgebra. A Spin element's canonical `spinGroup.toUnits` belongs to `lipschitzGroup Q` by `spinGroup.units_mem_lipschitzGroup`, and the accepted pinned `spinGroup.involute_eq` supplies grade involution fixedness. These source properties now motivate a bounded determinant-1 theorem by converting `δ_L(x) • ↑x = ↑x` into `δ_L(x)=1` via **genuine unit nonzero and faithful real scalar action**, not an unproved cancellation. If needed, prove Clifford algebra scalar faithfulness from original finite free source representation/nontriviality instead of asserting it universally for all rings/modules (which is false in general).

Independently establish that the restriction of S1V41's actual original Lipschitz real automorphism action to the true `spinGroup Q` is **literally** the existing S1V35 and S1V36 original Spin-only action. Do not assume two isomorphic-looking representations agree, nor promote SO48, covering topology or normalized continuous global SU(2) lift prematurely.

The global SU2 Spin(48) lift, manuscript's independent Clifford irreducible module/unitary intertwiner, physical Hilbert closed-operator transport, BFSS positive spectrum and spectral/mass-gap questions are still OPEN. Canonical FCP scientific framework comparison and `main` remain separate from this isolated BFSS branch.

## Repository safeguards
The audit is documentation-only, path-exempt from experimental CI. No updates to canonical `main`, upstream `etblink/math` or draft PR #25. Original failed gates preserved; successful dependency cache remains reusable and source hash pinned.
