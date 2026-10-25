# FCP BFSS S3L R4D — Project Lead resource and proof-design decision after Gate59

**2026-10-25 PDT — project handoff, not an additional theorem.** Governing rule: truth over green-counts, strict provenance over convenience, independent negative-knowledge preservation.

## Observed end-to-end scientific state

The immutable original fixed-color cubic assembly `pairedOriginalCubicFixedColorResponse_decompose_named` from source blob `1a56b2055ff4ed3c1a227bce3910e974876c5774` is **NOT qualified**. Its 125 distinct source import ancestors (126 nodes including R4D) are separately source-verified through successive accepted Gates51–57, with **64 net newly accepted roots**; recent Gate58 and Gate59 reds represent compiler/kernel difficulty at the actual final theorem, not an independently demonstrated mathematical counterexample.

- Gate58 run1: original direct R4A triple-sum instantiation, R4D compile 115.622s -> recursion-depth exceeded and kernel deterministic timeout.
- Gate58 run2: proof-only `apply sourceThreeSum_weightedResponse_split`, R4D compile 100.222s -> kernel deterministic timeout. Entire run **21m33s**, qualified Gate57 cache unavailable.
- Gate59: two byte-exact proof-only candidates after **one** full source reconstruction. `direct_sum` 123.804s exit 1: `Fintype ?m.562` unresolved at `sourceThreeSum_moveLastIndexFirst _`, plus kernel deterministic timeout. `typed_local` 135.470s exit 124 external timeout, no final kernel answer. Total run **22m26s**. Original pinned Gate23 cache restored after exact Gate57 cache missed. 49 ancestors compiled strict. No R4D `.olean`; no new theorem root.
- The comprehensive permanent primary red audit is `audits/FCP_BFSS_S3L_R4D_GATE59_TWO_PROOF_STRATEGIES_STUCK_INSTANCE_TIMEOUT_RED_2026_10_25.md`.

**Classification:** repeated kernel/elaboration obstacle at a large literal original R4D theorem application. The existing individually compiled R4A/R4C1/R4C2 results establish their precise statements, but are not a substitute for this final literal original theorem.

## Revised execution approach: durable full source ancestry first

Gate60 implementation:
- `experiments/openai-math-su2-physical-domain/BFSS_S3L_R4D_GATE60_ALL_SOURCE_ANCESTORS_CHECKPOINT_V1_2026_10_25.py`
- `.github/workflows/bfss-s3l-r4d-full-original-ancestry-checkpoint-strict-gate60.yml`
- [Gate60 Actions run #40240754568](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40240754568).

The source walker reuses the proven exact original 126-module import graph, qualified Gate57 or pinned Gate23 ancestry, all existing byte-exact proof-only compatibility files, source manifest, `lake env lean -DwarningAsError=true`, per-original-source `#print axioms` declaration/order and only `propext, Classical.choice, Quot.sound`. It **does not compile the R4D theorem**. It insists on all **125 ancestry `.olean`** files and the absence of the R4D target `.olean`. Direct Gate57 cache may require zero or one remaining ancestor; Gate23 fallback strictly recompiles 49 previously accepted module objects. No roots are newly accepted or counted again.

After the full strict ancestry checkpoint succeeds, the workflow saves a separately versioned GitHub Actions cache with key `bfss-fcp-s3l-r4d-gate60-full-125-source-ancestry-v1-adc7f124-lean4341-d13f23b-Linux-X64`. It also uploads an independent binary artifact containing exactly 125 source `.olean` files, with an exact module-name/source Git blob/SHA-256 contents manifest and compile/source provenance under its log artifact. The binary artifact is meant as a **future verified fallback** to direct cache; creation does not itself prove it is downloadable/restorable later. Future consumer must restore immutable original math and toolchain; verify all 125 original source SHA, artifact `.olean` SHA-256, exact module names, qualified lineage and no R4D target object, and revalidate imports before any target proof attempt. Never trust an unlabeled archive.

This stage has **zero novel mathematics**, but creates a durable verification basis to stop 49-module recompilations during each experiment. It will be accepted as an ancestry infrastructure checkpoint only after successful full gate and cache/artifact uploads, not from a launched workflow alone.

## Next scientific experiment after full ancestry checkpoint

1. First implement and qualify a genuinely strict consumer of the immutable 125-object artifact (with original Gate23 compiler base and bytewise provenance checks); do not assume cache restore availability. Then restrict future R4D experiments to the target or one tiny helper proof, in isolation, avoiding 20+ minute source rebuilds per proof.
2. At the R4D kernel problem, test a small original-source `SourceEnd` finite-sum distribution and reindex lemma with **explicit fixed types** `SpaceIndex`, `SpinIndex`, never a bare function placeholder causing `Fintype ?m`. Audit small lemma types before assembling physical BFSS lambdas.
3. Search for a low-cost type normal form that allows `change`/rewrite from original literal operators without forcing massive reducible definitional equality; prove two intermediate equalities and connect by small `calc` steps. Compare kernel traces/resources at the smallest still-failing obligation. Do not silently replace the physical operator/coefficients or introduce a premise equivalent to the theorem itself.
4. Accept the actual unchanged original R4D theorem only upon a full successful `lake env lean -DwarningAsError=true`, exact original `#print axioms` whitelist and valid final `.olean`. A failed theorem's `#print axioms` line is not proof certification.
5. Even then the result would be **fixed-color response assembly**, not automatically the sixfold cubic charge/free-spinor generator commutator, domain/global Spin(9), spectral theorem, or existence of positive normalizable BFSS eigenstates.

**Immutability:** branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`, original BFSS mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Canonical `main` and draft PR #25 unchanged.
