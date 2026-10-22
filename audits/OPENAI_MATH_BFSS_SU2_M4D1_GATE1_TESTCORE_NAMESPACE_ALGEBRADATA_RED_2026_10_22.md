# FCP BFSS SU(2) — M4D1 Gate #1 RED: TestFunction namespace and original AlgebraData scope

**Project local date:** October 22, 2026 PDT.  
**Status:** `M4D1_GATE1_RED__DUPLICATED_TEST_CORE_NAMESPACE__ALGEBRADATA_CORETOL2_UNRESOLVED__278_ACCEPTED_ROOTS_UNCHANGED`.

## Independently inspected original evidence

- Strict GitHub Actions run [#39749894805](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39749894805), job `119727518963`, completed **failure**. Source/workflow SHA `6928e5791762ae879a3ec72aebd80455807cef57`.
- New candidate `experiments/openai-math-su2-physical-domain/FCPIndependentSmoothCore.lean`, original blob `caefd8a1c541af682539affe4ef50fc97069acfe`.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, candidate hash, accepted source pins, qualified M4C3B v2 cache restore, and exact predecessor `.olean` checks **passed**.
- Original compiler reported:
  ```text
  FCPIndependentSmoothCore.lean:31:7: error:
    The namespace IndependentSmoothCore is duplicated in the declaration
    FCP.IndependentSmoothCore.IndependentSmoothCore.
  FCPIndependentSmoothCore.lean:66:6: error(lean.unknownIdentifier):
    Unknown identifier coreToL2
  FCPIndependentSmoothCore.lean:71:13: error(lean.unknownIdentifier):
    Unknown identifier coreToL2_ae
  FCPIndependentSmoothCore.lean:104:4: error(lean.unknownIdentifier):
    Unknown identifier coreToL2
  ```
  The line 66 failed elaboration also left an unsolved AE-equality goal containing `sorry` placeholder from the missing original source embedding.
- Five supporting declarations (`independentCoreToL2`, `independentCoreToL2_ae`, `independentSmoothTransport`, `independentSmoothTransport_apply`, and `independentInvariantCore`) printed **only** `propext, Classical.choice, Quot.sound`.
- The AE-`Lp` commuting theorem `independentSmoothTransport_coreToL2` and final `independentInvariantCore_iff_source` reported `sorryAx` due to the unresolved original embedding name. No new root was accepted. No M4D1 qualified cache saved. Accepted count remains **278**.

## Diagnosis and exact Gate #2 correction

The intended original `coreToL2` and `coreToL2_ae` are **not** in the root `OAI.BFSSQuantum` namespace: the original pinned `Core.lean` defines them inside `OAI.BFSSQuantum.AlgebraData`. The candidate had `open OAI.BFSSQuantum`, not `open OAI.BFSSQuantum.AlgebraData`. This is a source namespace issue, not a counterexample to the smooth-core or AE transport theorem.

Separately, Lean's `linter.dupNamespace` refuses the abbreviation named `IndependentSmoothCore` inside namespace `FCP.IndependentSmoothCore`. Rename only the abbreviation to `IndependentTestCore`, keeping the namespace unchanged. Do not disable the linter.

The Gate #2 candidate adds `open OAI.BFSSQuantum.AlgebraData`, renames only the local concrete test-function type to `IndependentTestCore`, and adds the omitted `#print axioms IndependentTestCore` to make the declaration/axiom-report validator honest. Corrected candidate source SHA `0041e511625bee6cb72e3896e97c99d7f722efd5`, source-only commit `9f4545ca0d2bc2ccad3994507add829c218c0411`. This candidate has **not** yet been verified by a new Lean compiler gate at the time of this audit.

Gate #2 must restore qualified M4C3B v2 cache from the **same branch**, strictly check the new eight original declaration names and reports, reject compiler errors, warnings outside allowed Lake metadata, `sorryAx`, missing `.olean`, and save a distinct cache only on full pass.

## Actual scientific scope

Proposed final root: a two-way **membership** correspondence between independently defined (E)-valued smooth gauge-invariant test functions and the **literal** original `pairedGaugeData.invariantCore`. The proof depends on exact AE-`L²` embedding compatibility and the strictly accepted M4C3 physical-space equivalence. It is not yet a bundled smooth-core linear equivalence, does not establish independently modeled charge expressions, and proves no closed supercharge/Hamiltonian domain or spectrum statement.

**Governance:** immutable original mathematics, accepted prior theorem sources and caches, canonical `main`, PR #25, and Issue #28 untouched. Preserve the failed gate without rerunning the same source.
