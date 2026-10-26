# BFSS S3L R4D Gate64 — strict proof-only R4F/R4E named assembly timeout

**2026-10-25 PDT — independently verified RED, zero new theorem roots accepted.**

## Primary immutable evidence
- [Run #40246717099](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40246717099), job `121329713047`, immutable workflow HEAD `5ef2b982ac3b2f6ef6af7212a8f47a592daa55e8`, run and job `completed/failure`; job ran from `2026-10-25T23:52:47Z` into `2026-10-26T00:01:02Z`.
- Exact original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original R4D source blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`.
- Proof-only alternative R4D file `experiments/openai-math-su2-physical-domain/recovery/S3L5K2R4DOriginalAssemblyR4FR4ENamedComposeGate64V1.lean`, immutable blob `862f7b9b66d07c8efa2ba853820a592c26b3af63`. The workflow checked exact byte equality of original R4D theorem statement and whole-file parity except one new import and first `calc` step proof, preserving all original BFSS coefficients and source operator terms.
- Exact Gate57 parent cache again missing. Qualified Gate23 S3E2 base restored; pinned Gate60 source/binary artifacts downloaded; Gate61 independent consumer verified all 125 original R4D prerequisite `.olean` hashes, exact original source manifests, Lean import of R4A, R4C1, R4C2. Strict R4E and R4F recompilation and whitelist axiom reports succeeded:
```
GATE63_QUALIFIED_SOURCE SU2BFSSPhysicalDomainS3L5K2R4EOriginalFixedColorWeightedSpatialReindexProbe FCP.BFSSSU2PhysicalDomainS3L5K2R4E.pairedOriginalCubicFixedColor_spatialWeightedTripleSum_reindex
GATE63_QUALIFIED_SOURCE SU2BFSSPhysicalDomainS3L5K2R4FOriginalWeightedResponseTripleSumDistributionProbe FCP.BFSSSU2PhysicalDomainS3L5K2R4F.pairedOriginalCubicFixedColor_responseWeightedTripleSum_distribute
GATE64_R4E_R4F_STRICT_SOURCE_PREDECESSORS_REQUALIFIED
GATE64_ORIGINAL_R4D_MATHEMATICAL_STATEMENT_BYTE_IDENTICAL_PROOF_ONLY_VALIDATED
```
- At `2026-10-25T23:58:27.63Z`, strict target compiler began with external bound:
```
timeout --signal=TERM --kill-after=5s 150s lake env lean -DwarningAsError=true \
  -o .lake/build/lib/lean/SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.olean \
  SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean
```
- At `2026-10-26T00:00:57.71Z`, the exact bound expired and workflow printed `GATE64_ORIGINAL_R4D_NAMED_ASSEMBLY_SOURCE_RED`. Original source compiler stdout contained only the known ancillary Lake package local-change repository warnings; it contained **no new Lean type error, no completed R4D theorem axiom report, and no strict acceptance marker**. That observation indicates the process did not finish within 150 seconds, **not** that the mathematical theorem is false.
- Required successful target `.olean` absent and R4D remained unaccepted. Negative diagnostic artifact [ID `12618339882`](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40246717099/artifacts/12618339882) uploaded.
- The original source proof's generic `sourceThreeSum_weightedResponse_split` has already failed Run1 Gate58 (recursion and kernel timeout), Run2 Gate58 (kernel timeout), and Gate59 variants (typeclass metavariable + kernel timeout; second typed variant process timeout). Gate64 explicitly removes that monolithic application but still times out for **the full R4D theorem statement and two-piece first proof step**.

## Next controlled mathematical hypothesis

**Do not** increase Lean kernel depth or suppress warnings as the default fix. Gate65 should first **isolate the exact initial R4D equality alone** into a separate source-specific theorem, using the two accepted independent results `R4F` distribution and `R4E` spatial reindex; its RHS must match the original first `calc` intermediate of literal R4D exactly. The lemma must not include R4C1/R4C2 physical coefficient identification or a final full R4D theorem, so its compilation cost identifies whether the barrier is the initial finite-sum composition or the final giant theorem and `congrArg₂`. Retain exact original source expressions, binder types, and order. Test with the immutable Gate60 binary ancestry and independently requalified original R4E/R4F, bounded subprocess time, original `#print axioms` whitelist, no `sorryAx`.

If Gate65 passes, a subsequent source-exact R4D proof-only alternative can import the compiled first-step interface and invoke previously compiled R4C1/R4C2. If Gate65 times out, investigate small first-step **named-term normalization or functional congruence** without conflating a kernel resource limit with a mathematical counterexample.

The accepted increment across Gates51–63 remains **66 new roots** (64 Gates51–57, +1 R4E Gate62, +1 R4F Gate63). R4D and full sixfold cubic charge covariance, global Spin(9), domain spectral existence remain unproved. FCP canonical `main`, draft PR #25, frozen original math unchanged.
