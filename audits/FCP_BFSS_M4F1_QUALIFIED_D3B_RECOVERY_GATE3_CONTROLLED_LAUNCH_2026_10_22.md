# FCP BFSS SU(2) — M4F1 qualified historical D3B recovery, Gate #3 controlled launch

**Date:** 2026-10-22 (America/Los_Angeles). **Status of this record:** launch audit only; no acceptance or failure disposition implied.

## Why this gate tests a substantive prerequisite

M4F1 needs the historical **source-original gauge-invariant full-charge preservation** import `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.olean` to establish the J-free independent sixteen-charge smooth invariant-core result. Historical D3A and D3B theorem source was separately accepted in October 2026, but the current M4F5 accepted cache did not contain its importable qualified `.olean` graph.

[Prior M4F1 Recovery Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39870965247) passed original-source preflight, Lean 4.34.1/Mathlib restoration, M4F5 accepted cache restoration, original upstream prerequisites and eight historical source modules G4K1 through G4K7, strictly auditing all declared theorem axioms. It then failed in historic G4K8A at line 41: `EuclideanSpace.norm_single` was deprecated; Lean supplied `PiLp.norm_single` as replacement. No independent M4F1 root was compiled.

## Frozen provenance and minimal recovery adapters

Research branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. New isolated workflow `.github/workflows/bfss-m4f1-qualified-d3b-recovery-gate3.yml` at triggering commit `4ab82645d173abd53d373b0043a972e66765806f`.

Deliberately triggered only [M4F1 Gate #3, Actions run #39879847794](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39879847794). It remains **unqualified** until the original job, all per-module compiler logs, axiom validations and caches are independently adjudicated.

The original source and toolchain are frozen: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Two separately tracked **exact one-line adapters** leave the original historic candidate bytes unchanged:
- Historic G4K7 original blob `0a78ee7901d25672a39e2f44135a316d0f2e0a0b`; adapter `994e89ee88bc9566232c7a85001d878d5aaf2bff`; unique substitution `push_neg at hn` → `push Not at hn`.
- Historic G4K8A original blob `0d9bd739a46caecbc7159ec29161c96d7f553c77`; adapter `cf0736c8012e2a9b792c6cceee41b7f7911cc180`; unique substitution `rw [EuclideanSpace.norm_single]` → `rw [PiLp.norm_single]`. That new lemma has a different type: this is a **testable compatibility hypothesis**, not guaranteed definitional equivalence or certified compiler success. The Gate #3 preflight checks source/adaptor Git blobs and exact source diffs before any Lean work.

## Structural improvements over Gate #2

1. The accepted M4F5 parent cache is restored with its existing exact key/path contract; the original qualified upstream-prerequisites checkpoint uses the unchanged `bfss-fcp-m4f1-original-prerequisites-gate2-v1-...` key and original path specification.
2. Recompile the eight G4K1–G4K7 modules with the pinned G4K7 source adapter only if an early qualified G4K7 checkpoint is not available. **Save that qualified early checkpoint immediately after their strict compiler and axiom validation**, *before* attempting G4K8A.
3. Recover G4K8A–G4K9D using the source-exact G4K7 and G4K8A adapters. If later source recovery fails, the qualified early G4K7 checkpoint should remain reusable (subject to a later actual cache-save verification). A successful complete G4 chain saves a separately versioned full-G4 checkpoint, with unchanged save/restore path specification.
4. Only after original source recovery, compile G4K10A then D3A/D3B to importable `.olean` objects, strict-validate their exact declared axioms, and compile the **unchanged** independent M4F1 theorem `independentCharge_mem_invariantCore`. 
5. Each historical source compilation retains `-DwarningAsError=true`, `sorryAx` rejection and the three-axiom whitelist. The gate is a *qualification* run; exploratory relaxation policy does not weaken its proof acceptance standard. Original per-module diagnostics are saved as an artifact, even on failure.

## Acceptance and stop boundary

A qualified G4K7 cache **alone** is prerequisite recovery, not a new principal root. A green G4 chain alone is not M4F1 success. Only if **all** G4K10A, D3A, D3B and the actual M4F1 theorem pass with exact hashes, accepted axiom reports and saved closure may the project consider adding M4F1's **one new** principal theorem root (previous cumulative ledger `294`). No historic root is recounted. A red is classified at the *first causal diagnostic* and the earliest passing checkpoint is preserved; do not reflexively broaden warning exceptions or inflate theorem claims.

This workflow does not change canonical `main`, draft PR #25, pinned original mathematics, or the accepted M4F5 proof blobs. The M4F6 inferred-type wrapper is not rerun.
