# BFSS M4F9 H4D3B — Gate #4 RED: missing independent CompleteSpace at generic adjoint call

**Disposition:** `M4F9_H4D3B_GATE4_RED__QUALIFIED_H4D3A_CACHE_EXACT_HIT__REVERSE_DOMAIN_FIXED__STRICT_LINTER_FIXED__ONE_FINAL_GENERIC_ADJOINT_APPLICATION_MISSING_COMPLETESPACE__SORRYAX__ZERO_ROOTS_ACCEPTED__GATE5_TERM_LOCAL_INSTANCE`.

## Immutable original strict evidence

[Original GitHub Actions run #40113298910](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40113298910), job **120929316264**, `completed/failure`, event commit **bde1affde78d13693b04582f5d6bf13926569138**. Exact mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F9H4D3BActualNativeAdjointForward.lean`, Git blob **ec627b402c07e102f0e1316564643b9d06e83b65**, strict workflow `.github/workflows/bfss-m4f9-h4d3b-actual-native-adjoint-forward-strict-gate4.yml`, Git blob **eb52c7283e206181062f42cc18e561ab269851aa**.

Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Single-root source hash/import/namespace preflight passed. Original qualified H4D3A genuine independent-physical Hilbert completeness ancestry cache **exact HIT**:
```
bfss-fcp-m4f9-h4d3a-independent-complete-227b5cc1-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Fresh Lean compiler:
```
FCPM4F9H4D3BActualNativeAdjointForward.lean:98:5:
  error(lean.synthInstanceFailed): failed to synthesize instance of type class
    CompleteSpace ↥(independentPhysicalSpace theta hCAR hHermitian)

'FCP.M4F9H4D3BActualNativeAdjointForward.nativeAdjoint_forward_domain_action'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
That is the **only reported Lean source error**. The proof got through all true BFSS density hypotheses, both entire domain-transport implications, the original source-defined sixteen-charge action correspondence and its final typed reverse-domain equality before the abstract H4D2A adjoint theorem. The final application needs the existing independently proven `CompleteSpace` instance explicitly in the **proof term**. Removing the duplicate `haveI` declarations from Gate3 eliminated both strict style errors but exposed this absence.

No H4D3B theorem or child cache accepted; strict Gate4 RED **0/1 new roots**, because `sorryAx` is present. Original diagnostic [artifact #12567631444](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40113298910/artifacts/12567631444), ZIP SHA256 **442de2c1e50556f83c73ecb47a897a8c53754feaf1e3e22bdf6b5bbcf6e010a3**. Earlier Gate1 declaration-instance failure, Gate2 two local style errors + reverse-domain mismatch, Gate3 two `haveI` style errors with favorable axioms all remain RED in separate immutable audits.

## Narrow next experiment (Gate5)

Retain type-level `letI` proofs in the theorem proposition for exact adjoint-domain syntax. Keep the proof otherwise unchanged. At the **final generic theorem invocation**, use a scoped Lean term expression:
```lean
  simpa only [f,g,U,V] using
    (letI : CompleteSpace (independentPhysicalSpace theta hCAR hHermitian) :=
       FCP.M4F9H4D3AIndependentPhysicalHilbertComplete.independentPhysicalSpace_complete
         theta hCAR hHermitian J hJ
     letI : CompleteSpace pairedGaugeData.physicalSpace :=
       FCP.BFSSSU2PhysicalDomainL6H5E8BB.originalPhysicalHilbertComplete
         pairedAlgebraData pairedGaugeData
     FCP.M4F9H4D2AGenericNativeHilbertAdjointForward.adjoint_forward_domain_action
       f g U V hf hg hFwd hRev hAct y hy)
```
This introduces no new global/unproved instances and should avoid the proposition-goal tactic style linter because both bindings occur in term syntax; this is a **candidate**, not established. If strict lint still rejects it, use an explicit typed helper or explicit instance application rather than suppressing linter warnings. Do not disable `-DwarningAsError` or axiom validation. Require exact parent cache, new source Git blob and distinct Gate5 leaf workflow/cache. Test and preserve any new diagnostic.

The actual AY source-native and J-free independent E2 `LinearPMap` definitions, true physical Hilbert unitaries, input/output domain/action bridge, H4D3A original/independent completeness and density, original Haar domain theorem remain unchanged. No actual native forward adjoint result, reverse adjoint result, `T†T` domain/action, historical ambient-output original AY Hamiltonian or spectral-gap theorem can be accepted from Gate4. Working principal tally 309 (historical, unreconciled), support roots separately recorded. Canonical `main`, pinned upstream math and PR #25 unmodified.
