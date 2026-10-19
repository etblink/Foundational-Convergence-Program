# S1V11 first strict center-parity gate — exact negative knowledge

**Date:** October 18, 2026 PDT / October 19 UTC.  
**Run:** [S1V11 first strict run #39213076095, RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39213076095).  
**Job:** 117930616511. **Failure classification:** `FINAL_NORMALIZATION_LEAN_SIMPLIFIER_ONLY__SIX_PRECEDING_ROOTS_AXIOM_CLEAN__NO_SIGN_REVERSAL`.

All source/toolchain pins and eight predecessor stages succeeded, including S1V9 ordered genuine Spin48 product and S1V10 local negative Clifford square. The new S1V11 source compiled and printed six `#print axioms` reports containing only `[propext, Classical.choice, Quot.sound]`:

- `sourceSpinListProduct_coe`
- `sourceColorPlaneRotor_coe_comm_list`
- `sourceListCliffordProduct_sq`
- `sourceOrderedSpinBlocks`
- `sourceOrderedSpinBlocks_length`
- `sourceSixteenColorRotor_coe`

The seventh final theorem `sourceSixteenColorRotor_coe_sq_one` failed **at line 118** because Lean's `simpa using h` did NOT evaluate the explicit scalar expression `(-1 : CliffordAlgebra Q)^16` to `1`. The actual compiler's exact mismatch was:

```
h : sourceListCliffordProduct sourceOrderedSpinBlocks *
    sourceListCliffordProduct sourceOrderedSpinBlocks = (-1) ^ 16
⊢ sourceListCliffordProduct sourceOrderedSpinBlocks *
    sourceListCliffordProduct sourceOrderedSpinBlocks = 1
```

The formula is mathematically correct and the **general list-square equation already compiled**. The provisional seventh theorem depended on `sorryAx` after the unsolved simplification and must NOT be counted accepted.

**Targeted repair:** replace `simpa using h` with `have hparity : (-1 : C) ^ 16 = 1 := by norm_num; rw [hparity] at h; exact h`, retaining every theorem statement, source axis and original sign unchanged. Candidate exact source blob `ba4328851907efcb59dee45c6c0a2cecde07fa06`; the deliberately scoped [retry run #39213572905](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39213572905) was initiated. Qualify all seven only if the retry successfully emits complete axiom reports, produces nonempty .olean, and ends green.

No PR #25 or main modifications; only the isolated branch one-file push workflow triggered. This is proof-engineering feedback, not a mathematical negative about the central parity calculation.
