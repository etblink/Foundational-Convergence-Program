# BFSS SU(2) M4A — Gate #1 original-real-Clifford source interface RED
**Local date:** 2026-10-21 PDT (GitHub completed October 22 UTC).  
**Disposition:** `M4A_GATE1_RED__GENERIC_THREE_MODULES_PASS__SOURCE_QUADRATIC_FORM_REWRITE_TRANSPARENCY_GAP__ZERO_ROOTS_ACCEPTED`.

## Primary evidence

[Strict Actions run #39720261133](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39720261133), job `119631852200`, source head `505a662a055723b65654e85149810d6e859ebfdd`, **completed failure**. Original source/hash preflight, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, separately qualified C1 and M3J restored caches, and three freshly compiled generic modules all passed. Strict generic axiom reports include `FCP.IndependentCliffordIntertwining.intertwines_all` and its coordinate-axis form with only `propext`, `Classical.choice`, `Quot.sound`.

The actual original-source adapter failed at `FCPIndependentOriginalCliffordBridge.lean:108:6` when applying `rw [cliffordAction_axis, hsource]`. Lean stated that the rewrite lemma expects `CliffordAlgebra.ι coordinateQuadratic (Pi.single p 1)`, while the target contains `CliffordAlgebra.ι Q (Pi.single p 1)`, where `Q := source48Quadratic`. The two indexed real forms are the same unit-weight coordinate construction on `Fin 24 × Fin 2`, but the rewrite elaborator reported a transparency-level mismatch. This is a **proof term elaboration defect**, not a counterexample to independent Clifford intertwining.

`independent_original_axis_intertwining` and `independent_original_clifford_intertwining` accordingly printed `sorryAx`. The generic independent Spin/Clifford definitions printed permitted axioms, but are not a newly accepted source root. No qualified M4A cache was saved; acceptance ledger stays **272**.

## Gate #2 smallest proposed repair

Replace exactly the failed two-lemma composite rewrite by a **named source-axis equality** for the independent `cliffordAction`. Inside that lemma explicitly use `change` to identify the source form `Q` with `coordinateQuadratic (R := ℝ) (I := SourceLabel)` and then apply the already locally verified `cliffordAction_axis`. Rewrite the original target by the specifically typed `haxis` and the unchanged source `hsource`.

Do not alter CAR, form normalization, source label equivalence, source Fock action, Clifford representation, the theorem statement, or any generic modules. Keep accepted M3J/C1 toolchain/source/cache ancestry unchanged. Verify actual Lean compilation and all printed axioms before accepting. Launch through a newly path-scoped Gate #2 workflow and use a distinct qualified cache key.

Gate #2 is **not** proven green by static review; the next compiler result is the discriminating evidence. The separate independent SU(2) gauge adapter is not included. Manuscript Spin-model equivalence and physical-charge/closed-operator-domain/spectral claims remain open.
