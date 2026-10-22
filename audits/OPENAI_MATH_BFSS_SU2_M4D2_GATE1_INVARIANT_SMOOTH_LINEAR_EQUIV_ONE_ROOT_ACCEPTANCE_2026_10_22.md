# FCP BFSS SU(2) — M4D2 Gate #1 accepted: genuine two-sided invariant smooth-core linear equivalence

**Project local date:** October 22, 2026 PDT.  
**Disposition:** `M4D2_GATE1_PASS__INDEPENDENT_TO_LITERAL_ORIGINAL_INVARIANT_TESTFUNCTION_LINEAR_EQUIV__ONE_AXIOM_CLEAN_ROOT__CACHE_SAVED`.  
**Cumulative strictly accepted theorem roots: 280 = previous 279 + exactly one M4D2 root.**

## Original source-bound acceptance evidence

- Original [strict M4D2 Gate #1 GitHub Actions run #39751981964](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39751981964), job `119734548668`, attempt 1, completed **success**.
- Source/workflow run head `2900a6812cae8902deef44202c5353779e6a494c`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate source `experiments/openai-math-su2-physical-domain/FCPIndependentInvariantSmoothEquiv.lean`, blob `5083f0ce9bfb43f616a9c3e5dc286887bd073de4`.
- Workflow `.github/workflows/bfss-m4d2-invariant-smooth-equivalence-strict-gate1.yml`, Git blob `5a07b428bd47a660d8744ece0dd55dc1d4e27339`.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, accepted parent source hashes, and exact candidate blob passed preflight.
- Qualified M4D1 cache restored: `bfss-fcp-m4d1-smooth-core-v2-adc7f124-lean4341-d13f23b-Linux-X64`. Required source `.olean` closures, including original `GaugeCore` and accepted M4B through M4D1, were confirmed.
- Fresh Lean source compiled with `lake env lean -DwarningAsError=true` and a valid `.olean`. Strict declaration validator required exactly all three declarations and `#print axioms` reports, screened for errors, forbidden axiom names, and `sorryAx`. Original compiler reports:
  ```text
  'FCP.IndependentSmoothCore.independentSmoothInverse' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothCore.independentSmoothLinearEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothCore.independentInvariantCoreLinearEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
  M4D2_INVARIANT_SMOOTH_LINEAR_EQUIV_ONE_ROOT_STRICT_PASS
  ```
  The third multi-line report was consolidated without altering its axiom contents.
- New qualified compilation cache saved: `bfss-fcp-m4d2-invariant-core-equiv-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostic artifact `bfss-m4d2-gate1-39751981964`, ID `12413514788`, uploaded successfully.

## Mathematics actually established

For an independently supplied eligible complex Hilbert module `E`, a generator-preserving unitary `J : E ≃ₗᵢ[ℂ] Fermion 2`, and labeled Hermitian 48-Majorana CAR operators with the exact original source normalization, the new source constructs the inverse smooth transport using **pinned Mathlib `TestFunction.postcompCLM` of `J.symm`**, without defining it by pulling back source physical constraints.

The theorem `independentSmoothLinearEquiv` has the exact original target `SmoothCore 2` and gives a bona fide two-sided complex-linear equivalence of all smooth compactly supported functions. The left and right inverse proofs are literal pointwise identities `J.symm (J (f x)) = f x` and `J (J.symm (f x)) = f x`, justified on the actual bundled `TestFunction` types.

Its restriction `independentInvariantCoreLinearEquiv` gives the exact
```lean
independentInvariantCore theta hCAR hHermitian ≃ₗ[ℂ]
  pairedGaugeData.invariantCore
```
with forward and inverse submodule membership proved by the accepted **M4D1** `independentInvariantCore_iff_source`, which was derived from the independent AE-`L²` embedding and M4C3 membership equivalence. Neither invariant core was defined as the transported image of the other.

The accepted linear equivalence and its separately accepted M4D1 AE-`L²` commutation theorem together settle the **source-defined invariant smooth-core correspondence**. The M4D2 result does not assert a new LF-topological smooth-core homeomorphism, separately packaged one-dimensional pointwise manifold action, unbounded supercharge transport, charge graph domain, associated Hamiltonian, or spectral theorem.

**Counting:** only the final `FCP.IndependentSmoothCore.independentInvariantCoreLinearEquiv` is one newly accepted root. The independent smooth inverse and full test-function equivalence are audited supports, not two additional cumulative roots. Ledger 279 → **280**.

## Negative-knowledge inheritance

- M4D1 Gate #1 exposed `linter.dupNamespace` and original `AlgebraData.coreToL2` scoping failures. M4D1 Gate #2 repaired these without changing the mathematics, and produced the qualified parent cache.
- M4D2 Gate #1 was accepted on its first strictly qualified run. It used direct `DFunLike.ext` on the actual TestFunction types, explicit inverse postcomposition and M4D1's already accepted membership iff, rather than attempting to expand AE-`L²` representatives again.

## Remaining scientific bridges

The 2026 positive-eigenvalue manuscript defines its core as the explicitly **pointwise gauge-fixed** `[C_c^\infty(ℝ²⁷;𝓕)]^{SU(2)}`, with combined action `V_h Ψ(O_h^{-1}x)`. The source `pairedGaugeData.invariantCore` is defined as `pairedGaugeData.physicalSpace.comap coreToL2`, and a forward pointwise covariance lemma exists. Before claiming the **manuscript** core fully identified, prove or source-bind the converse pointwise fixed-function characterization, checking the exact inverse bosonic pullback and independent fermionic Spin implementation. Do not confuse the accepted smooth-core equivalence with this as-yet separate manuscript interpretation.

Then independently define the sixteen manuscript (Q_α) differential expressions, prove full core intertwining with source gamma, Majorana label and signs, and transport their **closed** graphs/domains and `(1/16) T†T` normalized Hamiltonian. Spin(9), isotypic sector reduction, confinement and positive point spectrum remain separate adversarial targets.

**Governance:** This is an audit-only commit. Do not modify pinned original `etblink/math`, canonical `main`, earlier accepted Lean proof blobs, draft PR #25 or Issue #28. No new CI is requested by this acceptance audit.
