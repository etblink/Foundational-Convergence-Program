# BFSS Gate30 #2 — Original S3L3C unused `hij.symm` strict Lean error after successful Gate23 fallback

**Verified 2026-10-25, first actual compiler failure, checkpoint RED (no S3L3C or S3L3D accepted).**

## Immutable evidence

- [Gate30 #2 run #40170954248](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40170954248), job `121101491950`, completed/failure, original source/workflow HEAD `53b1994b1f26d784879901ee58f072bcfb8b151c`.
- Frozen actual `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; immutable canonical R4A and source graph checks passed.
- Gate29 S3L3B accepted child cache MISS again (reason for unavailability undetermined); qualified Gate23 S3E2 cache HIT, original S3C/D/E1/E2 ancestors checked. Walker V10 proved canonical original R4A dependency graph has 116 modules, 40 missing at start; source-exact S3L3A/S3L3B proof-only variants validated.
- Actual fresh `lake env lean -DwarningAsError=true` compiled original S3L1, S3L3A (strict source-identical theorem proof-only compatible), S3L3B (accepted isolated-simp proof-only), each one source theorem root using only `propext, Classical.choice, Quot.sound`.
- First red after entering unmodified canonical S3L3C, SHA `25b4c92b94b6d2e1f708eeb446ec5fda094400f1`:
```text
SU2BFSSPhysicalDomainS3L3CSourceOrbitalPositionCommutatorProbe.lean:152:15:
error: This simp argument is unused:
  hij.symm
Hint: Omit it from the simp argument list.
  [apply] simp [hij]
```
- Both source C `#print axioms` outputs (sourcePosition_comp_comm, pairedSourceOrbital_comm_position) showed `[propext, Classical.choice, Quot.sound]` and no `sorryAx` in the failed run, but strict `-DwarningAsError=true` properly treats the unused simp lemma as a compiler error, so **neither C theorem is accepted by this gate**; compiler exit 1, original S3L3D never attempted, child cache save skipped. Exact immutable [artifact #12590366400](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40170954248/artifacts/12590366400), ZIP SHA256 `4d23fbe56682e742d9f2dae8f61e6fea04a1c112d9cad714459a8ee0d211a089`.

## Project Lead classification and permitted next test

**Proof-script hygiene, not a mathematical falsifier.** Keep original S3L3C file and mathematical declaration unchanged. At the *second* branch only, remove the redundant `hij.symm` lemma from `simp [hij, hij.symm]` (the earlier branch may need both). Stage a Git-pinned proof-only variant and require exact byte-for-byte `compat == original.replace(the unique local proof fragment, corrected fragment)` inside the ancestry walker. Compile source-exact S3L1/A/B against recovered Gate23 parent, then S3L3C and S3L3D with unchanged strict warnings and standard axiom whitelist; or use Gate29 direct cache only if it restores AND the actual parent .olean objects exist. No bypass flags, no modified hypotheses, no new axioms or deduced R4A/R4D proof.
