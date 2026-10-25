# BFSS S3L R4D strict Gate #2 — independently verified legacy compilation-cache miss (RED)

**Date:** October 24, 2026 Pacific / October 25 UTC. **Disposition: RED, 0/1 theorem roots. NO original R4D Lean compilation, NO new child cache.**

## Primary immutable evidence

- [Original R4D Gate #2 run #40148307152](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40148307152), job `121034304828`, workflow HEAD `1f8039d9db0972eb03ae29bbd9371341e63e93a1`. Both run and job `completed/failure`.
- Original exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean` Git blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`, SAME as earlier Gate #1. Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Successful workflow steps: checkout research branch and frozen original math, **exact R4A/C1/C2/D source preflight**, then disk reclamation (84GiB to 107GiB available). Former Gate #1 `axiom-audited` comment false positive was repaired: the exact source hash and declaration scan now PASS.
- **Earliest and decisive Gate #2 failure:** original workflow step `Restore exact pinned Lean and Mathlib build environment` emitted
```text
Cache not found for input keys: family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2
```
- Immediately subsequent original step `Fail closed on dependency cache miss or wrong pins` attempted `test "" = "true"` and exited with status 1. **All accepted-source cache restores, ancestor compilations, and R4D target proof compilation were SKIPPED**. The CI did the correct fail-closed thing. No source theorem, operator or gamma covariance counterexample was produced. No R4D root was audited, no R4D `.olean` was created, and no successful child cache save occurred.
- Legacy `family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2` existed in archived old BFSS workflow templates scoped to older concrete-potential PR branch. The present active `research/openai-math-su2-s1v52-global-lift-scoping-20261019` branch cannot assume cross-branch cache scope or retention. **Do not retry this exact key** or classify absence as a Lean proof failure.

## Replacement strategy — preserve immutable physics, change only restore architecture

More recent fully green and source-qualified workflows exist, e.g. [M4F9 H4G1B run #40146023874](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40146023874), which restore exact frozen toolchain by pinned `elan` + `lake exe cache get`, then restore actual accepted source `.olean` objects via modern saved manifest. This is a safer modern *bootstrap strategy* than requiring the missing `family270b` cache. However **the modern cache's wild-card `SU2*.olean` does not itself prove that ALL old S3L R4A/R4C1/R4C2 compiled objects were included**; this needs a fail-closed explicit test and original-source blob checks. Do not invent an object/cache or assert a new theorem based on template existence.

Next bounded Gate #3 should: (1) restore pinned original math/Lean/Mathlib from source; (2) retrieve a known accepted modern cache by exact key; (3) inspect actual R4A, R4C1, R4C2 and their transitive source-compiled dependencies before attempting original R4D. If absent, stop as **missing source ancestry** and design an explicit independently compiled ancestry rebuild, rather than silently transplanting old branch cache. (4) Only with source-verified parents, attempt the unchanged actual original `pairedOriginalCubicFixedColorResponse_decompose_named` bounded fresh `lake env lean -DwarningAsError=true`, exact permitted axiom validation and new child-cache save. A source-level red in that final step should be diagnosed separately, preserving the earliest original Lean error or resource stop.

Original R4D remains UNQUALIFIED. Previously qualified R1D/R3C/R4A/R4C1/R4C2 and K2D3/K6C remain independently valuable. Full sixteen charge cubic Spin(9) covariance, global source physical form `q`, closed form sectors, and positive normalizable eigenvector existence remain OPEN. The accepted H4E3D4C4 operator graph equivalence and H4G1B conditional eigenpair iff remain ACCEPTED. Main, draft PR #25, frozen original source math untouched. Root accounting: R4D Gate #1 0/1; Gate #2 0/1.
