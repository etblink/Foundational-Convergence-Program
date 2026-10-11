# OpenAI Math upstream contribution preparation — 0.1.0

**Status:** PRIVATE STAGING ONLY — NO PUBLIC FORK CREATED, NO UPSTREAM PR OPENED.
**Owner intent:** Investigate an upstream fork and port independently checked BFSS SU(2) source modules; eventual external review, without presenting unproved spectral claims as theorems.
**Starting SHA (FCP):** `1ee13c62a743c39bb4378b385b67bd10966accff` — exact S3L source gate **#14 GREEN** (`https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38118139922`).
**OpenAI Math pinned source:** `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; **observed upstream main:** `fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`. At audit, `Core.lean`, `GammaWords.lean`, `GaugeCore.lean`, `lean-toolchain`, and `lake-manifest.json` have identical Git blob identities between these revisions.
**Pins:** Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
**Open review:** FCP PR #24 (S3K), PR #25 (S3L) remain draft and unmerged. Neither is an upstream pull request.

## Decision and publication boundary

Prepare an **upstream-friendly small contribution**, rather than publishing FCP wholesale. The aim is peer-reviewable, source-defined lemmas about the real BFSS representation, not a self-declared proof of positive eigenvalues. In the first upstream PR, focus on genuine source Clifford/spin-plane covariance and its two-form action, with precise theorem statements and a concrete import path into `lean/OAI/MathematicalPhysics/BFSS/`.

This can be a new upstream module, provisionally `SpinPlaneCovariance.lean`, whose lemmas use the actual `AlgebraData N` gamma field and `OAI.BFSSGamma` library, specializing to the accepted SU(2) paired representation where it can be done without dragging the entire private construction. A general lemma proved **from existing source `AlgebraData.gamma_clifford` rules** is acceptable upstream if it is explicitly distinguished from the concrete source instantiation. Never introduce an assumed Clifford representation or substitute physical space merely to obtain an easy theorem.

### Accepted mathematical inventory available to port

- S3A: source real gamma-plane generator, skew transpose, and commutators for the two rotated axes.
- S3B: all-nine-direction gamma vector commutator, including transverse directions.
- S3L0: actual kinetic gamma/spinor-index coefficient identity.
- S3L1: original `SmoothCore 2` orbital operator and its literal position-derivative evaluation.
- S3L2: actual source `gammaTwo` two-form commutator and cubic spinor coefficient identity.
- S3L3A: source `[coordinateDerivative,position]` on `SmoothCore 2`, green gate #14.
- Earlier S3C–S3K: accepted Majorana/Fock/gauge-flow and physical space lift, but with a larger concrete SU(2) representation and import chain requiring an explicit second-stage integration plan.

**Exclude from the initial accepted transfer:** current S3L3B operator-level probe on FCP S3L working HEAD `b60baa806dab3f0b296229a78f70e07b787544ab`; CI gates #15 and #16 are RED and do not qualify it. No S3L3B statement is promoted to accepted upstream. The source-gate mainline remains a separate branch, not overwritten by this preparation branch.

### Recommended upstream PR sequence

1. **PR A: source Clifford-plane covariance** — portable S3A/S3B/S3L0/S3L2 identities, refactored from FCP-only imports into source-local imports, with their statements retaining exact gamma normalization and sign convention; fresh pinned Lean import and `#print axioms` required. This is the first coherent external review boundary.
2. **PR B: original smooth-core orbital calculus** — S3L1 and S3L3A plus direct orbital commutators after they qualify, using the original upstream `position` and `coordinateDerivative`. Do not claim integration or closed Hamiltonian symmetry.
3. **PR C: exact SU(2) instantiation and physical Gauss-law flow** — the accepted fermionic representation, gauge data, Fock spin generator and physical-space lift S3C–S3K. Port/reduce the complete concrete dependency closure and independently compile before submitting. This is substantially larger than PR A and may warrant multiple smaller PRs.
4. **Later scientific work, not current accepted PR scope:** combined full supercharge covariance, form and operator-domain symmetry, global group action, sector compactness and positive eigenvalues.

### Architecture and proof gates

- Original FCP S3A imports `SU2BFSSPhysicalDomainS2DTransverseSliceWedgeProbe`; S3B imports S3A; S3L0 imports S3B; S3L2 imports S3L0. These relative imports reach a long private research chain. **Do not paste files verbatim and claim the fork builds.** Rework the first upstream unit so its imports resolve against `OAI.MathematicalPhysics.BFSS` source modules, then reprove and recompile every changed statement.
- Avoid naming ephemeral S3A/S3L phase labels as permanent upstream module architecture. Use readable mathematical names and explanatory docstrings.
- Require reproducible `lake env lean` execution against upstream `main`, exactly recorded Lean/mathlib pins, module and import closure, strict `#print axioms`, and no `sorryAx`. Do not quietly weaken theorem statements or broaden assumptions.
- Check upstream base drift at first public commit and again before opening PR. Our audit found the relevant BFSS source blobs unchanged between pinned and current upstream, but this must be rechecked.
- Provide concise tests/reproduction commands and a claim-scope table: source operator identities vs physical domain vs unresolved spectra.
- Favor single-purpose source changes, no unrelated FCP methodology, no large PDFs, archives, unrelated experiments, repo-history dumps, or public CI caches in the fork.

### License, provenance, and explicit publishing gate

`openai/math` root and `lean/` have Apache-2.0 licenses; no root `CONTRIBUTING.md` or standard PR template was present in this audit. The original FCP repository is private and has **no root LICENSE file** observed. Before making a *public* fork contribution with adapted FCP-owned code:
- obtain the owner's explicit approval to submit those new source files under the upstream Apache-2.0 contribution terms;
- verify authorship rights and preserve attribution and any third-party notices; retain appropriate modification notices for changes to upstream originals;
- disclose use of AI assistance and source lineage if relevant to review; do not imply approval or collaboration by OpenAI;
- clearly label accepted vs candidate findings, including independent-source qualification rather than claims of physical eigenvalue discovery.

The GitHub connection available during this preparation can read/write accessible repositories but **does not expose GitHub's create-fork action**. The owner must use GitHub UI (open `https://github.com/openai/math`, click **Fork**, choose their account and the public fork), and if required grant the connected GitHub app access to the new fork. Once `etblink/math` exists and is accessible, the Project Lead can create an isolated port branch and transfer the accepted first tranche, then compile. **Do not open an upstream PR without separate explicit approval after the portable branch is green.**

## Why now

The accepted source results are meaningful without pretending the larger spectral program is finished. Publishing the well-bounded mathematics makes it independently reviewable and allows the community to find either a rigorous improvement or an error. Truth-seeking favors review at this boundary, not premature promotion of the manuscript's remaining spectral claims.
