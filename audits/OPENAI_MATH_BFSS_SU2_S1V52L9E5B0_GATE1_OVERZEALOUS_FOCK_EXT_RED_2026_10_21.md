# S1V52L9E5B0 — actual original Fock real/complex scalar bridge Gate #1 RED

**Verdict:** `L9E5B0_GATE1_RED__ZERO_OF_ONE__L9E4_QUALIFIED_CACHE_HIT__UNCONTROLLED_EXT_OVEREXPANDED_INTO_PILP_COORDINATES__203_ACCEPTED`.

- [GitHub Actions run #39556191916](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39556191916), job `119076399241`, exact workflow/source SHA `868e241622fd5f284d3ddc056967788887f28eff`, candidate blob `3e3ef23a0fa9a143ef701272900e611719b5925d`, completed FAILURE.
- Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; pinned source/Pauli and L9E4 accepted cache/source closure all PASS.
- Candidate theorem: for each real `a` and **actual** `T : Fermion 2 →L[ℂ] Fermion 2`, `a • T = (a:ℂ) • T`. It is a **separate, unqualified operator-scaling bridge**, not a new Clifford-algebra module.
- Single compiler error, line 38: `ext ψ` followed by `simp only [ContinuousLinearMap.smul_apply]` made Lean **overextend into the original PiLp Fock representation**, resulting in the more specialized goal `(a • T ψ).ofLp i✝ = (↑a • T ψ).ofLp i✝`. The supplied `(Complex.coe_smul a (T ψ)).symm` proves equality of whole Fock vectors instead, and therefore did not match this `ofLp` component goal. This is proof-tactic extensionality overspecialization, not a mathematical counterexample.
- `#print axioms` contains `sorryAx`: zero accepted B0 roots, cumulative **203**. Diagnostic artifact `bfss-s1v52l9e5b0-fock-real-linear-gamma-39556191916`, id `12326340398`.

## Narrow correction

Use `apply ContinuousLinearMap.ext` followed by `intro ψ` to stop at **equality of original whole Fock vectors**. Simplify the operator-level scalar evaluation explicitly and then apply the qualified pinned `Complex.coe_smul`. Do NOT use `ext ψ`, which recursively invokes PiLp extensionality and changes the goal's granularity. The exact theorem statement, genuine original Fock objects and real/complex scalar actions remain unchanged. A separate strict Gate #2 is necessary before the claim can be qualified or used by L9E5B.

This is independent of the still-unqualified complex finite CAR contraction (L9E5A2). No main/upstream/PR change.
