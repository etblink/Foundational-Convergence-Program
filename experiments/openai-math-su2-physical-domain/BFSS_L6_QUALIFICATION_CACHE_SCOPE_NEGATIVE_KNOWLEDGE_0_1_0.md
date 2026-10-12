# BFSS L6 qualification: GitHub Actions cache-scope blocker and proof reuse

**2026-10-12 Project Lead: CI negative-knowledge checkpoint.**

Workflow run #38290017644 for L6-G0 failed at the environment preflight, BEFORE any Lean compilation. The log explicitly reports: "Cache not found for input keys: family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2". The preceding original source checkout completed and the pinned remote source commit was adc7f1241b42e322a6451854ab7e4b4c146bf78a. The next preflight shell step tested empty cache-hit and immediately exited 1.

This is **NOT** a counterexample to any Clifford or physical theorem and NOT a Lean elaboration failure. Existing accepted S3L CI ran under different PR/base/cache-owning contexts; GitHub Actions cache scopes are not generally interchangeable between unrelated research branches. No increase in timeout or theorem rewrite can solve this failed access. To avoid repeated red runs with no information, the newly added workflow no longer triggers on routine G0 module edits. It will run only when its own workflow configuration is explicitly changed after cache scope recovery.

More important discovery: exact pinned upstream GammaIdentity.lean ALREADY proves OAI.BFSSGamma.spinIdentity, the normalized spinor identity required here. The source L6-G1 module imports that theorem directly and instantiates it at the unchanged FCP.BFSSGamma9.gamma. The row-versus-column sign must be kept via the skew symmetry of gammaTwo. The remaining source-specific mathematical obligations are homogeneous normalization/row orientation, then actual CAR plus full Gauss-law normal ordering and real operator domains. Do not rebuild the gamma-grade symmetric basis or the 34,816 numeric Lean test.

Qualification policy: G0 and G1 are **uncompiled FCP source specializations**, not new green gates. The original pinned GammaIdentity contains an honest source Lean proof, but its cross-repo build provenance/oleans have not been independently requalified here. Next environment approach should identify an actually reachable exact source-checked cache (or a reproducible pinned build) BEFORE submitting a compile. Do not silently change the base of draft PR25, repin mathlib, or fetch arbitrary untrusted binary artifacts to bypass failure.

Governance: FCP research only, no upstream edits; FCP main unchanged; PR25 draft and unmerged.

## Successor recovery and first informative L6G1 gate

The stable normal-base PR25 gate is now `.github/workflows/bfss-l6g1-original-spin-identity.yml`. It reuses the existing source-pinned cold-bootstrap procedure instead of retargeting PR25 or requiring the inaccessible historical cache. Run [L6G1 #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38292936651), source/workflow commit `9aa1e200609192d06e3e0eb1c1d564a69d5ceaf4`, independently checked `etblink/math@adc7f124`, Lean 4.34.1 and the actual Mathlib checkout at `d13f23b`. Bootstrap succeeded and the verified dependency environment was saved under `bfss-l6-pinned-env-v1-adc7f124-lean4341-d13f23b-Linux-X64` in this PR's reachable scope.

The original upstream `GammaWords`, `GammaIdentity` and `Core` sources all compiled. The unchanged concrete `SU2RealGammaProbe.lean` also compiled and all six requested axiom roots passed, permitting only `propext`, `Classical.choice`, `Quot.sound`. Its frozen source blob remains `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`.

The first G1 module attempt then failed at its literal application statement: lines 43–44 did not open the matrix-vector notation scope, and line 45 used the nonexistent name `Matrix.dotProduct` (the pinned API uses `dotProduct`). A later `isDefEq` timeout occurred after those invalid terms. Classify and repair the notation and name failures first; this is not evidence that the small imported theorem requires larger limits. The first theorem printed permitted axioms, but the COMPLETE failed file produced no qualified G1 module. The accepted-source cache was correctly not saved.

The next qualification changes only notation scope and the `dotProduct` name, preserving the exact unit-spinor equation and its hypotheses. No G0, R4B, R4D, upstream source or accepted concrete gamma source is edited. The arbitrary-spinor homogeneity/row-orientation bridge is a separately staged, uncompiled G2 candidate until its parent and its own gate pass. Ordinary or finite-check evidence must not be relabeled as a new G2 Lean theorem.
