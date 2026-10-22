# FCP BFSS SU(2) — M4F3 Independent Original Core Graph Strict Gate #1 ACCEPTANCE

**Acceptance date:** 2026-10-22 PDT. **Disposition:** `M4F3_GATE1_STRICT_PASS__INDEPENDENT_UNRESTRICTED_SMOOTH_CORE_GRAPH_TRANSPORT_IN_SOURCE_GRAPH__ONE_PRINCIPAL_ROOT__292_CUMULATIVE`.

## Original independently verified GitHub evidence

- [GitHub Actions M4F3 Gate #1, run #39853256260](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39853256260), job `120084724977`, attempt 1, `completed/success`, triggering research commit `7fb32eafdf8ddebb5d756591d344342cd3b7821f`.
- Independent candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullCoreGraph.lean`, exact Git blob `2139e7fc9e7b9d5bf99ec57d096686078b8ffdf7`; workflow `.github/workflows/bfss-m4f3-core-graph-gate1.yml`, blob `c662caf58225712cabec1cb48ea5971cf0a3d44e`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All immutable provenance and source-blob guards passed.
- Parent qualified M4F2 cache restored: `bfss-fcp-m4f2-l2-charge-vector-gate3-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Exact original and dependent `.olean` closure checked.
- Candidate fresh `lake env lean -DwarningAsError=true` compile succeeded within the 105-second bound: **12.68 s wall, 100% CPU, peak RSS 7,043,804 KB**. Nonempty `FCPIndependentFullCoreGraph.olean` produced.
- Exactly three source declarations and matching `#print axioms` reports were checked by the independent strict Python validator, each with *only* `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, no Lean `error:`, no unsupported warnings. The original job emitted `M4F3_CORE_GRAPH_GATE1_SOURCE_EXACT_SIXTEEN_STRICT_AXIOMS_PASS`. Individual reports reside in the uploaded compilation log, rather than being printed in the GitHub job log.
- Newly qualified compilation cache saved: `bfss-fcp-m4f3-core-graph-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original artifact `bfss-m4f3-core-graph-gate1-39853256260`, artifact ID `12458876619`, SHA-256 digest `3b62035331b64f20b5c146a427317c3640f315aefe6fc0fe5ea357e4c8575569`.

## Mathematical statement and accounting

J-free `independentFullCoreGraph` is defined from the literal independent smooth test-core L² embedding and the accepted J-free `independentChargeVector` using `LinearMap.range (independentCoreToL2.prod (independentChargeVector ...))`.

The supporting theorem `independentChargeVector_all_components_intertwining` bundles the already accepted M4F2 componentwise charge bridge into one full 16-component equality using `funext`.

**One new principal theorem root**, `independentFullCoreGraph_transport_mem_source`: under exact `hColor`, `hGamma` and `hJ`, if a pair `p` belongs to the genuinely independent **unrestricted** smooth-core joint-charge graph then simultaneous `fiberTransport J` on its L² input and all sixteen output coordinates belongs to the literal pinned original `pairedAlgebraData.fullCoreGraph`. No surrogate graph, modified source charge, new axiom or opaque bundled analytic assumption is used. This is a one-way inclusion, **not** graph equality.

Ledger prior 291, +1 principal root, cumulative **292**. The graph definition and all-component packaging lemma are accepted/axiom-checked **supporting declarations**, not additionally counted.

## Next real boundary and negative knowledge

Existing qualified `FCP.IndependentSmoothCore.independentSmoothLinearEquiv` (M4D2) gives a two-sided complex-linear equivalence between **unrestricted** independent and original smooth test cores. This should support source-to-independent graph transport (the reverse inclusion), if the concrete original fullCoreGraph point has the actual core witness. Then either prove set/submodule graph equality under the genuine full L² fiber unitary or establish the equality via both membership implications. This is the most immediate target; a closed graph identity would additionally need transport of the product norm topology, for which accepted `fiberTransportUnitary` exists, but **no closure equality is accepted yet**.

Gauge **physical** restricted graph and invariant-core preservation remain separate. Historical original D3A/D3B were strictly accepted at Physical Domain Bridge Gates #5–6, but their `.olean` objects are not in the present M4F3 cache; current independent M4F1 Gate #1 stopped before Lean because of that cache. Follow the separate historical dependency qualification recovery audit `audits/OPENAI_MATH_BFSS_SU2_M4F1_D3A_D3B_HISTORICAL_ACCEPTANCE_AND_CACHE_RECOVERY_2026_10_22.md`.

Do not infer density of invariant smooth cores, equality of closed physical charge operators or Hamiltonians, or any spectral result from the accepted one-way unrestricted smooth-core graph transport.

## Governance

No original source or accepted proof file modified; scoped research-branch audit only, no automatic CI trigger. Canonical main unchanged at `cf06212a57db0ceffad74bd78280a8a240856a17`; PR #25 draft/unmerged, Issue #28 open.
