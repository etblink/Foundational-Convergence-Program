# BFSS original S3L3C/D Gate30 #3 — proven S3L1/A/B ancestry, exact C proof red at reversed inequality

**Independently verified:** 2026-10-25 UTC/PDT. **Status:** Strict RED; S3L3C remains unaccepted, S3L3D not reached. No qualified C/D cache.

## Immutable evidence
- [Original completed run #40171562656](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40171562656), job `121103284868`, head/workflow SHA `4b3d0fb00d07d2c4dc221091848ce3edcfc3b9d1`. Exact original [artifact #12590457232](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40171562656/artifacts/12590457232), ZIP sha256 `1815980d89219e8c068d626ef15bd7b431c103a4a6a1ccf23efe0083d9b7c01e`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source checks, exact original and recovery Git blobs, S3L3A/B/C proof-only diff preflights PASS.
- Gate29 accepted child-cache lookup MISS again, accepted Gate23 original source parent fallback HIT and qualified ancestor .olean checks PASS; no claim why Gate29 cache remained inaccessible.
- Actual source ordered import closure 116 canonical modules, 40 originally missing; strict five-node fallback:
  `S3L1` PASS (1 root), `S3L3A` PASS (1 root), `S3L3B` PASS (1 root). All actual .olean/checks with `-DwarningAsError=true`, matching `#print axioms`, only three permitted axioms. These are HISTORICAL requalifications (S3L3B originally accepted in Gate29 #2); ephemeral run, no new cache saved.
- S3L3C proof-only attempt immutable blob `37cee76fc35963ec2675503afe3e8ee17e8d6293`, mathematical source original `25b4c92b94b6d2e1f708eeb446ec5fda094400f1`. It omitted `hij.symm` from SECOND conditional branch, but FIRST branch `simp [hij, hij.symm]` still has unused `hij.symm`. Its second branch after `subst k` uses only `simp [hij]` and cannot eliminate the condition reversed as `j=i`.
- **First actual compiler errors, source C:**
```text
SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe.lean:154:4:
error: unsolved goals
case pos
i j : SpaceIndex
B : ColorIndex 2
hij : i ≠ j
hkj : ¬i = j
⊢ j = i → position i B = 0

SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe.lean:152:15:
error: This simp argument is unused: hij.symm
Hint: Omit it from the simp argument list.
[apply] simp [hij]
'FCP.BFSSSU2PhysicalDomainS3L3C.sourcePosition_comp_comm'
depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSSU2PhysicalDomainS3L3C.pairedSourceOrbital_comm_position'
depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
- S3L3D never compiled, full checkpoint no saved child cache. Both are Lean tactic/normalization errors, neither constitutes a genuine physical/mathematical counterexample.

## Controlled repair direction
Treat the two branches separately: FIRST (`k=j`) remove `hij.symm` from its `simp` list, preserving `hij` only. SECOND (`k=i`) derive `hji : j ≠ i := Ne.symm hij` and normalize the reversed `j=i` conditional explicitly with `simp [hij, hji]`. Do not install both oriented equalities in one simp rewriting loop. No mathematical statements or hypotheses change. Avoid running S3L3D until S3L3C qualifies independently; new bounded C-only source gate on Gate23 direct cache fallback with previous A/B exactly proof-compatible source, then strict fresh four module compile/axiom reports/cache save.

Preserve Gate30 #1 cache miss, #2 unused second-branch simp, #3 reverse-inequality goal as separate negative knowledge. Prefer **small incremental qualified checkpoints and typed local logical facts** over repeated speculative broad simplifier edits.
