# FCP BFSS — Project Lead successor handoff: L6G6 Fock vacuum bridge (2026-10-13)

**Purpose:** Rapidly restore exact research state, avoid repeating diagnosed Lean failures, and return to the actual mathematics. **Snapshot, not canonical promotion.** Reverify live HEAD and Actions before acting.

> **First read:** [Evergreen Project Lead guidance](./FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) for decision rules, then [the L6G6N–P scoped negative-knowledge record](../experiments/openai-math-su2-physical-domain/L6G6N_TO_L6G6P_FOCK_VACUUM_BRIDGE_NEGATIVE_KNOWLEDGE_2026_10_13.md) for specific diagnostics, source modules, theorem types, remedies and research obligations. The older [S3L successor handoff](./FCP_BFSS_S3L_SPECTRAL_PROJECT_LEAD_CHAT_CONTEXT_SUCCESSION_2026_10_12.md) supplies the broader science and earlier methodological evidence.

## Last verified snapshot

- Repo: https://github.com/etblink/Foundational-Convergence-Program ; **active branch** `research/openai-math-su2-s3l-combined-rotation`. HEAD **before this document commit**: `5d9a663a8795b33b34a425d94931542f644419d4`.
- Draft **PR #25** https://github.com/etblink/Foundational-Convergence-Program/pull/25 ; head active branch, base `research/openai-math-su2-s3k-physical-spin-flow`; open, draft, unmerged.
- FCP `main` `cf06212a57db0ceffad74bd78280a8a240856a17`, untouched. Neither mathematical-source repo was changed. Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Workflow displayed as **BFSS L6G6K Original Bounded Fermion Color Current** (owner calls it **Original Source Spin Identity**), source `.github/workflows/bfss-l6g1-original-spin-identity.yml`. The additional L6G0 workflow generally appears skipped on these changes because of path filters; not an infrastructure regression.
- **Kernel-qualified gates:** [#122 — L6G6N](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38472095926), [#125 — L6G6O](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38473401296), and [#129 — L6G6P](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38477409470) (complete source-Fock transport, mixed CAR specialization, and normalized pair cancellation; axiom-audited with no `sorryAx`).
- **Gate #129 outcome (verified 2026-10-13 22:29 UTC):** **GREEN** at source commit `5d9a663a8795b33b34a425d94931542f644419d4`, log marker `L6G6P_SOURCE_FERMION2_TRANSPORTED_VACUUM_QUALIFIED`. Gates #126–#128 are red but the exact repairs and lessons were preserved. Reverify any newer results live.

## Proven vs remaining

**Proven/qualified:** L6G6N establishes generic phase-pair algebra and conditional off-diagonal CAR/vacuum cancellation on `Fermion 2`. L6G6O proves the source **exterior-algebra unit** is annihilated by the true 24-mode source annihilators. The prior L6G6M theorem proves the literal bounded color generator kills a vacuum *conditional on* the source spin-pair sum vanishing.

**Now qualified in L6G6P:** `source24ModeVacuum_annihilator`, `source24Mode_offDiagonalMixedCAR` (private helper), and `source24ModeFockPair_vacuumCancellation` all passed full pinned compilation and axiom audit in **#129**. The accepted proof uses `ContinuousLinearMap.ext` to avoid accidental descent into `PiLp` coordinates. This discharges the source-Fock 24-mode premises, but **not yet** the paired-theta spin/color specialization.

**Not proved:** equality with G4B's invariant vacuum, exact even/odd paired`Theta` source spin/color sum, application of L6G6M to `pairedAlgebraData`, color generator = actual SU(2) gauge-action derivative with the right sign and scalar normalization, full Gauss constraint, original charge-square/gauge assembly, and spectral positivity. Existing conditional analytical spectral-sector bounds remain conditional; the complete BFSS spectral claim is not Lean-qualified.

## Next Project Lead action

1. Fetch *live* branch HEAD, current PR base/draft state and recent CI logs. Gate #129 is now an accepted source checkpoint; do not re-litigate its vector-level zero-smul repair without contrary evidence. Advance to the exact `pairedAlgebraData` source identity, checking signs and indices.
2. Accepted technique from #129: explicit `ContinuousLinearMap.ext` maintains vector-level operator equality, whereas unrestricted `ext` descended into `PiLp` coordinates; then the exact zero-scalar action simplifies. Preserve this as negative knowledge and reuse proven F1/F2 source objects, not guessed APIs.
3. Next qualify `source24ModeVacuum = FCP.BFSSSU2GaugeG4B.fermionVacuum`, G1A/G1B's `Fin8×Fin2` paired source Majoranas, and finite spin reindexing. Only then discharge L6G6M on `pairedAlgebraData`; **then** resolve gauge generator uniqueness via real SU(2) action and invariant vacuum. Return promptly to source-level physics, not a prolonged methods detour.
4. Preserve accepted modules/caches opportunistically under exact source/pin checks. Avoid needless CI reruns, large definitional reduction, indiscriminate timeout increases, overwriting concurrently advanced refs, and automatic main/upstream/PR merges.

**Owner's central directive:** The purpose is to find out what is true. Treat failure as information, not shame or a demand for a green badge. A successor's task is to advance the original mathematical/spectral question while preserving the negative knowledge that makes repeated failure avoidable.

## 2026-10-13 qualification update: gate #133

[Original Source Spin Identity #133](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38478802320) is **GREEN** at `4d9c013c2d426bc43c2b62f0762ad777d9035eb1`. The log and axiom audit explicitly accept `L6G6Q.sourcePairedTheta_twoSpin_vacuumCancellation` on **literal** `pairedAlgebraData.theta` fields: for each `j:Fin 8`, distinct colors cancel between original even/odd spin components. This strengthens L6G6P source-Fock cancellation by discharging exact paired-theta identity. It still does **not** establish the entire 16-spin sum or the bounded generator vacuum. The next proof under qualification is `L6G6R`, which reindexes this sum and applies the accepted L6G6M finite source interface. Do not claim R before its CI and axiom checks.
