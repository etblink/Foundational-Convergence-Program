# BFSS M4F9 H4D4B — Gate #2 RED: declaration resource obstacle resolved, final true source-adjoint argument alignment remains

**Disposition:** `H4D4B_GATE2_RED__QUALIFIED_H4D4A_PARENT_HIT__800000_HEARTBEATS_PASSED_DECLARATION__FINAL_SIMPA_TYPE_MISMATCH__PRETTY_PRINTER_RECURSION__SORRYAX__NO_ROOT_ACCEPTED__GATE3_EXPLICIT_SUBTYPE_ARGUMENT_EQUALITY`.

## Exact immutable evidence

Original [GitHub Actions run #40119834679](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40119834679), job **120948766669**, completed/failure, event commit **354f3b96f9f6540870d77592b88dc77a87489544**. Mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F9H4D4BActualNativeAdjointSquareAction.lean`, exact Git blob **842bebd3a8e637dcfcdf001c4171e90318b22527**. Workflow `.github/workflows/bfss-m4f9-h4d4b-actual-native-adjoint-square-action-strict-gate2.yml`, exact Git blob **56c649777921943ed17e407a639c435c0ed66a46**.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Full source hash, namespace, import, one-theorem and original-source preflights passed. Qualified H4D4A true natural domain ancestry cache exact HIT:
```
bfss-fcp-m4f9-h4d4a-adjoint-square-4062f563-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Original fresh Lean diagnostics:
```
FCPM4F9H4D4BActualNativeAdjointSquareAction.lean:110:2:
  error: Type mismatch: After simplification, term
    hAdjAction
  [Error pretty printing: maximum recursion depth has been reached
   use `set_option maxRecDepth <num>` to increase limit]
'FCP.M4F9H4D4BActualNativeAdjointSquareAction.nativeAdjointSquare_action_intertwine'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

**Gate2 strict RED, zero accepted roots, no qualified H4D4B child cache.** Original unfiltered logs [artifact #12570721324](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40119834679/artifacts/12570721324), ZIP SHA256 **23dac2c5c33b82e0b7e3f49568db970d0741ad83f4d061744811783374b5c5b9**.

## What this failure teaches

Gate1 failed before theorem-body proof checking: `whnf` at 200000 Lean heartbeats. Gate2 made exactly the controlled `set_option maxHeartbeats 800000` source change and reached final line 110. Thus the declaration resource ceiling was genuine. The new proof error is **not** another heartbeat failure: `simpa only [hChargeAction] using hAdjAction` cannot establish the expected true source-native adjoint-square action equality.

Actual accepted H4D4A produces original charge witness `hz` and output-adjoint membership `hGx` for `g⟨U x,hz⟩`. Accepted H4D3B separately gives `hVy` for `V (f⟨x,hx⟩)`, and `hAdjAction` computes the source adjoint there. Accepted H4C2D provides `hChargeAction : V (f ⟨x,hx⟩) = g ⟨U x,hz⟩`. The target involves the source-adjoint applied to a **subtype argument with a different proof witness**. Instead of relying on `simpa` to rewrite under a dependent subtype, construct the actual argument equality
```lean
  have hArgEq :
      (⟨V (f ⟨x,hx⟩),hVy⟩ : g.adjoint.domain) =
      ⟨g ⟨U x,hz⟩,hGx⟩ :=
    Subtype.ext hChargeAction
```
and transport through `g.adjoint` via `congrArg (fun w : g.adjoint.domain => g.adjoint w) hArgEq.symm` plus actual `hAdjAction`. This uses equality of genuine native output vectors and proof irrelevance of domain-membership witnesses; it asserts no unproved operator property.

The pretty-printer recursion cap hides the exact mismatch; therefore this is a testable **typed proof-argument alignment hypothesis**, not a proven explanation. Do not raise `maxRecDepth` just to print the huge goal or claim success before strict compilation. The next Gate3 must keep the same exact natural-domain square theorem statement, actual AY and independent operators, source pins and qualified H4D4A parent. Strict lint and three-axiom whitelist unchanged, unique source hash/workflow/cache; preserve further reds.

No native square action accepted, no ambient-output AY `1/16` Hamiltonian identification, no spectral or gap claim. Principal accepted-root working count 309 unreconciled; H4D4A remains strictly accepted. Canonical `main`, original sources and draft PR #25 untouched.
