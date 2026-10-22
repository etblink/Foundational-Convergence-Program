# FCP BFSS SU(2) — M4D1 Gate #2 formally accepted: independent smooth-core AE embedding and invariant membership

**Project local date:** October 22, 2026 PDT.  
**Disposition:** `M4D1_GATE2_PASS__LITERAL_TESTFUNCTION_AE_L2_SMOOTH_CORE_MEMBERSHIP__ONE_AXIOM_CLEAN_ROOT__QUALIFIED_CACHE_SAVED`.  
**Cumulative strictly accepted theorem roots: 279 = prior 278 + exactly one M4D1 root.**

## Primary strict-run acceptance evidence

- Original [M4D1 Gate #2 Actions run #39750889058](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39750889058), job `119730880388`, attempt 1, **completed/success**.
- Workflow/source head `f471107d9387d03534aa2c843018f11fc7cdce5f` on `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- New candidate `experiments/openai-math-su2-physical-domain/FCPIndependentSmoothCore.lean`, Git blob `0041e511625bee6cb72e3896e97c99d7f722efd5`.
- Unique strict gate workflow `.github/workflows/bfss-m4d1-independent-smooth-core-strict-gate2.yml`, blob `4a84e0fbbfa62ebd233726ace872a08948ff10e0`.
- Immutable upstream mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, accepted prior source blob pins and candidate hash **passed**.
- Qualified **M4C3B** parent cache restored, `bfss-fcp-m4c3b-physical-unitary-v2-adc7f124-lean4341-d13f23b-Linux-X64`; original source dependencies and prior M4B/M4C1/M4C2/M4C3/M4C3B `.olean` closure presence confirmed.
- Candidate compiled fresh under `lake env lean -DwarningAsError=true`, saved a valid `.olean`. All **eight** strict original declaration-name and `#print axioms` reports passed without `sorryAx`. Each has only `propext`, `Classical.choice`, `Quot.sound`:
  ```text
  FCP.IndependentSmoothCore.IndependentTestCore
  FCP.IndependentSmoothCore.independentCoreToL2
  FCP.IndependentSmoothCore.independentCoreToL2_ae
  FCP.IndependentSmoothCore.independentSmoothTransport
  FCP.IndependentSmoothCore.independentSmoothTransport_apply
  FCP.IndependentSmoothCore.independentSmoothTransport_coreToL2
  FCP.IndependentSmoothCore.independentInvariantCore
  FCP.IndependentSmoothCore.independentInvariantCore_iff_source
  M4D1_INDEPENDENT_SMOOTH_CORE_TRANSPORT_ONE_ROOT_STRICT_PASS
  ```
- Qualified cache saved: `bfss-fcp-m4d1-smooth-core-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostics preserved: artifact `bfss-m4d1-gate2-39750889058`, ID `12413756959`.

## Accepted mathematical statement

The new independent test-function type is **genuinely independent**: `IndependentTestCore E := TestFunction (⊤ : Opens (Boson 2)) E ⊤`. Its `independentCoreToL2` embedding uses the independent functions' own compact-support and integrability proofs, prior to choosing any `J`.

The `independentSmoothTransport J` uses pinned Mathlib `TestFunction.postcompCLM`, maps test functions pointwise through `J`, and preserves smooth compact support. The key AE-`L²` lemma is

```lean
fiberTransport J (independentCoreToL2 f) =
  coreToL2 (independentSmoothTransport J f)
```

as **equality of actual Lp quotient classes**, established via exact AE representatives, not assumed pointwise for arbitrary Lp classes.

The independently defined gauge-invariant test-function submodule is `(independentPhysicalSpace theta hCAR hHermitian).comap independentCoreToL2`. For every generator-preserving `J`, the strictly accepted final root proves

```lean
f ∈ independentInvariantCore theta hCAR hHermitian ↔
  independentSmoothTransport J f ∈ pairedGaugeData.invariantCore
```

The right side is the **literal original** `GaugeData.invariantCore`, not a transported substitute. The proof uses accepted M4C3 physical-space membership iff plus exact AE-L² commuting identity.

**Counting:** only `FCP.IndependentSmoothCore.independentInvariantCore_iff_source` counts as one new theorem root; seven supporting declarations were independently axiom-checked but add no root credit.

## Failure history / negative knowledge

- **Gate #1 RED**: [run #39749894805](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39749894805), job `119727518963`. Original compilation showed `linter.dupNamespace` on a type abbreviation named `IndependentSmoothCore` within namespace `FCP.IndependentSmoothCore`, and unresolved original `coreToL2` / `coreToL2_ae`, defined under `OAI.BFSSQuantum.AlgebraData` rather than `OAI.BFSSQuantum` root. Five declarations clean, two downstream declarations with `sorryAx`, zero roots accepted. Full audit `audits/OPENAI_MATH_BFSS_SU2_M4D1_GATE1_TESTCORE_NAMESPACE_ALGEBRADATA_RED_2026_10_22.md`.
- **Gate #2 GREEN**: rename independent concrete type to `IndependentTestCore`; open original `OAI.BFSSQuantum.AlgebraData` namespace; add `#print axioms IndependentTestCore` and update strict validator to audit all eight declarations. No new mathematical assumption, source redefinition or changed target theorem. All eight declarations compiled, qualified cache saved.

## Remaining physical/mathematical boundaries

1. Package exact **two-sided bundled linear equivalence** between independent and source smooth test-function spaces, then restrict it to their independently defined invariant cores, using the already qualified membership theorem.
2. Independently verify the actual **pointwise** manuscript gauge-invariance convention against the original source `comap coreToL2` definition. The latter does not alone complete the manuscript fixed-vector claim.
3. Identify all 16 independent supercharge differential expressions, smooth-core commuting diagrams, actual closed graph/domain transports, and normalized Hamiltonian with natural domains; independently audit Spin(9) and point spectrum.

No smooth-core linear equivalence, closed unbounded operator, Hamiltonian or BFSS spectral theorem is claimed accepted by M4D1.

**Governance:** audit-only addition. Original mathematics, accepted earlier theorem files, `main`, draft PR #25, open Issue #28 remain untouched; audit-only commit must trigger no workflows.
