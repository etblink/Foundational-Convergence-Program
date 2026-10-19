# S1V16 Gate 1 negative knowledge — exact 48-vector expansion and linearity API

**October 19, 2026 PDT.**  
**First strict run:** [#39258929774 — RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39258929774), job `118081212856`.  
**Original candidate source blob:** `910d64449eacc33c10b179bc51b554e4fd176539`, path `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V16GlobalSpin48AllRealSourceVectorActionProbe.lean`.  
**Disposition:** `EXACT_PINNED_API_AND_ETA_ELABORATION_FAILURE__NOT_MATHEMATICAL_COUNTEREXAMPLE__UNACCEPTED`.

All accepted predecessor modules including S1V15's FULL 48-basis source Spin48 action compiled successfully before this theorem. New S1V16 compiler diagnostics:

1. Line 51: `Fintype.sum_equiv` last pointwise proof leaves `v i • Pi.single i 1 = v (sourceBlockColorEquiv ((sourceBlockColorEquiv.symm i).1,(sourceBlockColorEquiv.symm i).2)) • Pi.single ... 1`. The original `simp only [sourceBlockColorLabel,sourceBlockColorAxis,Equiv.apply_symm_apply]` does not normalize the product `(p.1,p.2)` to `p` before applying `Equiv.apply_symm_apply`. Explicit `change` to `sourceBlockColorEquiv (sourceBlockColorEquiv.symm i)` followed by `simp only [Equiv.apply_symm_apply]` is the proposed proof-engineering repair.
2. Line 106: `smul_mul` is an unknown identifier at pinned Mathlib; the goal is the algebraically valid distribution of real scalar multiplication through two Clifford products in a finite sum. Replace the monolithic `simp only [Finset.mul_sum, Finset.sum_mul, mul_smul, smul_mul]` with `simp only [Finset.mul_sum, Finset.sum_mul]; apply Finset.sum_congr rfl; intro p hp; simp only [mul_smul, smul_mul_assoc]`. The pinned Mathlib contains and uses `smul_mul_assoc`.
3. Line 117: `map_ite` is an unknown identifier at this toolchain. Replace with `simp only [source48QuarterFlip,map_sum,map_smul]; apply Finset.sum_congr rfl; intro p hp; by_cases h : p.2=2 <;> simp [h]`.

The new `source48QuarterFlip` definition itself reports only permitted axioms. All downstream theorems depending on the unresolved coordinate identity are **UNQUALIFIED** and include `sorryAx` under the failed compilation, so no acceptance claim should be made from this red gate.

**Repair blob:** `ae583f41d14bed52ba672250a464c76cf80bcc2a` with same exact mathematical statements and source convention. **Deliberately triggered retry:** [isolated #39259919657](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39259919657). Accept four S1V16 roots only if all are kernel compiled with permitted `[propext,Classical.choice,Quot.sound]`, zero `sorryAx` and nonempty .olean.

**Still open:** S1V17 exact real-coordinate formula and involution candidate was staged unqualified; original named SU2 G1A/S1G source-import proof and continuous group lift remain OPEN. Isolated research branch only; active PR #25 and main untouched.
