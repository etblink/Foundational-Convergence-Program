# FCP BFSS SU(2) — M4E2 Gate #3 strict acceptance: independent real coordinate-derivative intertwiner

**Date:** October 22, 2026 (PDT).  
**Disposition:** `M4E2_GATE3_STRICT_PASS__INDEPENDENT_COORDINATE_DERIVATIVE_SOURCE_INTERTWINING__ONE_ROOT__283_CUMULATIVE`.

**Strict accepted theorem roots: 283 = previous 282 + exactly one M4E2 root.**

## Independent run and compiler verification

- [GitHub Actions run #39805713672](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39805713672), job `119918249567`, one attempt, overall workflow **completed/success**.
- Workflow head `45720ccef0c46bb8b8e53f4a166bf9887c0d60a8` on isolated research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Accepted candidate `experiments/openai-math-su2-physical-domain/FCPIndependentCoordinateDerivative.lean`, exact Git blob `3c0e4fd84bb473e75a01fb6cadfd9e3aaf7f73f5`.
- Strict workflow `.github/workflows/bfss-m4e2-independent-coordinate-derivative-strict-gate3.yml`, exclusive workflow-path push trigger.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Frozen original and accepted predecessor source pins, new candidate blob SHA, toolchain and `.olean` dependencies passed. Qualified M4E1 parent cache restored `bfss-fcp-m4e1-fermion-core-action-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- `lake env lean -DwarningAsError=true` produced fresh `.olean`, strict declaration-name and permitted-axiom checks passed. Exact original Lean reports:
  ```text
  'FCP.IndependentSmoothSupercharge.independentCoordinateDerivative' depends on axioms:
    [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentCoordinateDerivative_apply' depends on axioms:
    [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentCoordinateDerivative_intertwining' depends on axioms:
    [propext, Classical.choice, Quot.sound]
  M4E2_INDEPENDENT_COORDINATE_DERIVATIVE_INTERTWINING_ONE_ROOT_STRICT_PASS
  ```
- No `sorryAx`, unexpected warnings, compiler errors, or non-whitelisted axioms. Both supporting declarations are strictly checked; exactly **one** new root is ledger-counted, the source-exact intertwiner.
- New qualified cache saved `bfss-fcp-m4e2-coordinate-derivative-v3-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostics uploaded as artifact `bfss-m4e2-gate3-39805713672`, artifact ID `12438775148`.

## Mathematical claim actually accepted

```lean
FCP.IndependentSmoothSupercharge.independentCoordinateDerivative_intertwining
```
proves for any complex Hilbert fiber E, complex linear isometric equivalence `J : E ≃ₗᵢ[ℂ] Fermion 2`, source-coordinate indices i,A, and genuine compactly supported smooth `f : IndependentTestCore E`:
```lean
independentSmoothTransport J (independentCoordinateDerivative i A f) =
  coordinateDerivative i A (independentSmoothTransport J f)
```
The independent derivative operator is directly `TestFunction.lineDerivCLM ℂ (EuclideanSpace.single (i,A) 1)`, without J. The right-hand coordinate derivative is the *literal pinned original* `OAI.BFSSQuantum.AlgebraData.coordinateDerivative`, a namespace-level definition, not a field of `pairedAlgebraData`. The proof uses actual real Fréchet derivatives and a correctly typed certificate:
```lean
exact ((L.hasFDerivAt).comp x hf.hasFDerivAt).fderiv
```
where `L` is `J` restricted to a real continuous linear map. No source physical charge, closed operator, normalized Hamiltonian, or spectrum is inferred.

## Negative knowledge preserved

- [M4E2 Gate #1 #39803053288](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39803053288) red, 0 roots: the original `coordinateDerivative` is a namespace definition without a model argument; invalid `pairedAlgebraData.coordinateDerivative` notation at statement line 57. Diagnosis in `audits/OPENAI_MATH_BFSS_SU2_M4E2_GATE1_COORDINATE_DERIVATIVE_INVALID_FIELD_NOTATION_RED_2026_10_22.md`.
- [M4E2 Gate #2 #39804460414](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39804460414) red, 0 roots: fixed original source identifier, but incorrectly applied `rw [fderiv_comp L.differentiableAt hf, ContinuousLinearMap.fderiv]`, producing a theorem-argument mismatch at line 83. Diagnosis in `audits/OPENAI_MATH_BFSS_SU2_M4E2_GATE2_FDERIV_COMP_REWRITE_RED_2026_10_22.md`.
- Gate #3 changed only the derivative proof tactic to the explicitly supported `HasFDerivAt.comp` chain rule. Both prior failed sources and runner diagnostics retained; no credit for reds.

## Research continuation

Priority 3 next target is to **define the independent kinetic component** by genuine E-valued Majorana multiplication of the independently defined real coordinate derivative, with exact original nine gamma coefficients and manuscript normalization `-Complex.I`. Prove source kinetic finite sum intertwining from accepted M4E1 (fermion) and M4E2 (derivative) independently of cubic. Then separately define position/color structure-constant cubic factor, and finally assemble sixteen supercharges and establish source exactness and gauge-core/domain properties.

No claim of full sixteen-charge equality, closed graph, Hamiltonian identification, Spin(9) representation theorem, or spectral conclusion is promoted from M4E2.

Governance: isolated audit-only commit, no canonical main, immutable original source, accepted Lean blobs, draft PR #25, or Issue #28 mutation.
