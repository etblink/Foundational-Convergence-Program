# BFSS M4F9 H4B1B Gate #1 — RED before Lean: stale copied source-import preflight

**Disposition:** `H4B1B_GATE1_RED_INFRASTRUCTURE__STALE_SOURCE_IMPORT_PREFLIGHT__NO_LEAN_PROOF_TESTED__H4A_PARENT_NOT_REACHED`.

Original workflow [run #40080354371](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40080354371), job **120832429525**, completed/failure. Event commit **9cd3da15f84299c38cbe8ed9f72e3e2531966b0f**. Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4B1BNativeNamedSourceAmbientGraphForward.lean` exact blob **30b9c8f52b35e9216490f65fbadfa6028fe95224**. Workflow `.github/workflows/bfss-m4f9-h4b1b-native-named-source-ambient-graph-strict-gate1.yml` exact blob **ef472eb87235c3c7388659a8ce095495d4796962**.

**First causal failure:** strict source preflight still demanded
```python
assert s.startswith('import FCPM4F9H3B2OriginalAYNativePhysicalHilbertChargeColumn\\n')
```
but the actual intentionally isolated H4B1B file starts with `import FCPM4F9H4ANativeHilbertAmbientCoordinateTransport`. Python raised `AssertionError` during `Original source and H4A candidate hashes plus exact theorem inventory`. The source hash, original math hash, pinned Lean and Mathlib versions were correctly specified, but the copied import predicate was stale. The runner did **not** reach the mathlib/H4A parent restoration or fresh candidate Lean compiler step, so Gate1 contains **no evidence for or against the H4B1B mathematical statement**.

**Formal acceptance:** RED, 0/1 accepted, no new H4B1B cache. Historical H4B1B Gate1 remains red even after a subsequent corrected workflow succeeds.

**Next:** separate Gate2 workflow, unchanged candidate blob, replace only the stale import preflight by exact `import FCPM4F9H4ANativeHilbertAmbientCoordinateTransport\\n`, assert exact namespace and one `#print axioms` root, require exact H4A accepted parent and strict forbidden-axiom/error scanning, and use a separately versioned cache key. Precheck all source/validator invariants against the live candidate *before* committing a workflow. Learn from the similar H4B1A Gate1 false red (stale expected namespace); do not keep copying validated workflows without exhaustively adjusting their source inventory.

The underlying program still has H4B1A source-named graph iff strictly accepted and H4B1 forward native graph theorem open after three independent red gates. No source math, main or PR #25 mutation.