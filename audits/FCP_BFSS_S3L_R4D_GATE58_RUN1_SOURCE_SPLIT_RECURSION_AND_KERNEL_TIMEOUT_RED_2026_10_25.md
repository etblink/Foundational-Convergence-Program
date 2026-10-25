# FCP BFSS S3L R4D — Gate58 original named cubic assembly Run1, Lean recursion/kernel timeout

**2026-10-25 PDT — INDEPENDENTLY VERIFIED RED, zero newly accepted roots.** Primary CI [run #40233515110](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40233515110), job `121290096870`, immutable workflow source commit `4c1ea72d9017a960190cba0f3aed05418c9f5dea`, `completed/failure`.

## Exact evidence
- Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pinned immutable original theorem file `SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean`, Git blob `1a56b2055ff4ed3c1a227bce3910e974876c5774`.
- Original source-hash preflight, exact 126-module R4D import closure and fail-closed cache ancestry checks passed. Gate57 exact child cache `bfss-fcp-s3l-r4c2-gate57-spatial-source-v1-adc7f124-lean4341-d13f23b-Linux-X64` was unavailable. The previously qualified Gate23 parent was restored and **49 source predecessors** compiled fresh, with original source/compatibility provenance and strict `#print axioms` checks passing; included prior accepted R4A (2 roots) and R4C1/R4C2 (1 each), all requalification only.
- The actual original R4D theorem attempted after the 49 predecessors with `lake env lean -DwarningAsError=true`, budget 180s. Measured source compilation 115.622s, nonzero exit 1. First exact diagnostic:
```
SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean:81:12:
  error: maximum recursion depth has been reached
SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean:39:8:
  error: (kernel) deterministic timeout
'FCP.BFSSSU2PhysicalDomainS3L5K2R4D.pairedOriginalCubicFixedColorResponse_decompose_named'
  does not depend on any axioms
```
- The `#print axioms` line **does not prove the failed declaration passed**. There is no accepted R4D `.olean`, no Gate58 child cache, zero new roots on this red workflow.

## What failed, why this is informative
- At source line 81 the proof asks Lean to `exact sourceThreeSum_weightedResponse_split` applied to three large **inlined original source lambdas**: the complex fixed-color cubic weight, a fermionic response, and an ordered two-position spatial response. The original theorem statement and R4A/R4C1/R4C2 source proof obligations are otherwise available.
- The reported failure concerns **elaboration/type-checking recursion and kernel deterministic computation budget** during proof construction and checking; it is not a counterexample to the mathematical identity. The 180s process budget was NOT exhausted, so merely raising the process timeout would not resolve it.
- Do **not** blindly raise Lean `maxRecDepth`, `maxRecDepth`/kernel heartbeats or similar; do not disable proof linter, relax compiler warning policy, add axiom, replace original physical coefficient/operators, or claim the physical cubic covariance is proven.

## Next exact source-faithful research protocol
- Prefer **shorter proof terms and explicit named interfaces** rather than repeating huge inlined arguments. First test a minimally invasive proof-only variant replacing line81's fully explicit generic theorem application by tactic-level inference `apply sourceThreeSum_weightedResponse_split`, which may reduce elaboration cost. If that also fails, use an isolated small lemma or locally let-bound explicit `c, F, P` to share proof terms or a direct finite-sum distributivity/commutation proof. Test one structure per gate, retain exact errors; do not misclassify these variants as logically equivalent until Lean strictly compiles them.
- Pin both original and proof-only Git blobs and check whole-file equality with one exact proof substitution, with original mathematical theorem statement unchanged; compile source under the original module name, with all 49 ancestor `.olean` evidence and strict axiom whitelist. No incomplete/sorry proof is acceptable.
- The scientific boundary: R4D if eventually qualified would be an **original fixed-color cubic source-response assembly**. The still-required sixfold color/source coefficient bridge to K6C and full cubic charge covariance remain separate; no global Spin(9) or spectral existence inference.

All negative knowledge Gates55 Run1–4 and Gate58 Run1 is retained. Gate56/57 have **64** net new previously accepted source theorem roots across Gates51–57. Upstream original `etblink/math`, FCP canonical `main`, draft PR #25 remain unmodified.
