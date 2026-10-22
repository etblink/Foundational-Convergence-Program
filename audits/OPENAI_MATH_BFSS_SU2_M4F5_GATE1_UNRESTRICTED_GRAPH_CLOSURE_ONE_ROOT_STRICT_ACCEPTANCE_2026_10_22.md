# FCP BFSS SU(2) — M4F5 Unrestricted Full-Core Graph Closure Strict Gate #1 ACCEPTANCE

**Date:** 2026-10-22 PDT. **Project Lead disposition:** `M4F5_GATE1_STRICT_PASS__ACTUAL_ORIGINAL_UNRESTRICTED_SIXTEEN_CHARGE_GRAPH_CLOSURE_TRANSPORT__ONE_PRINCIPAL_ROOT__294_CUMULATIVE`.

## Original verified evidence and pinned source identity

- [GitHub Actions run #39859269539](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39859269539), job `120105438610`, first attempt, workflow and job `completed/success`, immutable triggering commit `d52dbee194a6abf5960d8e9cd057ec13d9fc4b89` (2026-10-22 21:41–21:46 UTC). GitHub job step results, **original decoded Actions job log**, current source files, and full workflow validator were separately inspected.
- Frozen original source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The fail-closed source and candidate hash preflight and pinned toolchain restoration passed.
- Stage A file `experiments/openai-math-su2-physical-domain/FCPIndependentGraphTransportHomeomorph.lean`, exact Git blob `8455a6c42f23b2d08f7945188fe5b8ca9e75ac4b`.
- Stage B file `experiments/openai-math-su2-physical-domain/FCPIndependentFullCoreGraphClosure.lean`, exact Git blob `a6aacf285206ba79f331bf2c6818fc0b7df1a6e4`.
- Exact workflow `.github/workflows/bfss-m4f5-unrestricted-graph-closure-gate1.yml`, Git blob `131484022c7e9d200fb1f8ba485887a302b4b005`. This workflow triggers on **its own path** on the scoped research branch; an audit-only commit does not match its push-path trigger.
- Qualified M4F4 cache key **restored and exact prerequisite `.olean` closure checked**: `bfss-fcp-m4f4-core-graph-image-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Stage A fresh `lake env lean -DwarningAsError=true` compilation: **12.76 s wall, 99% CPU, peak RSS 7,010,528 KB**; successful nonempty `FCPIndependentGraphTransportHomeomorph.olean`. Stage B fresh compilation: **11.81 s wall, 100% CPU, peak RSS 7,016,768 KB**; successful nonempty `FCPIndependentFullCoreGraphClosure.olean`. Both were individually bounded by 105 seconds.
- Each stage's independent Python strict validator compared the **exact source declaration and `#print axioms` name list** to the original compiler log, checked that there was exactly one axiom report for its expected full qualified name, and accepted only subsets of `propext`, `Classical.choice`, `Quot.sound`. Both rejected `sorryAx`, compiler errors, unexpected warnings, and an absent or mismatched report. The original job log records exactly:
  ```text
  M4F5_GRAPH_CLOSURE_GATE1_A_HOMEOMORPH_STRICT_AXIOMS_PASS
  M4F5_GRAPH_CLOSURE_GATE1_B_CLOSURE_STRICT_AXIOMS_PASS
  ```
  **Evidence qualification:** the compiler's individual `#print axioms` lines were redirected into the uploaded per-module logs, not printed individually in the top-level Actions transcript. This audit directly verifies the original successful validator's source and the PASS markers, rather than falsely claiming the raw individual axiom lines were visible in the job transcript.
- Qualified cache saved, exact observed key: `bfss-fcp-m4f5-unrestricted-graph-closure-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Preserved workflow artifact: `bfss-m4f5-unrestricted-graph-closure-gate1-39859269539`, artifact ID `12461157135`, size `5704` bytes, digest `sha256:10cc5487d3bb330974c2d8174ee2dd2c635be6718d40d51ea4b45e5e9d37e8c0`. It was present/unexpired at adjudication. The job's source/validator and summary log were independently examined; the artifact's individual underlying log entries were **not** independently extracted for this audit.

## Exactly established mathematics

Stage A proves the **genuine 17-coordinate homeomorphism**
```lean
def independentGraphTransportHomeomorph
    (J : E ≃ₗᵢ[ℂ] Fermion 2) :
    (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) ≃ₜ
      (FullL2 2 × (SpinIndex → FullL2 2))
```
using the actual M4C2 `fiberTransportUnitary J` on the input and each of the sixteen charge outputs. Both inverse laws and both continuity directions are proved directly, not postulated.

The **one principal new theorem root** is
`FCP.IndependentSmoothSupercharge.sourceFullCoreGraph_closure_eq_independent_image_closure`. For an independent finite-dimensional complex Hilbert fiber `E`, arbitrary `color`, `gamma`, `theta`, and a given complex-linear fiber isometry-equivalence `J`, under exact
```lean
hColor : color = pairedAlgebraData.color
hGamma : gamma = pairedAlgebraData.gamma
hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)
```
the theorem proves
```lean
closure (pairedAlgebraData.fullCoreGraph : Set
      (FullL2 2 × (SpinIndex → FullL2 2))) =
  (independentGraphTransportHomeomorph J) ''
    closure (independentFullCoreGraph color gamma theta : Set
      (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))
