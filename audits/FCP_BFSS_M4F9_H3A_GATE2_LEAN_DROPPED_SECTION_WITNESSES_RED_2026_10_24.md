# BFSS M4F9 H3A Gate2 — source and independent caches qualified; Lean section witness scope RED

**Strict classification:** `M4F9_H3A_GATE2_RED__DE4_SOURCE_WITNESSES_DROPPED_FROM_THEOREM_CONTEXT__NO_H3A_PROOF__ZERO_OF_ONE_ACCEPTED`.

[Original run #40068273588](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40068273588), original job `120795995320`, completed/failure, workflow SHA `170204fe9c016fe2cd30773de2910fb1d762f7ef`. Raw runner diagnostics [artifact #12550322749](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40068273588/artifacts/12550322749), SHA256 `111a922db5578c382a29026b3401a1c9f4c94296e52975a6bbab51dd4d05b58f`. Frozen original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. H3A exact source Git blob `0756480f7269145c72592c7083c2b6e8ab85c698` preflight `M4F9_H3A_ORIGINAL_AY_PHYSICAL_OUTPUT_CONSTRAINT_ONE_ROOT_SOURCE_PASS` passed.

**Distinct positive infrastructure outcome from Gate1:** Exact original H1 source AY–BH cache `bfss-fcp-m4f9-h1-original-source-hamiltonian-ay-bh-05a54077-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, all source AY/BF/BH/DE4 .olean present. Exact H2D2A true native Hilbert continuation/density `bfss-fcp-m4f9-h2d2a-native-hilbert-continuity-density-e66be19c-gate4-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored. The formerly absent H2D2B cache remained unavailable; Gate2 deliberately rebuilt exactly the previously accepted source blob `c61be772168804578f978990fdd8527b41d64610` using fresh strict Lean, confirmed qualified sole H2D2B closed-graph theorem only `[propext, Classical.choice, Quot.sound]`, new local .olean. `H3A_H2D2B_ORIGINAL_ACCEPTED_THEOREM_RECOMPILED_STRICT_PASS` and `M4F9_H3A_QUALIFIED_SOURCE_AND_NATIVE_CLOSED_OPERATOR_ANCESTRY_PASS` both passed. No altered ancestry, no invented source theorem.

**First H3A Lean causal failure**, source line 64:
```
error(lean.unknownIdentifier): Unknown identifier `hCAR`
error(lean.unknownIdentifier): Unknown identifier `hHermitian`
error(lean.unknownIdentifier): Unknown identifier `J`
error(lean.unknownIdentifier): Unknown identifier `hColor`
error(lean.unknownIdentifier): Unknown identifier `hGamma`
error(lean.unknownIdentifier): Unknown identifier `hJ`
```
Resulting residual goal `∀ α : SpinIndex, p.2.ofLp α ∈ pairedGaugeData.physicalSpace`, and `#print axioms pairedOriginalMinimalPhysicalHilbertChargeGraph_outputs_physical` included `sorryAx`. The named section variables were declared but, because H3A's theorem *proposition* only mentioned the original paired source physical output, Lean omitted unused section variables from its theorem context. They were not in scope for the DE4 source-exact graph transport theorem application in the proof. This is theorem-context scoping, not evidence of a false output-physicality claim.

**Corrective Gate3:** Use Lean's explicit `include theta hCAR hHermitian color gamma J hColor hGamma hJ` before the existing H3A theorem; this makes the source-matching witnesses genuine explicit hypotheses rather than improperly attempting to reference absent proof-only declarations. No theorem output constraint, source original AY definition, original BF/DE4 source graph, independent H2C E2 graph or H2D2A/B result changes; previously accepted original matched-gauge/Clifford witness remains the intended condition. Keep Gate2's distinct double original-source/native parent restoration, exact H2D2B fallback proof, and fresh one-root `-DwarningAsError=true` plus strict permitted-axiom report, saved cache only on full green. If additional Lean proof errors arise after the scoping fix, preserve a new red and diagnose rather than weaken the statement.

**Ledger:** Gate2 0/1 accepted, no new H3A archive. H2D2B 1/1 accepted from its own completed proof. Working principal BFSS tally 309 unchanged. Preserve Gate1 cache red separately; immutable mathematics/main/draft PR #25 unchanged.
