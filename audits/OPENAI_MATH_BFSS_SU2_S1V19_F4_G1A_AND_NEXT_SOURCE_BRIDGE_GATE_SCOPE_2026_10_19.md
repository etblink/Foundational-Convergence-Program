# BFSS S1V19 — isolated F4/G1A qualification and next original-source quarter bridge

**Research scope:** 2026-10-19 PDT. **Status:** proof engineering and falsifiable gate design, not a Lean theorem, acceptance certificate, or result from any pending run.

## Immutable already qualified base

- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- [F3B7–F3C2 strictly accepted #39289623155](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39289623155), on candidate `3cc46d8a5d5e8186d39efd9030d6a98ffe92c298`, job `118186562467`. The actual compilation output verified all 14 original F3B7–C2 named roots with only `propext`, `Classical.choice`, `Quot.sound`; required fresh source `.olean` and cache `bfss-s1v19-isolated-f3c2-irreducible-v1-adc7f124-lean4341-d13f23b-Linux-X64` were actually saved. [Permanent acceptance audit](./OPENAI_MATH_BFSS_SU2_S1V19_ORIGINAL_F3B7_C2_REACHABILITY_IRREDUCIBILITY_14_ROOTS_GATE1_PASS_2026_10_19.md).
- The F3C2 root `thetaCandidate_upstream_irreducible` proves the exact source 48-generator theta invariance/submodule dichotomy, not a manuscript-to-source intertwiner or spectral conclusion.

## In-flight, strictly scoped F4/G1A gate

- [Original F4 and G1A Typed Source Strict Gate #39294568180](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39294568180) launched by isolated workflow-only commit `c09a762e35afd11363b1091848bae21beb55b49a`. **No scientific proof accepted by this audit until the entire CI job passes.**
- Workflow `.github/workflows/bfss-s1v19-original-f4-g1a-typed-source.yml`, only a `push` to its exact workflow pathname on the isolated branch triggers it, with no PR25 broad trigger. It verifies upstream/compiler pins and exact blobs: `SU2ColorCrossProbe` `399e9380ba1c679dc173a9dec0ac21e09d7757fd`, `SU2RealGammaProbe` `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`, `SU2BFSSFullAlgebraDataProbe` `fe3e0b21bb60d74b54c9faf7c066db9b02939405`, `SU2BFSSG1APairedThetaProbe` `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`, and original F3C2 blob `95cf7e3e59990cd4155bc861fef82b13c0b36150`.
- It must fail closed on absent F3C2 compiled cache; compile original pinned OAI color/Clifford dependencies and source color/gamma; produce fresh F4 and G1A `.olean`, verify respectively four and eleven exact `#print axioms` roots, reject `sorryAx`/Lean errors, then save one exact source F4/G1A cache. **A running job or partial root printout is not accepted evidence.**
- First failure diagnosis policy: separate external `elan`/Mathlib cache errors; missing upstream `.olean`; color/gamma dependency failure; actual F4 or G1A elaboration; roots/axiom audit failure; save failure. Do NOT retry a red unchanged, conceal `sorry` in an abstract field, or infer physics from a green.

## Next exact original G-series closure only IF F4/G1A passes

The pinned existing original source import order and Git blobs are:

| Source module | Git blob | Named axiom roots |
|---|---|---|
| `SU2BFSSG1BColorAnnihilatorProbe` | `c267bc73b0aee428c612664c164bea40ad85ee62` | 2 |
| `SU2BFSSG2ABosonGaugeProbe` | `d6165027f0f4782e9ae9ab3a5e7867f4732793bd` | 5 |
| `SU2BFSSG2BBosonGaugeContinuityProbe` | `001d0d3c8d01a8b4090c4e5a58fe017263e2f168` | 1 |
| `SU2BFSSG3AAdjointColorRepresentationProbe` | `c8bbd59782c3116fb514d6aa20d91c607a11c3e7` | 8 |
| `SU2BFSSG3B24ModeOrthogonalLiftProbe` | `c90b25156ec4d81ee16e5939cd888cc12cdc33a3` | 4 |

The 20 source roots should be kernel-verified under the F4/G1A frozen cache in original import order. Original G3A imports `OAI.MathematicalPhysics.BFSS.CovariantFields`; that genuine OAI source was already cold-built on this isolated branch and must not be replaced by a surrogate. G3B's `oneParticleMatrix_block` represents original color B=output matrix row and color A=input matrix column. Preserve all signs, paired Fock mode labels, and source exactness.

## Physical bridge after G-series

1. Jointly import original S1G `source_quarter_z_matrix` and G1A original `pairedAlgebraData_color`, then discharge the existing accepted conditional S1V21 theorem's `hcolor` and `hg` to prove the genuine **original** G3A adjoint coefficients at `sourceZ sourceQuarterTurnTime`. The S1G import transitively uses S1F and L6H5E8Y: staging only G-series does **not** guarantee that cache exists.
2. Prove existing untouched S1V19 source theorem `original_zquarter_adjoint_matrix` with exact original +i Pauli orientation and trace normalization; do not substitute the separately proved standalone source-literal SU2 action.
3. Prove existing untouched S1V20 equality `original_source_zquarter_48_matrix_eq_spin_quarter` by exact original 8×3 paired label equivalence and literal source 48×48 matrix entries; separately retain S1V18's standalone verified Spin(48) matrix equality. This is only ONE fixed original SU(2) element, not the global lift.
4. Beyond that, construct/prove a genuine continuous source SU(2)→Spin(48) lift and source–manuscript Clifford-module equivariant unitary, then source/gauge-invariant smooth core, all 16 closed supercharge graphs and self-adjoint Hamiltonian domain equality; finally test independent Spin(9)/positive-spectrum proof. Do not promote any intermediate certificate into a BFSS mass-gap theorem.

**Governance:** isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` only, no PR25 base/merge, no main/upstream mutation, no redundant CI. If F4 fails, stop at first causal error and adapt instead of manufacturing follow-on gates.
