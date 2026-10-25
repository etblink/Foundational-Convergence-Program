# BFSS S3L R4A Gate28 #4 RED — S3L3B simp-only opposite pair equalities cause recursion

**Independently verified Oct 24 PDT / Oct 25 UTC 2026. Gate RED, 0/5 complete new ancestry checkpoint, 0 original R4A or R4D roots.**

## Original immutable evidence
- [Gate28 #4 workflow run #40166512645](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40166512645), job `121088563519`, `completed/failure`, immutable workflow commit `2ff01555f7895bd4f1e4dab91fa8b4f92be8944d`.
- Source math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; verified original canonical R4A Git blob `ef803c1b5c62a819e568c5a645c5e622ec1a0d6f`. Immutable S3L3A source `aa47f20d0c14374659aee0bf24c6361e464386ad` and proof-only variant `a1586fdcbadd829ac7d57cfb4f8c2dab7ae655c1`; immutable S3L3B canonical blob `19a7eb6a710fe6d4b531dc0eefba7ee27ed21dca` and local proof-only V5 variant `a3db8402e4ba03aed837d722c37523b3581fd2bd`.
- Gate27 source cache unavailable; accepted source-exact Gate23 S3E2 cache HIT and verified imported ancestry, 116 original canonical import modules scanned and 40 missing historical `.olean` files identified.
- BOTH exact source-diff proof-only checks passed: `...V5_SOURCE_CHECKPOINT_PROOF_ONLY_S3L3A_DECLARATION_IDENTICAL` and `...V5_SOURCE_CHECKPOINT_PROOF_ONLY_S3L3B_DECLARATION_IDENTICAL`.
- Original S3L1 (1 axiom-clean theorem) and original statement of S3L3A (1 axiom-clean theorem with exact proof-only deprecated-simp-name correction) BOTH compiled to actual runner `.olean`. The strict FIVE-module checkpoint as a whole is red, so NO reusable child cache was saved.
- First actual red in S3L3B `sourceCoordinateDerivative_position_commutator_operator` at line 41, after V5 replaced deprecated `if_pos / if_neg` by the overly broad `simp only [h, hr, ite_true, ...]`:
```text
SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe.lean:41:4:
error: Tactic `simp` failed with a nested error:
maximum recursion depth has been reached
```
Lean reported `sorryAx` in S3L3B's axiom footprint as a downstream consequence of the failed proof. This theorem was **NOT** accepted. S3L3C/S3L3D never compiled. Child cache save skipped.
- Exact original log bundle [artifact #12588398670](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40166512645/artifacts/12588398670), ZIP SHA256 `f5a9a2e8cc37a85c4880dfb72b7b570c97507e8400f8ef0ac030e1e0293a2dc6`.

## Causal classification and narrow next falsifiable experiment

This red is a **Lean proof-script rewriting divergence**, not evidence against the original exact smooth-core coordinate/derivative operator commutator. The original conditional predicates are the symmetric pair-index propositions `(i,A)=(k,B)` and `(k,B)=(i,A)`. V5 passed `h` and `hr` as rewrite rules simultaneously; their opposite directions trigger recursive simp expansion on original EuclideanSpace tuple coordinates. Do not raise `maxRecDepth`, add axioms, relax `warningAsError`, or assert the root merely because preceding sibling modules compiled.

Create a separately pinned S3L3B V6 compatibility variant, preserving unchanged original source theorem, hypotheses and operators. Replace ONLY the two local proof branches with finite explicit `split_ifs` analysis and numeric/operator normalization, avoiding `simp [h,hr]`. Independently STRICT-COMPILE before accepting; if a residual goal remains, inspect its exact index order and revise the proof rather than changing the proposition. The two prior original-source strict S3L1/S3L3A passes remain useful negative-gate progress, not a qualified five-module cache. Do not imply any original R4A, R4D full cubic charge response, global Spin9 physical action or BFSS spectral existence from this red.
