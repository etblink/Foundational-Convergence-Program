# S1V52L9E5A2 Gate #2 — actual Fock complex scalar-zero interface RED

**Verdict:** `L9E5A2_GATE2_RED__0_1__L9E4_CACHE_HIT__GENERIC_SMUL_ZERO_NOT_MATCHING_ORIGINAL_CONTINUOUS_LINEAR_OPERATOR_SCALAR_INSTANCE__203_ACCEPTED`.

- [GitHub Actions #39556850528](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39556850528), job `119078508677`, completed FAILURE at checkout `378c39dfaa92fd1096340ebe24ddb89dbfa35181`. Candidate source `SU2BFSSPhysicalDomainS1V52L9E5A2FiniteComplexWeightedFockCliffordSquareProbe.lean`, Git blob `e5e47eecfae169372eb677d5454a0cabafaedb31`.
- Pinned original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, source closure PASS, qualified original L9E4 parent cache HIT.
- Gate #1 was a single unsolved `SMulZeroClass ℂ ?m` from untyped `smul_zero`. Gate #2 explicitly ascribed `(c i*c j) • (0 : FockOp) = 0` but **still failed** because Lean instantiated a generic `SMulZeroClass.toSMul` scalar operation rather than the concrete `ContinuousLinearMap.instSMul` operation on the genuine original `Fermion 2 →L[ℂ] Fermion 2`. No other compiler error was reported. This mismatch is real compiler evidence: an explicit result type alone does not force the correct scalar-action instance in `smul_zero`.
- Printed axioms contain `sorryAx`: **0/1 root accepted**, cumulative S1V52 remains **203**, no new cache. Diagnostic artifact `bfss-s1v52l9e5a2-fock-real-linear-gamma-39556850528` (ID `12326450733`).

## Research redirect, no untested claim

Prove `(c:ℂ) • (0:FockOp)=0` **by extensionality of the actual complex continuous-linear operator on its original Fock vector**, explicitly expanding `ContinuousLinearMap.smul_apply` and `ContinuousLinearMap.zero_apply`. Any subsequent use of `smul_zero` must be on the actual *Fock vector* module, not the problematic abstract operator instance. This is a different proof interface, not a change of gamma CAR, complex scalar coefficients, or source labels.

A new workflow gate is withheld pending review of this exact interface and the independent L9E5B0 scalar-bridge result. The original-source real square and Clifford algebra Fock realization remain OPEN. No main/upstream/PR changes.
