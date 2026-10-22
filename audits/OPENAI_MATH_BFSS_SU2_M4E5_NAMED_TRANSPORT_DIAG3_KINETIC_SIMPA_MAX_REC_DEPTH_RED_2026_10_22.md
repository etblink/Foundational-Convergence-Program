# FCP BFSS SU(2) — M4E5 Named Transport Diagnostic #3 RED: kinetic `simpa only` recursion-depth

**Date:** 2026-10-22. **Disposition:** `M4E5_NAMED_DIAG3_RED__KINETIC_SIMPA_UNFOLD_RECURSION_DEPTH__CUBIC_UNTESTED__287_LEDGER_UNCHANGED`.

## Independently verified original evidence

- [GitHub Actions run #39830605369](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39830605369), job `120005410475`, attempt 1, `completed/failure`; pinned research HEAD `f47ece26d93389d69bcada40694d681870dd891f`.
- Source provenance passed: original pinned mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; M4E3 kinetic, M4E4B cubic, and M4E5 source outer theorem module hashes unchanged.
- The restored cache `bfss-fcp-m4e5-source-outer-diag1-v1-adc7f124-lean4341-d13f23b-Linux-X64` **HIT**, and `M4E5_NAMED_DIAG3_QUALIFIED_ORIGINAL_OLEAN_CLOSURE_PASS` printed. This independently confirms the Diagnostic #2 cache-version defect was fixed.
- Stage C began at **2026-10-22T18:26:34Z** and failed within ~12 seconds, *not* at its 105-second timeout. The compiler reported:
```text
FCPM4E5NamedKineticBridge.lean:39:2: error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
'FCP.IndependentSmoothSupercharge.independentKinetic_named_source_intertwining' depends on axioms:
    [propext, sorryAx, Classical.choice, Quot.sound]
M4E5_NAMED_DIAG3_C_KINETIC_FAILED_EXIT_1
```
- Stage D `FCPM4E5NamedCubicBridge` was **skipped** due Stage C failure. No cubic Lean verdict or qualified named transport cache exists.
- Kinetic source file Git blob `4612931a4be22b64829710e62a3012e0882abd9f`; cubic candidate Git blob `8bc13b10970080e5b3c1c25876b1f0c4af38831c`. Both theorem statements deliberately match accepted M4E3/M4E4B source summands and abstract named source operators; their definitions and mathematical inputs remain unchanged.
- Original diagnostic artifact `bfss-m4e5-named-transport-diag3-39830605369` uploaded by the workflow. **0/2 accepted** from Diagnostic #3; cumulative strictly accepted roots remain **287**.

## Exact failure and negative knowledge

The offending tactic is precisely:
```lean
  simpa only [originalSourceKineticPart] using
    (independentKineticCharge_intertwining gamma theta J hGamma hJ α f)
```
The `simpa` simplifier performs reduction/matching on the entire nested finite kinetic sum. This is a proof-automation cost obstacle at the **kinetic-named transport interface**, not an independent contradiction of the accepted kinetic theorem. In particular, the source `originalSourceKineticPart` was successfully defined in Diagnostic #1 for arbitrary abstract AlgebraData, but instantiating it under `simpa` forces costly normalization. The exact source summand is structurally identical to the RHS of accepted `independentKineticCharge_intertwining`.

## Next bounded experiment

Replace only proof tactics with *direct elaboration of the accepted theorem as a term*, omitting `simp`, `simpa`, `rw`, and explicit expansion of either source sum:
```lean
  exact independentKineticCharge_intertwining gamma theta J hGamma hJ α f
```
and analogously for the cubic bridge:
```lean
  exact independentCubicCharge_intertwining color gamma theta J hColor hGamma hJ α f
```
Kernel type conversion should only expose the **outer named source part definition**. Whether Lean actually performs bounded reduction is not yet demonstrated: insist on fresh stage-specific 105-second capped CI, strict `#print axioms` with no `sorryAx`, qualified cache, and preservation of failed logs. Do not increase `maxRecDepth` solely to mask the problem.

The actual full independent sixteen-charge theorem, closed domain, physical Hamiltonian and spectral conclusions remain unaccepted. Original source and accepted proof blobs, `main`, PR #25 and Issue #28 untouched.
