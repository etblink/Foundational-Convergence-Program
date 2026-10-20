# S1V45 Gate #1 RED — genuine original generator preimage equality direction mismatch

**Disposition:** `S1V45_G1_EXACT_SOURCE_PINS_AND_S1V44_CACHE_RESTORED__GENERATOR_PREIMAGE_PROOF_TWO_EQ_DIRECTION_MISMATCHES__DEPENDENT_SORRYAX__NO_S1V45_CACHE__UNQUALIFIED`.

- [S1V45 strict Gate #1 run #39366477497](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39366477497), job `118444379837`, **FAILURE**. Workflow/source checkout commit `58855ba19992c480e8a4f59c6540bd2fcd89c5b9`; Lean candidate authoring commit `f86d0c088c5601de9a51d0bbd83fb75696647792`; source Git blob `af059084edc3ab1c48f16657a1fd6ad6f2036624`.
- All exact original source/toolchain pins passed: immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The previously accepted S1V44 cache `bfss-s1v44-isolated-source48-grade-det-parity-inverse-v1-adc7f124-lean4341-d13f23b-Linux-X64` was restored, and original source `.olean` checks passed.
- First causal error `...S1V45ActualLipschitzGradeDetClosureProbe.lean:36:8`: `rw [←ha]` failed because the pinned `Set.range` witness is **`ha : (CliffordAlgebra.ι Q) a = ↑u`**. To turn goal `Invertible (ι Q a)` into `Invertible ↑u`, the rewrite must use **`rw [ha]`**, not `rw [←ha]`.
- Second causal error line 47:4: the subtype/unit equality goal is `↑u = ι Q a`, but the exact witness is `ha : ι Q a = ↑u`. Supply **`ha.symm`**, not `ha`.
- The three `#print axioms` reports for the generator bridge, generator-inverse and universal Lipschitz closure targets all included `sorryAx` after the compiler failures; NO S1V45 theorem or cache is accepted. Debug artifact `bfss-s1v45-grade-det-closure-39366477497`, ID `12239378846`.
- The intended mathematical invariant, actual original 48-real labels and Clifford signs, exact genuine `lipschitzGroup` closure, inherited S1V43 one/mul/generator and S1V44 inverse interfaces were NOT changed. The failure is not evidence that the parity identity is false.

**Bounded Gate #2 change:** change exactly the two orientations, retaining the original three declaration statements and all source pins. If closure induction then fails at a further source/index elaboration point, classify and preserve that as a new earliest causal diagnostic. Do not weaken permitted-axiom, no-sorry or original-source hash checks, and do not rerun an identical red source.

Universal Lipschitz parity, Spin determinant+1, continuous global SU2 lift, manuscript module representation and BFSS spectral gap remain unqualified.
