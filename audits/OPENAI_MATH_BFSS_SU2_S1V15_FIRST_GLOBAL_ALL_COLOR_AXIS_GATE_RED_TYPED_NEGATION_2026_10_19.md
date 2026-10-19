# S1V15 first global 48-axis product-action gate — exact negative knowledge

**Date:** October 19, 2026 PDT.  
**Run:** [#39239888975 — RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39239888975), job `118017861763`; checkout `79bd1e1f4cd80482000ae972bcf169908df59000`.

All immutable source/compiler/Mathlib pins and accepted predecessor proof stages S1V0/V1/V4/V5/V6/V8/V9/V10/V11/V12/V14 passed. The six-root S1V15 original candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V15GlobalSixteenSpin48AllColorAxisActionProbe.lean` blob `5ba03549231061a5064625abfe1451b0b7211640` got **five** original root reports with permitted axioms or dependency `sorryAx`, but the first causal Lean ERROR was one overloaded-negation inference failure at line 91:

```
Application type mismatch: The argument
  sourceColorPlaneRotor_conjugates_other_block β α hβα A
has type
  Rβ * ι(e_{α,A}) * star Rβ = ι(e_{α,A})
but is expected to have type
  Eq ?m.259 ?m.260
in the application
  congrArg Neg (sourceColorPlaneRotor_conjugates_other_block β α hβα A)
```

**Classification:** `ELABORATION_NEG_TYPE_UNIVERSE_INFERENCE_FAILURE`, not a mathematical sign counterexample. The proof of distinct block membership, no duplicates and original Fin16 list enumeration compiled with only `[propext, Classical.choice, Quot.sound]`. The global induction root and its two dependent final roots had `sorryAx` because this one application was not elaborated, so their correctness was **not** established by this run.

**Targeted repair:** replace `congrArg Neg h` with `congrArg (fun z : C => -z) h`, giving the overloaded `Neg` operation the exact genuine real Clifford algebra type `C=CliffordAlgebra source48Quadratic` without adding an axiom or rewriting source signs. Repair source blob `95bdb9560c064618e434ebc9bd932bedfeda8284`. One isolated workflow-file-only retry is intentionally running at [#39240583342](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39240583342). Do not claim S1V15 or its six roots accepted unless that run has no Lean errors/`sorryAx`, all six axiom reports and nonempty fresh `.olean`.

Previously accepted S1V14 (all sixteen color-two axes fixed) remains green and unchanged. Previous standalone S1V8/9/10/11/12 local and product source Spin group facts remain valid.

**Boundary:** even the eventually qualified full 48-axis conjugation by one product of sixteen 180° rotors will not itself prove a continuous SU2→Spin48 group homomorphism or original G1A/S1G imported namespace interoperability. Heavy original-source bridges S1V3/S1V7/S1V13 remain uncompiled.

**CI:** isolated branch only; no PR25/main modification; no parallel workflows started by source-only commits.
