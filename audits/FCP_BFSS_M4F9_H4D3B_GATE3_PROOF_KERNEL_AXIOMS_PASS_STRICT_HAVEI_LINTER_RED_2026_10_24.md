# BFSS M4F9 H4D3B — Gate #3 RED: qualified mathematics compiles, strict style linter rejects redundant proof-local instances

**Disposition:** `M4F9_H4D3B_GATE3_RED__ORIGINAL_H4D3A_PARENT_EXACT_HIT__FORMAL_LEAN_AXIOM_REPORT_ALLOWED_ONLY__NO_PROOF_TYPE_ERRORS__TWO_HAVEI_STYLE_LINTER_FAILURES__STRICT_GATE_NOT_ACCEPTED__GATE4_REMOVE_REDUNDANT_INSTANCES`.

## Original immutable evidence

Original GitHub Actions [run #40112495120](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40112495120), job **120926957598**, workflow and job `completed/failure`, event commit **239de5a03065aa1957ae0e5e61bc4b5e8a87d3da**. Mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F9H4D3BActualNativeAdjointForward.lean`, exact Git blob **2119810000e5459a417790380fbcc86f5bb56b45**. Strict workflow `.github/workflows/bfss-m4f9-h4d3b-actual-native-adjoint-forward-strict-gate3.yml`, exact Git blob **5afcf4b1f91bc109283cdfb5d43b64d7a9779d84**.

Frozen original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact Git source and root preflight passed, and the complete strictly qualified H4D3A original independent physical Hilbert completeness ancestor cache hit exactly:
```
bfss-fcp-m4f9-h4d3a-independent-complete-227b5cc1-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Fresh original Lean output:
```
FCPM4F9H4D3BActualNativeAdjointForward.lean:64:2: error: Try this:
  haveI̵
  The goal is a proposition, so `have` is preferred over `haveI`.
FCPM4F9H4D3BActualNativeAdjointForward.lean:67:2: error: Try this:
  haveI̵
  The goal is a proposition, so `have` is preferred over `haveI`.

'FCP.M4F9H4D3BActualNativeAdjointForward.nativeAdjoint_forward_domain_action'
  depends on axioms: [propext, Classical.choice, Quot.sound]
```

Neither Gate1's missing `CompleteSpace` during statement elaboration nor Gate2's non-definitional `U (U.symm z)` alignment error appeared. The only two reported source errors are the local `haveI` style-linter objections, elevated by `-DwarningAsError=true`. The stated theorem has a **favorable strict axiom report** and there are **no reported remaining substantive Lean proof obligations**; nevertheless **the strict gate is RED, 0/1 accepted roots and NO qualified child cache**. Do not relabel the run successful. The strict acceptance process requires no compiler or linter errors.

Original unfiltered diagnostics [artifact #12567460780](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40112495120/artifacts/12567460780), ZIP SHA256 **9cbdafeed677041ddd2cf1f37a3315ce9e2247cb1d25dfa07f128de834ae28bd**.

## Cause, risk and corrective plan

The theorem proposition already contains local `letI : CompleteSpace` bindings backed by strictly accepted H4D3A and source completeness theorems, allowing the **theorem statement** to elaborate the actual native `.adjoint` expressions. The proof body also introduces two redundant local `haveI : CompleteSpace` instances before `intro y hy`. Lean's lint rule `linter.style.haveILetI` rejects the proof-local `haveI` in a proposition and recommends `have`, which would not necessarily restore typeclass search. The least invasive correction is to **remove the two proof-local `haveI` declarations**, retaining the proposition-level actual proof-backed completeness bindings and the unchanged proof body, and use new Gate4 fresh Lean compilation to determine whether they were indeed redundant. Do **not** disable the strict linter, relax axiom policy, or mask warnings to obtain a green run. If Gate4 reveals failed synthesis, handle that as a fresh distinct typeclass-locality diagnostic instead of assuming success.

The exactly defined source AY native charge, original-independent E2 native charge, real input/output physical Hilbert unitaries, exact natural domains, H4D1/H2D2A density, H4C2C input-domain correspondence, H4C2D charge action, and H4D2A/B generic Hilbert adjoint covariance are unchanged. Forward BFSS-specific adjoint transport is mathematically strongly evidenced but remains **strictly UNACCEPTED**. Reverse BFSS adjoint, actual `T†T` composition, historical ambient-output AY normalized Hamiltonian and spectrum remain unproved. Frozen original source and canonical `main`, PR #25 untouched; working principal tally 309 unchanged.
