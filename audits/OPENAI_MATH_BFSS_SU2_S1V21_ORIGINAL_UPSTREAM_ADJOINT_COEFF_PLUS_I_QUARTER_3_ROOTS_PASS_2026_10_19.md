# S1V21 — Genuine original upstream OAI adjointCoefficient quarter-turn theorem ACCEPTED

**Date:** October 19, 2026 PDT.  
**Strict CI:** [#39282242004 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39282242004), job `118158651081`, source commit `39b76d6899630bcfc55920a3c426d9540db018f8`.  
**Exact Lean source:** `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V21OriginalUpstreamAdjointQuarterConditionalProbe.lean`, Git blob `5b6059104dda78fbcd1cc073f8f51a986489a50a`.  
**Original imports:** pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` OAI `GaugeCore` (REAL original `AlgebraData.adjointCoefficient` definition); original source `SU2ColorCrossProbe` (the G1A normalized Pauli basis); previously accepted S1V12 source-literal +i quarter matrix and conjugation. Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Three verified roots

1. `FCP.BFSSS1V21.original_normalizedPauli_eq_source_literal`: exact original normalized color Pauli equals S1V12 qualified source-literal Pauli, for each of the 3 colors.
2. `FCP.BFSSS1V21.original_normalizedPauli_zquarter_sign`: conjugation by the literal +i SU(2) z-quarter matrix has the exact `-,-,+` result on the ACTUAL original normalized Pauli matrices.
3. `FCP.BFSSS1V21.original_upstream_adjointCoefficient_of_pinned_quarter`: for ACTUAL upstream `M : OAI.BFSSQuantum.AlgebraData 2` and ACTUAL `g : GaugeGroup 2`, **under explicit hypotheses** `hcolor : ∀ A, M.color A = normalizedPauli A` and `hg : (g : ColorMatrix 2)=sourceQuarterZLiteral`, the original exact `M.adjointCoefficient g A B` is `if B=A then (if A=2 then 1 else -1) else 0`. Original coefficient input color `A`, output color `B`; exact real trace / normalized `√2` conventions and +i sign retained.

All three `#print axioms` returned ONLY `[propext, Classical.choice, Quot.sound]`; the final one wrapped over log lines. Job emitted `S1V21_GENUINE_UPSTREAM_OAI_ADJOINTCOEFFICIENT_PLUS_I_QUARTER_3_CONDITIONAL_ROOTS_PASS`, required fresh nonempty `.olean` and zero `sorryAx`/Lean `error:`. This is an axiom-clean **conditional mathematical theorem**, not a tautology or a made-up surrogate gauge representation.

## Exact still-open transition to original source

The ORIGINAL `pairedAlgebraData` (G1A) is already defined and proves `pairedAlgebraData_color`; the original F4 module proves `concreteAlgebraData_color` equaling the same normalized Pauli. ORIGINAL S1G `source_quarter_z_matrix` verifies `sourceZ sourceQuarterTurnTime` equals the literal positive-i quarter. These two **accepted original mathematical facts are not yet imported together with this S1V21 module in a strict new combined gate on the isolated branch**.

The unqualified S1V19 original-named bridge source was refactored at Git blob `e16dd263bb85e87675ee7df4b52ce894d086e04d` to discharge those two hypotheses and call the now-accepted S1V21 coefficient theorem. This removes a second independently elaborated Pauli trace calculation, but does NOT make S1V19 green until the historical original F3/G1A/S1G closure and S1V19 themselves compile with qualified axioms. S1V20 exact original 48×48 quarter matrix identity remains likewise UNCOMPILED.

No global continuous SU2→Spin48 group homomorphism, original physical Fock intertwiner, Hamiltonian domain equality or spectral positive-eigenvalue theorem follows from this conditional finite-group-point identity. No PR25/main changes.
