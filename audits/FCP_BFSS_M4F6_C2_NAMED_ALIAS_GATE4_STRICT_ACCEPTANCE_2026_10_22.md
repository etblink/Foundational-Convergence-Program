# FCP BFSS SU(2) — M4F6 C2 Named Alias Strict Gate #4 formally accepted

**Acceptance date:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `M4F6_C2_SOURCE_EXACT_INDEPENDENT_GRAPH_INPUT_CUT_GATE4_STRICT_PASS__ONE_NEW_PRINCIPAL_ROOT__298_CUMULATIVE`.

## Original immutable GitHub workflow and compiler evidence

- [Actions run #39898647790](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39898647790), job `120234838470`, full workflow and job **completed/success**, triggered at research commit `d1d2e911905055e00004b3c24e2f48d63c5ff38d`. Independently read original workflow and compiler log.
- Immutable original BFSS source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, pinned exact source blob checks, and import dependencies all passed.
- Exact accepted parent caches restored as **hits**: M4F5 unrestricted smooth-core graph/closure; M4F6 C1 paired original-source input cut; A1 two literal independent alias identities; B1 abstract named-alias graph input-cut.
- Actual C2 candidate: `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCutNamedAlias.lean`, immutable blob `976ca4ed439f63566d49611566299d66d33a5fd1`. The workflow independently verified **byte-for-byte equality with the original C2 source** `FCPM4F6IndependentGraphInputCut.lean`, blob `4db1bbd1685555a3c00efd836577186782ff08bb`, after only the exact two-import replacement and single approved proof-body replacement. The original theorem's complete statement, mathematical objects, genuine CAR and Hermiticity hypotheses and absence of any `J` premise are unchanged.
- Fresh `lake env lean -DwarningAsError=true` compilation, exact fully qualified theorem-root check, strict three-axiom allowed set, zero `sorryAx`, zero unexpected compiler warnings/errors, and nonempty `.olean` all passed.
- Original job's decisive evidence:

```
M4F6_C2_GATE4_QUALIFIED_A1_B1_C1_IMPORT_CLOSURE_PASS
M4F6_C2_GATE4_EXACT_ORIGINAL_J_FREE_THEOREM_STATEMENT_AND_ONE_PROOF_BODY_PASS
M4F6_C2_GATE4_ORIGINAL_J_FREE_INDEPENDENT_RESTRICTED_INPUT_GRAPH_ONE_PRINCIPAL_ROOT_STRICT_PASS {
 'FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut':
  {'propext', 'Quot.sound', 'Classical.choice'}
}
DIAG_RESOURCE_TIME 12.35 CPU 97% MAX_RSS_KB 7018820
Cache saved with key: bfss-fcp-m4f6-independent-c2-named-alias-976ca4ed-gate4-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

- Qualified new cache saved and diagnostic compiler artifacts uploaded. All strict acceptance stages successful; **+1 principal root**. Previously 297, **cumulative now 298**.

## Actual new mathematical theorem

With `E` finite-dimensional complex inner-product space, actual independent BFSS color/gamma/theta parameters satisfying exact CAR/Hermitian hypotheses and the literal independent full-core charge column:

```lean
FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut
```

establishes that the range of `independentCoreToL2` and `independentChargeVector` on the literal invariant submodule `independentInvariantCore theta hCAR hHermitian` is **exactly** the unrestricted independent full-core graph `independentFullCoreGraph color gamma theta` restricted by the input's membership in `independentPhysicalSpace theta hCAR hHermitian`.

The theorem is exact and J-free, not a transported-source substitution; no charge-output membership or closability condition is introduced. The proof composes separately qualified A1 identities and B1 abstract lemma; it does not unfold the large `Lp`/test-function/core/charge definitions and does not increase recursion/heartbeat options beyond original source.

## Why the red history matters

- C2 Gate #1 direct generic lemma application, Gate #2 concrete witness proof, Gate #3 typed generic application after unfolding aliases all failed in Lean maximum recursion depth. No principal theorem was accepted.
- Historical inferred-certificate diagnostic failed via invalid Lean command syntax (an inferred application nonetheless printed an axiom-clean proposition), while D1 failed pre-Lean due comment-sensitive Python checking; no diagnostic counted as a principal root.
- A1 Gate #1 and #2 were pre-Lean comment-sensitive preflight false positives in two separate inherited validators. A1 Gate #3 strictly accepted **two supporting** literal alias equalities (not principal-root credit).
- B1 Gate #1 strictly accepted **one supporting** opaque abstract input-cut theorem (not principal-root credit).
- Initial source-exact C2 Gate #4 workflow commit `5ab09315624c7c7c90ab0df2efbc5e371aec7303` produced zero runner jobs due a malformed multi-line Python string breaking YAML block indentation; corrected wrapper-only `d1d2e911905055e00004b3c24e2f48d63c5ff38d` compiled exactly the unchanged original C2 proof target strictly.
- The successful architecture is supported by earlier accepted M4E5 raw-to-named operator bridges via `Eq.trans` and `congrArg`; it preserves every earlier failure as negative knowledge rather than reclassifying errors as proof successes.

## Exact future scientific boundary

M4F6 C1 **source restricted graph input cut** and C2 **independent restricted graph input cut** are now both strictly accepted. M4F4/F5 previously accepted *unrestricted* full graph image/closure via genuine 17-component fiber homeomorphism under explicit `J, hColor, hGamma, hJ` hypotheses.

**Not yet proved:** identity between original-source and independent physically input-restricted graph **images**; image of the independent physical subspace under the gauge intertwining `fiberTransport J` must be appropriately and separately accounted for. Do not assert restricted image/closure merely by intersecting images unless the physical input predicate is correctly transported; prove or import the actual accepted physical-space equivalence and verify type/coercion constraints.

Still unproved without distinct theorems: output physical membership of every component, closability as a densely defined single-valued operator, closed physical charge operator or domain identity, Hamiltonian/domain/form equivalence, spectral comparison or mass gap.

**Next research priority:** inspect actual original M4F6 six-root legacy source and accepted physical L² fixed-point intertwining certificates, then build and strictly qualify a **generic restricted-image predicate transport** before a concrete C3 restricted-graph image theorem. Avoid giant direct elaboration; use named interfaces and separately qualified caches. Preserve original math pins, canonical `main` and unmerged draft PR #25.
