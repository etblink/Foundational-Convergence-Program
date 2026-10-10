# BFSS SU2 Physical Domain Bridge #15 — two-stage infrastructure diagnosis and repair 0.1.0

**Date:** October 9, 2026 Pacific / October 10 UTC. **D2B3:** `UNTESTED__ENVIRONMENT_BLOCKED` after both Gate #15 attempts. The accepted D1/D3A/D3B/D2A/D2B1/D2B2 theorem chain remains valid under their earlier successful compiler gates. This audit makes no new mathematical acceptance claim.

## Exact GitHub Actions evidence

[BFSS SU2 Physical Domain Bridge #15](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38020431986) tested commit `fc50e49e61024d4a6c18c1006107468aa25c2c2c`, with two observed attempts:

1. **Original job** `114120019455`: `actions/cache` reported the original pinned `family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2` dependency-cache key was a hit, but restoration was **aborted**, then logged `Cache not found for input keys`. The different accepted G4-K10A `.lake/build` cache restored successfully; its source-object checks passed. At the first D1 compilation, the missing toolchain was downloaded and Lake recloned the pinned packages. Lean then failed with `unknown module prefix 'Mathlib'` because `Mathlib.olean` was unavailable. **This is an environment failure, not a D1 proof invalidation.**
2. **Failed-job rerun initiated by the Project Lead**, job `114120784551`: the dependency restoration succeeded; the runner passed every accepted source-check and every D1, D3A, D3B, D2A, D2B1 and D2B2 recompilation/axiom guard. It then attempted D2B3, but Lean stopped at import line 1: `object file .../OAI/Analysis/VlasovMaxwell/Regularity/SmoothIntegral.olean ... does not exist`. The original upstream source `OAI/Analysis/VlasovMaxwell/Regularity/SmoothIntegral.lean` exists at the pinned OpenAI Math commit, but its compiled object was **not** in the G4-K10A warm build cache, because it was unrelated to those earlier BFSS imports.

Neither attempt typechecked either new D2B3 theorem. Thus we must not claim that fixed-g source spatial slice smoothness, or even the conditional all-jet reduction, has qualified. This gate reveals **two CI/environment dependencies**, not a counterexample to the genuine Haar-average smoothness argument.

## Minimal workflow-only repair

The existing dedicated workflow `.github/workflows/openai-math-su2-physical-domain.yml` now:

- Guards the complete pinned dependency cache (including actual `Mathlib.olean` and Lean `4.34.1` executable) **before proof compilation**, explicitly labeling any incomplete recovery `INFRASTRUCTURE_CACHE_RESTORE_INCOMPLETE`. This avoids presenting dependency download corruption as a false mathematical red gate.
- Keeps all pinned source, toolchain and accepted cache keys, accepted mathematical proof files and accepted source freezes unchanged.
- In D2B3 step, explicitly compiles the **actual** pinned upstream analytic library source `OAI/Analysis/VlasovMaxwell/Regularity/SmoothIntegral.lean` to the needed `.lake/build/lib/lean/OAI/Analysis/VlasovMaxwell/Regularity/SmoothIntegral.olean` using the same pinned compiler, immediately tests the object exists, then runs the unchanged D2B3 candidate with its two exact permitted-axiom reports.

The source is `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`; the source RVM theorem itself is already a genuine upstream proved theorem, **not a new unproved gauge hypothesis or declaration**. Build of the new module is prospective until the next CI gate, and may produce compiler/thermal/resource warnings to diagnose separately.

No D2B3 source proof edits are appropriate absent its first actual compiler result. D2B3's first theorem still aims to prove every fixed-g spatial slice is `C∞`; its second is **conditional on an explicit unsolved joint-jet continuity hypothesis**. Genuine unconditional average `SmoothCore` regularity, physical gauge-invariant smooth core membership, L² contractivity and `G.coreNormClosure = G.physicalSpace` remain OPEN.

No main merge, upstream PR, new original Color Gate, changed original mathematical theorem, additional axiom, BFSS Hamiltonian/spectral assertion, or scientific-framework reclassification.
