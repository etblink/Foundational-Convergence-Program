# BFSS L6 qualification: GitHub Actions cache-scope blocker and proof reuse

**2026-10-12 Project Lead: CI negative-knowledge checkpoint.**

Workflow run #38290017644 for L6-G0 failed at the environment preflight, BEFORE any Lean compilation. The log explicitly reports: "Cache not found for input keys: family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2". The preceding original source checkout completed and the pinned remote source commit was adc7f1241b42e322a6451854ab7e4b4c146bf78a. The next preflight shell step tested empty cache-hit and immediately exited 1.

This is **NOT** a counterexample to any Clifford or physical theorem and NOT a Lean elaboration failure. Existing accepted S3L CI ran under different PR/base/cache-owning contexts; GitHub Actions cache scopes are not generally interchangeable between unrelated research branches. No increase in timeout or theorem rewrite can solve this failed access. To avoid repeated red runs with no information, the newly added workflow no longer triggers on routine G0 module edits. It will run only when its own workflow configuration is explicitly changed after cache scope recovery.

More important discovery: exact pinned upstream GammaIdentity.lean ALREADY proves OAI.BFSSGamma.spinIdentity, the normalized spinor identity required here. The source L6-G1 module imports that theorem directly and instantiates it at the unchanged FCP.BFSSGamma9.gamma. The row-versus-column sign must be kept via the skew symmetry of gammaTwo. The remaining source-specific mathematical obligations are homogeneous normalization/row orientation, then actual CAR plus full Gauss-law normal ordering and real operator domains. Do not rebuild the gamma-grade symmetric basis or the 34,816 numeric Lean test.

Qualification policy: G0 and G1 are **uncompiled FCP source specializations**, not new green gates. The original pinned GammaIdentity contains an honest source Lean proof, but its cross-repo build provenance/oleans have not been independently requalified here. Next environment approach should identify an actually reachable exact source-checked cache (or a reproducible pinned build) BEFORE submitting a compile. Do not silently change the base of draft PR25, repin mathlib, or fetch arbitrary untrusted binary artifacts to bypass failure.

Governance: FCP research only, no upstream edits; FCP main unchanged; PR25 draft and unmerged.
