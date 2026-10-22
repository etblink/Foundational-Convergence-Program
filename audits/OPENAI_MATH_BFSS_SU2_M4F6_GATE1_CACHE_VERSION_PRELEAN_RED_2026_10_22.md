# FCP BFSS SU(2) — M4F6 restricted-core graph Gate #1 PRE-LEAN cache-version red

**Date:** 2026-10-22 PDT. **Disposition:** `M4F6_GATE1_PRELEAN_CACHE_VERSION_MISMATCH__ZERO_NEW_THEOREM_ROOTS__294_CUMULATIVE`.

## Exact original evidence

- [Run #39864395152](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39864395152), job `120122812939`, workflow commit `50919e52c512700147a2ca6bfbe38e96daae1066`, `completed/failure`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentRestrictedCoreGraph.lean` Git blob `a1ebee69429e04596eeaeae6fc8e28e5ec86322e`; source/proof author labels it explicitly prospective/uncompiled.
- Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and exact candidate/parent source hashes verified in the initial preflight. Marker `M4F6_RESTRICTED_CORE_GRAPH_GATE1_EXACT_SOURCE_PASS`.
- Original toolchain restoration passed: `M4F6_RESTRICTED_CORE_GRAPH_GATE1_PINNED_TOOLCHAIN_PASS`.
- First causal failure was the `actions/cache/restore` miss of exact textual key `bfss-fcp-m4f5-unrestricted-graph-closure-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`, followed by guard `M4F6_M4F5_QUALIFIED_CACHE_MISSING` and exit 1.
- The intended new `FCPIndependentRestrictedCoreGraph.lean` **never compiled**, the five source declarations received no Lean `#print axioms` reports, and no qualifying cache saved. 0/2 proposed principal graph theorems accepted; cumulative previous **294**, unchanged.

## Diagnosed cache-version fault

The original successful M4F5 save step specifies **eleven paths**, including explicit accepted full-charge, charge-vector, graph, homeomorphism and closure `.olean` paths. Gate #1's new restore specified only **five** paths: `OAI`, `SU2*.olean`, `FCPM3*.olean`, `FCPIndependent*.olean`, `FCPM4E5*.olean`. GitHub Actions computes a cache version from the compression mechanism and path list **as well as checking the textual key**. The five-path restore cannot match the eleven-path qualified cache version. Do not treat the miss as evidence that M4F5 mathematics was never accepted, or assume cache eviction without checking the version.

Corrective workflow-only commit `aa576f259cd0a58201f509d2b3679cd570792888` copies the exact eleven-path M4F5 save fingerprint into the M4F6 restore. This triggers a new run under the gate's single workflow-file path trigger; its result must be verified separately. The mathematical candidate and all frozen proofs are **unchanged**.

## Source-bound mathematics intended, NOT yet accepted

M4F6 proposes: a J-free independent gauge-invariant smooth-core charge graph; a literal original source restricted smooth-core charge graph; a pointwise 17-slot intertwining lemma; equality of both raw restricted graphs under the accepted M4F5 homeomorphism; and equality of their *set-theoretic closures*. Conditional hypotheses include `hCAR`, `hHermitian`, exact `hColor`, `hGamma`, and `hJ`. This proposed proof path deliberately avoids importing the historical D3B source covariance theorem; it does **not** prove physical output invariance, operator closability, Hilbert adjoint equality, Hamiltonian realization or spectrum.

**Research decision:** Wait for a genuine source/Lean/axiom verdict at the next strict run, rather than changing the mathematical theorem based on a cache miss. Preserve separate M4F1 D3B recovery and M4F6 raw restricted graph workstreams.

**Governance:** No changes to `main`, `etblink/math`, PR #25 status, or accepted proof blobs.
