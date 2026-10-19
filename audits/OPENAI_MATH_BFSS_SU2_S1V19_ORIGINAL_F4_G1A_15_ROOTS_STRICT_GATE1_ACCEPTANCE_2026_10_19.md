# BFSS S1V19 — original F4/G1A typed AlgebraData, exact paired Majoranas: 15 strict roots ACCEPTED

**Date:** 2026-10-19 PDT. **Disposition:** `STRICT_PINNED_KERNEL_PASS__4_F4_PLUS_11_G1A__ORIGINAL_SOURCE_MODEL__MANUSCRIPT_TRANSPORT_OPEN`.

## Independent complete-run custody

- [Original F4 and G1A Typed Source Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39294568180) completed **SUCCESS**, job `118203643757`, checkout `c09a762e35afd11363b1091848bae21beb55b49a`. All steps succeeded, including exact cache restoration, prerequisite compilation, both original Lean proof compilation steps, 15-root verification, and cache save.
- Strictly pinned immutable original OpenAI BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original unmodified source blobs: `SU2ColorCrossProbe.lean` `399e9380ba1c679dc173a9dec0ac21e09d7757fd`; `SU2RealGammaProbe.lean` `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`; `SU2BFSSFullAlgebraDataProbe.lean` `fe3e0b21bb60d74b54c9faf7c066db9b02939405`; `SU2BFSSG1APairedThetaProbe.lean` `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`; prerequisite `SU2FermionF3C2ThetaFieldsProbe.lean` `95cf7e3e59990cd4155bc861fef82b13c0b36150`.
- Real job log contains each Lean `#print axioms` root and exact terminal markers `SU2BFSSFullAlgebraDataProbe ORIGINAL_F4_G1A_AXIOM_CLEAN_PASS 4`, `SU2BFSSG1APairedThetaProbe ORIGINAL_F4_G1A_AXIOM_CLEAN_PASS 11`, `ORIGINAL_F4_G1A_TYPED_ALGEBRADATA_15_ROOTS_KERNEL_PASS`.
- **All 15 exact declarations** depended only on `[propext, Classical.choice, Quot.sound]`, with fresh nonempty `.olean`, no compiler `error:` or `sorryAx`; the strict validator checked exact fully qualified names/counts. Nonfatal Lean deprecation warnings about `if_pos`/`if_neg` did not invalidate the result.
- Accepted cache saved in GitHub Actions with exact key `bfss-s1v19-isolated-f4g1a-v1-adc7f124-lean4341-d13f23b-Linux-X64`. The job output explicitly says `Cache saved with key: ...`; this is not hypothetical or a missing cross-branch cache.

## What the model actually proves

| Pinned original module | Qualified axioms roots | Exact meaning |
|---|---|---|
| `SU2BFSSFullAlgebraDataProbe.lean` | `concreteAlgebraData`, `concreteAlgebraData_color`, `concreteAlgebraData_gamma`, `concreteAlgebraData_theta` | Actual upstream `AlgebraData 2` instance assembled from source-normalized Pauli color, explicit real Cl(9) gamma, and original 48 Majorana theta with CAR and irreducibility; not a placeholder |
| `SU2BFSSG1APairedThetaProbe.lean` | `pairedLabel_even`, `pairedLabel_odd`, `pairedTheta_even`, `pairedTheta_odd`, `pairedTheta_selfAdjoint`, `pairedTheta_CAR`, `pairedTheta_irreducible`, `pairedAlgebraData`, `pairedAlgebraData_color`, `pairedAlgebraData_gamma`, `pairedAlgebraData_theta` | Exact source `(Fin 8 × Fin 3)` 24 complex modes relabelled by `(SpinIndex × ColorIndex 2)` as 48 literal real Majoranas; source-true `pairedAlgebraData : AlgebraData 2`, full source self-adjointness, delta-one CAR, irreducibility |

Crucially this now discharges the original **existence/typed source Fock G1A model** import problem in the isolated research branch. This does not itself construct G1B/G2/G3 source gauge transport, the original named `sourceZ` +i quarter coefficient S1V19, the original S1V20 48-by-48 matrix identity, or any **global continuous SU(2) → Spin(48)** homomorphism.

## Next bounded gate and stopping rules

Use accepted F4/G1A cache, retaining all source, Lean, Mathlib, and existing exact source blob pins. Compile the unchanged source files in order: `G1BColorAnnihilator` (2 roots), `G2ABosonGauge` (5), `G2BBosonGaugeContinuity` (1), `G3AAdjointColorRepresentation` (8), `G3B24ModeOrthogonalLift` (4): **20 separately named roots total**. The original G3A depends on pinned `OAI.MathematicalPhysics.BFSS.CovariantFields` and must use its genuine original `adjointCoefficient` rather than a surrogate. G3B retains output row `B` and input column `A` for color, not the transpose. Allow only the permitted foundational axioms, require fresh nonempty `.olean`, save the compiled reusable cache only upon complete strict success.

Before changing any failed source proof: retrieve the first causal compiler/infrastructure error. A missing compiled `.olean` is not a theorem refutation; a wall-clock timeout does not identify an incorrect identity; a compiled generic theorem never automatically qualifies literal BFSS original-state operator identity. Never reuse axiom output from a red file as acceptance.

**Governance:** Only the isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` branch; no changes to active draft PR #25, `main`, or original pinned upstream. Maintain accepted original +i Pauli, Clifford and charge sign conventions, physical domain hypotheses, and negative knowledge. Source model proofs are distinct from independent manuscript complex Clifford-module/gauge-intertwiner existence, closed supercharge graphs/Hamiltonian equality, Spin(9) confinement and positive spectral claims.