```
This is the **actual pinned original BFSS source** unrestricted full-core sixteen-charge graph, not an invented surrogate. The proof uses the **already accepted M4F4 exact image equality**, `congrArg closure`, and the source-exact homeomorphism's `image_closure` theorem. The homeomorphism is a qualifying **supporting definition**, not a second counted principal theorem root.

**Ledger:** previous accepted 293 (M4F4) + exactly one M4F5 principal theorem = **294 cumulative strictly qualified and Project Lead accepted principal roots**. No historical D3A/D3B roots are recounted.

## Precise scientific ceiling

This is a theorem about the **closure of the unrestricted joint graph as a subset/product-space relation**. Neither the source nor independent smooth-core graph is here restricted to the physical SU(2)-invariant core. The result does **not by itself** establish:
- single-valued operator closability of a given graph (or an independent original statement thereof);
- domain density after physical gauge restriction;
- preservation of the independent smooth invariant core by each charge;
- equality of **gauge-restricted** closed charge operators or their Hilbert adjoints;
- equality of associated self-adjoint normalized Hamiltonians with the independent 2026 manuscript's Hamiltonian;
- Spin(9) form reduction, positive eigenvalues, a BFSS spectrum theorem, or a mass gap.

Do not suppress the theorem's `hColor`, `hGamma`, `hJ` hypotheses merely because a separate independent-Majorana existence theorem has been qualified. Instantiating such hypotheses for the specific manuscript-type module must be explicit and separately source-checked.

## Next source-exact proof obligation

Prioritize recovery of the historically accepted **D3A/D3B physical charge covariance** source imports into the *current* cache. [M4F1 Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39847407712) stopped **before any Lean candidate compilation** due to missing `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.olean`; this is an import/cache closure failure, not a mathematical contradiction. Follow [the D3A/D3B historical acceptance and recovery audit](./OPENAI_MATH_BFSS_SU2_M4F1_D3A_D3B_HISTORICAL_ACCEPTANCE_AND_CACHE_RECOVERY_2026_10_22.md), stage pinned and importable D3A/D3B modules and their original dependency closure, and then run the unchanged independent invariant-charge candidate in a separate isolated strict gate. Only after physical smooth-core preservation and restricted graph/domain equalities are established should the research attempt the associated Hamiltonian equivalence.

## Governance

This acceptance audit changes neither the original `etblink/math` source nor any source proof/candidate file or CI workflow. It is confined to the isolated research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Canonical `main` and draft PR #25 are not altered. The open scientific target remains [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28).
