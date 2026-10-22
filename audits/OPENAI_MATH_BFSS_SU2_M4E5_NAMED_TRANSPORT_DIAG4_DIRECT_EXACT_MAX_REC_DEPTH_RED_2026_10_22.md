# FCP BFSS SU(2) — M4E5 Named Transport Diagnostic #4 RED (kinetic direct-exact recursion)

**Date:** October 22, 2026. **Classification:** Lean definitional-equality recursion at named kinetic transport boundary; **0/2 new roots accepted; cumulative 287**.

## Original observed result

- [Actions run #39838134034](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39838134034), job `120031752826`, first attempt, `completed/failure`, run head `54ca30b255f606d5ffbce3791bfe5488772f12b6`.
- The immutable source preflight, pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` passed.
- Qualified parent cache `bfss-fcp-m4e5-source-outer-diag1-v1-adc7f124-lean4341-d13f23b-Linux-X64` **restored** and qualified .olean closure was checked.
- Original candidate file `FCPM4E5NamedKineticBridge.lean`, blob `2a55f334b182a45e8ee5b29e4955bdef8c5e07bc`, failed in Stage C after approximately 12 seconds (18:18:09–18:18:22 UTC). Compiler diagnostic:
```text
FCPM4E5NamedKineticBridge.lean:39:8: error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
'FCP.IndependentSmoothSupercharge.independentKinetic_named_source_intertwining' depends on axioms:
    [propext, sorryAx, Classical.choice, Quot.sound]
```
- The exact failing proof was `exact independentKineticCharge_intertwining gamma theta J hGamma hJ α f` with target RHS `originalSourceKineticPart pairedAlgebraData α (independentSmoothTransport J f)`.
- Strict Stage D `FCPM4E5NamedCubicBridge`, blob `ceb122fe7a3cb44a03b239c328d883e656a05b70`, was **skipped** because Stage C failed. No new cache saved.

## Distinguish failed proof strategies

Diagnostic #3 used `simpa only [originalSourceKineticPart] using ...` and failed at recursion-depth. Diagnostic #4 removed simplification entirely but STILL failed via `exact` converting the large explicit source finite sum into the named source operator. Therefore the expensive obligation is not restricted to the simplifier; Lean's definitional conversion itself can drive excessive reduction after specializing the abstract source map to the original pairedAlgebraData.

The previously accepted `originalSource_charge_eq_parts` theorem for **abstract** `M : AlgebraData N` and the accepted M4E3 kinetic original-summand intertwiner are unchanged. These are logically consistent mathematical ingredients. No counterexample or invalid source coefficient has been observed.

## Next research architecture (unqualified until compilation)

Add an **abstract** named-versus-raw source sum equality, proved by `rfl` with still-abstract `M : AlgebraData N`. Then specialize its proof as an explicit equality **of operators**, apply `congrArg` to transport it to equality of applications, and chain with the accepted source kinetic theorem by `Eq.trans`. The raw sum must be textually the same as the accepted source kinetic theorem's RHS; this design tests whether Lean can exploit separately checked equality rather than perform a giant implicit definitional conversion. Conduct separate bounded CI stages; if this still triggers recursion, instrument each proof phase and preserve diagnostic, not blindly increase `maxRecDepth`.

Reject `sorry`, `admit`, axioms outside `propext`, `Classical.choice`, `Quot.sound`, modifying immutable source, or counting a full supercharge identity before strict kernel/CI acceptance. Do not infer Hamiltonian, physical-domain or spectral results from the source-side component proofs.
