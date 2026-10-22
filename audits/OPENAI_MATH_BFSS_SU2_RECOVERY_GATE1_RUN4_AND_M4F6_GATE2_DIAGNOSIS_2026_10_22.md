# FCP BFSS — strict recovery syntax boundary and M4F6 source-specialization boundary

**Date:** 2026-10-22 (America/Los_Angeles). **Disposition:** two further independently diagnosed red runs; zero new principal roots; cumulative recorded roots **294**.

## D3B recovery Gate #1 run #4: warning filter fixed, historical tactic deprecation exposed

[Run 39868380014](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39868380014), job 120136267344, source `b2081dfb3097b67d664757fd53ed69c17524ec8b`, completed/failure.

Exact original/candidate source pins, Lean 4.34.1 / Mathlib, the M4F5 cache and all required original prerequisite builds passed. The repaired validator then accepted **74 reports across seven historical modules**: G4K1, G4K2A, G4K2B, G4K3, G4K4, G4K5 and G4K6. These are recovered historical results, not new roots.

The first new causal failure is original G4K7 line 95: `push_neg` is deprecated; the compiler recommends `push Not`. With the required `-DwarningAsError=true`, this is a compiler error. All seven G4K7 axiom reports still contain only permitted axioms, but the failed compile accepts nothing. Later G4 modules, D3A/D3B and M4F1 did not compile. Final qualification/cache steps did not run.

Original diagnostic artifact 12465786468 was downloaded, digest independently matched to `sha256:6934b414e95dbb82497ab3e893ac05eef2c28db60b9867d675f36fcf3efd075f`, and the original G4K7 log inspected.

### Explicit syntax adapter; original accepted blob preserved

Original G4K7 blob `0a78ee7901d25672a39e2f44135a316d0f2e0a0b` remains unchanged at its historical path. A separately tracked recovery copy at
`experiments/openai-math-su2-physical-domain/recovery/SU2BFSSG4K7EnergySumOfSquaresCorrectionProbe.lean`,
blob `994e89ee88bc9566232c7a85001d878d5aaf2bff`, differs by exactly one replacement:

`push_neg at hn` → `push Not at hn`.

The source propositions, labels, coefficients, definitions, seven theorem names and seven axiom-report requests are unchanged. The old proof's mathematical content is inspected: positive trial energy is equivalent to some nonzero charge component; no spectral positivity is asserted.

The new recovery Gate #2 verifies both the historical original identity and the adapter hash, asserts exact equality to that single tactic replacement, then stages the adapter under the original module filename for dependent imports. Compiler warningAsError stays enabled. This is a visible derivative proof qualification, not a claim that the modernized bytes equal the historical accepted blob.

All 22 G4K files and both D3 sources were scanned for the observed deprecated tactic; only G4K7 contained `push_neg`. This does not claim to detect every possible warning.

### Cache discipline before another expensive recovery

Gate #2 retains the mandatory exact eleven-path M4F5 restore and all 24 frozen independent/source pins. It additionally saves the completed pinned original prerequisite compilation separately before later proofs can fail. After all 19 historical G4 stages pass strict source-report validation, it saves a distinct qualified G4 checkpoint keyed to adapter 994e89ee; that checkpoint is usable without recompiling the same accepted chain. Restore/save contracts are exactly paired. A prerequisite compilation cache is not itself a new theorem certificate.

M4F1 remains a separate fresh final compile with its own strict validator. Only a complete passing gate can accept its new invariant-core charge-preservation root; none of the recovered historical lemmas is recounted.

## M4F6 Gate #2: generic architecture clean; two concrete specialization failures

[Run 39869296605](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39869296605), job 120139360421, source `e22b98e73f05cc6b657bddc48b44e053d607b3e4`, completed/failure.

All immutable source/toolchain checks and the M4F5 cache/import closure passed. The first stage compiled `FCPRestrictedGraphInputCut` in **17.60 seconds**, peak RSS **6,971,664 KB**, and its exact three-name strict validator passed:
- `core_graph_input_cut`: only propext, Classical.choice, Quot.sound;
- `image_input_cut`: only propext, Quot.sound;
- `original_core_graph_input_cut`: only propext, Classical.choice, Quot.sound.

The concrete module then failed in **33.68 seconds**, peak RSS **7,087,688 KB**, with recursion-depth errors only at lines **92 and 104**: the two applications specializing the generic cut certificates to the independent and paired source graphs. Both graph definitions remain axiom-clean. Both concrete cut bridges and the two dependent principal graph theorems contain sorryAx after failure, so **0/2 principal roots** are accepted. The whole gate is red and saved no final qualified cache.

Artifact 12465419052 was downloaded and matched to `sha256:89b5d674f5699ae538686687a54e2a99b6a12507db449cb657b2b2b4e50a2822`; both raw logs and resource files were inspected. This is not the earlier failed invariant-core-equivalence change. The failed boundary is now two small concrete specializations. Do not silently promote the generic stage into the source result.

**Next discriminating diagnostic:** elaborate the same two certificate applications in inferred-type definitions, without an expected concrete graph-equality goal. A pass separates application elaboration from subsequent goal conversion; a failure localizes the problem earlier. Preserve exact source premises and limits. A diagnostic pass adds no principal roots and leaves the physical graph bridge open.

## Subsequent operator boundary recovered from primary sources

The original accepted H5E8AY/D2B17 charge operator has a **physical input space and ambient PiLp 2 output of all sixteen FullL2 components**. Output physicality is a separate theorem; the codomain need not be repackaged as sixteen physical subspaces.

Pinned Mathlib `Mathlib/Analysis/Normed/Lp/PiLp.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612` supplies `LinearIsometryEquiv.piLpCongrRight` and its componentwise apply lemma. Reuse these to lift the accepted fiberTransportUnitary to the genuine Hilbert output column. The current 17-slot graph homeomorphism alone does not certify that Hilbert-space interface or transport adjoints.

Pinned original Core.lean already proves charge_symmetric, fullClosedGraph_vertical and fullClosedGraph_unique. Historical H5E8BH already identifies the literal source closed charge, natural-domain adjoint square and normalized (1/16) Hamiltonian. Avoid rebuilding those mathematical arguments merely to rename them; recover only the compiled source closure actually needed for the independent bridge.

## Governance and scientific ceiling

Research branch only. No main/upstream mathematics or accepted proof blob is changed. New source adapter, diagnostics and caches have explicit provenance and remain subject to strict qualification. CAR/Hermiticity, color/gamma matching and the exact generator witness remain visible. Physical charge preservation, restricted closed operators and domains, associated Hamiltonian equality and global Spin(9)/spectral assertions remain distinct obligations.
