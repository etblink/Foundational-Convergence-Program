# S1V52L9E5F18A Gate #1: duplicate red runs; real-to-complex operator scalar interface

**Classification:** `RED__0_OF_1_ROOTS_ACCEPTED__REAL_SMUL_MUL_NORMAL_FORM_NOT_CLOSED__DUPLICATE_EXECUTIONS_SAME_SOURCE__239_ROOTS_REMAIN`.

## Immutable evidence
- [First run #39608296418](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39608296418), job `119250172346`, **FAILURE**.
- [Duplicate run #39608308259](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39608308259), job `119252821320`, **FAILURE**.
- Both push runs evaluated exactly the same workflow/source commit `475ef1cc3844182cf5e5d99d958089ef13c46e6a`; the duplicated executions are not independent mathematical evidence.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F18AOriginalNativeFockPairedThetaRightCovarianceProbe.lean`, blob `bf4c742ce46a6ed235076c778c77232ba0b29c46`. Original pinned Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original source preflight, qualified F17/B0 cache restore, fail-closed dependency checks, original Pauli and Spin48 DAG passed in both.
- Both failures occurred only at line 79, after `Finset.sum_mul`. Lean's residual goal was:
```lean
⊢ ∑ i, adjointColorMatrix g i A • pairedTheta (spinPairEquiv.symm α) i * U =
    ∑ B, adjointColorMatrix g B A • (pairedTheta (spinPairEquiv.symm α) B * U)
```
- `simp only [Finset.sum_mul, smul_mul_assoc]` left the inner ℝ scalar transport unproved and reported `smul_mul_assoc` unused.
- Both imported F17 and F11 `#print axioms` reported only `[propext, Classical.choice, Quot.sound]`. F18A `#print axioms` included `sorryAx` due to the unclosed proof goal. The new theorem is **not accepted**; no F18A cache saved; cumulative ledger stays **239**.

## Causal diagnosis and controlled repair

The proof's noncommutative operator conjugation and accepted unscaled original Majorana identity are not in dispute. The remaining lemma transports a **real** source color coefficient through composition in the **complex** Fock endomorphism algebra; `smul_mul_assoc` works at the complex-algebra interface, but generic simplification did not bridge source ℝ-smul to ℂ-smul.

Use the already accepted `FCP.BFSSS1V52L9E5B0.originalFockOperator_real_smul_eq_complex_smul` explicitly at each summand, then apply `smul_mul_assoc` to the complex smul, and convert back to the original real coefficient. Do not invent scalar-tower instances; prior B0 red gates showed they are not a safe replacement for the actual source module's scalar actions. Use an explicit `Finset.sum_congr` after `Finset.sum_mul` to localize the action.

Next Gate #2 must pin the newly repaired candidate blob, import and audit accepted B0, F11 and F17, retain the exact original Pauli/Fock/Spin48 sources and three-axiom whitelist, and save a new cache only if all checks succeed. Never count either Gate #1 run as a green, or rereun it unchanged.

## Scientific nonclaims
Not yet shown: source vector-level gauge covariance, S1H implementer equality, independent manuscript 48-Clifford module equivalence, original physical closed charge/domain operator conjugacy, Spin(9) covariance or BFSS spectral conclusions. Main, upstream and PR #25 unchanged.
