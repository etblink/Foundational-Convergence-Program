# FCP BFSS — Project Lead successor handoff: L6G6 Fock vacuum bridge (2026-10-13)

**Purpose:** Rapidly restore exact research state, avoid repeating diagnosed Lean failures, and return to the actual mathematics. **Snapshot, not canonical promotion.** Reverify live HEAD and Actions before acting.

> **First read:** [Evergreen Project Lead guidance](./FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) for decision rules, then [the L6G6N–P scoped negative-knowledge record](../experiments/openai-math-su2-physical-domain/L6G6N_TO_L6G6P_FOCK_VACUUM_BRIDGE_NEGATIVE_KNOWLEDGE_2026_10_13.md) for specific diagnostics, source modules, theorem types, remedies and research obligations. The older [S3L successor handoff](./FCP_BFSS_S3L_SPECTRAL_PROJECT_LEAD_CHAT_CONTEXT_SUCCESSION_2026_10_12.md) supplies the broader science and earlier methodological evidence.

## Last verified snapshot

- Repo: https://github.com/etblink/Foundational-Convergence-Program ; **active branch** `research/openai-math-su2-s3l-combined-rotation`. HEAD **before this document commit**: `5d9a663a8795b33b34a425d94931542f644419d4`.
- Draft **PR #25** https://github.com/etblink/Foundational-Convergence-Program/pull/25 ; head active branch, base `research/openai-math-su2-s3k-physical-spin-flow`; open, draft, unmerged.
- FCP `main` `cf06212a57db0ceffad74bd78280a8a240856a17`, untouched. Neither mathematical-source repo was changed. Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Workflow displayed as **BFSS L6G6K Original Bounded Fermion Color Current** (owner calls it **Original Source Spin Identity**), source `.github/workflows/bfss-l6g1-original-spin-identity.yml`. The additional L6G0 workflow generally appears skipped on these changes because of path filters; not an infrastructure regression.
- **Last unambiguous source proof greens:** [#122 — L6G6N](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38472095926) and [#125 — L6G6O](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38473401296).
- **Latest new gate at snapshot:** [#129](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38477409470) **IN PROGRESS**, source commit `5d9a663a8795b33b34a425d94931542f644419d4`. Results after this snapshot must be read live. Gates #126–#128 are red/unqualified and the exact diagnostics are in the linked scoped record.

## Proven vs remaining

**Proven/qualified:** L6G6N establishes generic phase-pair algebra and conditional off-diagonal CAR/vacuum cancellation on `Fermion 2`. L6G6O proves the source **exterior-algebra unit** is annihilated by the true 24-mode source annihilators. The prior L6G6M theorem proves the literal bounded color generator kills a vacuum *conditional on* the source spin-pair sum vanishing.

**Not yet qualified in L6G6P:** transported source `Fermion 2` annihilation plus exact F2 mixed-CAR specialization as one module. In failed #126–#128 runs `source24ModeVacuum_annihilator` compiled with clean axiom printout, but the full module failed on a concrete zero-scalar operator identity. **Do not upgrade the whole module or last theorem based on the partial success.**

**Not proved:** equality with G4B's invariant vacuum, exact even/odd paired`Theta` source spin/color sum, application of L6G6M to `pairedAlgebraData`, color generator = actual SU(2) gauge-action derivative with the right sign and scalar normalization, full Gauss constraint, original charge-square/gauge assembly, and spectral positivity. Existing conditional analytical spectral-sector bounds remain conditional; the complete BFSS spectral claim is not Lean-qualified.

## Next Project Lead action

1. Fetch *live* branch HEAD, current PR base/draft state and [gate #129](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38477409470) job logs. Check its first relevant `L6G6P` error and the actual `#print axioms` output. If green with clean audit, mark P accepted in the scoped record. If red, retain N/O greens and diagnose at the first causal line, not the last red badge.
2. Current attempt uses explicit `ContinuousLinearMap.ext` rather than unrestricted `ext` because #128 incorrectly descended to Euclidean `PiLp` coordinates. If this still fails, **stop repeating trivial `zero_smul` rewrites**; prove the required off-diagonal CAR on vectors directly, or use a proven source lemma fixing the precise scalar-action instance. Reuse the exact pinned F1/F2 operators and source closure, not guessed APIs.
3. Upon P qualification, formally bridge `source24ModeVacuum = FCP.BFSSSU2GaugeG4B.fermionVacuum`, G1A/G1B's `Fin8×Fin2` paired source Majoranas, and finite spin reindexing. Only then discharge L6G6M on `pairedAlgebraData`; **then** resolve gauge generator uniqueness via real SU(2) action and invariant vacuum. Return promptly to source-level physics, not a prolonged methods detour.
4. Preserve accepted modules/caches opportunistically under exact source/pin checks. Avoid needless CI reruns, large definitional reduction, indiscriminate timeout increases, overwriting concurrently advanced refs, and automatic main/upstream/PR merges.

**Owner's central directive:** The purpose is to find out what is true. Treat failure as information, not shame or a demand for a green badge. A successor's task is to advance the original mathematical/spectral question while preserving the negative knowledge that makes repeated failure avoidable.
