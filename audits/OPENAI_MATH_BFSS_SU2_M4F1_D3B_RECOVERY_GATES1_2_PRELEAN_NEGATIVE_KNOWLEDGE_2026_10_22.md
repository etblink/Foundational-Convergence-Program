# FCP BFSS — M4F1 D3B historical-source recovery Gates #1–2: PRE-LEAN red evidence

**2026-10-22 PDT. Disposition:** `M4F1_D3B_RECOVERY_G1_G2_INFRASTRUCTURE_RED__NO_ORIGINAL_G4_D3_OR_INDEPENDENT_M4F1_PROOF_COMPILED__ZERO_ROOTS_ACCEPTED`.

## Gate #1 — source-pin transcription defect (not a theorem verdict)

- [Run #39863503274](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39863503274), job `120119820696`, triggering workflow commit `b1acd464cc54b73d0d0abacbbf13441dc59fbc6a`, `completed/failure`.
- Exact original upstream BFSS checkout occurred, but the **fail-closed proof/source preflight** stopped with `AssertionError: ('FCPIndependentChargeVectorL2.lean', '6492f4b08181020f611f7d7b751394805420d2')`. The expected hash was incorrectly transcribed by the Project Lead.
- The actually accepted byte-identical M4F2 source blob is `6492f4b08181020f611f7d7d4b751394805420d2`, independently matched to the qualified M4F5 parent workflow and current source file.
- Workflow-only correction `e29aecf480c01b1050a73cafc5f6fe06e8f0657f` changed **only** the miscopied hash. No theorem, source mathematics, original pin, or accepted cache was modified. This is a positive example of immutable preflight refusing a wrong source attribution, not mathematical disconfirmation.

## Gate #2 — exact source preflight green; M4F5 cache restore unavailable

- [Run #39863642339](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39863642339), job `120120274125`, triggering corrected workflow commit `e29aecf480c01b1050a73cafc5f6fe06e8f0657f`, `completed/failure`.
- Original pinned BFSS checkout, the corrected full current accepted M4 source/candidate pin dictionary, and **all nineteen historical G4K1–G4K9D source comparisons against the previously successful pinned reconstruction** passed. Job log markers:
  ```text
  M4F1_D3B_RECOVERY_GATE1_FROZEN_ORIGINAL_AND_CANDIDATE_SOURCE_PASS
  M4F1_D3B_RECOVERY_GATE1_HISTORICAL_G4K1_TO_G4K10A_SOURCE_PASS
  M4F1_D3B_RECOVERY_GATE1_TOOLCHAIN_PASS
  ```
- The GitHub Actions cache restore step then emitted:
  ```text
  Cache not found for input keys: bfss-fcp-m4f5-unrestricted-graph-closure-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
  M4F5_PARENT_QUALIFIED_CACHE_MISSING
  ```
  This is a **runtime cache lookup failure in this workflow**, not evidence that M4F5 was never accepted or never saved its cache. [M4F5 original run #39859269539](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39859269539) previously reported a successful save of exactly that key and independently qualified its theorem declarations.
- Neither G4K1–G4K10A nor D3A/D3B nor `FCPIndependentInvariantCharge` was compiled in Gate #2. There were **no** new Lean axiom reports, compiled output cache, or accepted M4F1 theorem roots. The existing cumulative accepted principal-root ledger **remains 294 after M4F5**.

## Preserved engineering discovery

The previous M4F1 Gate #1 (run #39847407712) likewise stopped before Lean, lacking D3B `.olean` in the old M4E5 cache. It also contained a **second independent impending defect**: the axiom validator used `stem='FCPIndependentFullSmoothCharge'` after actually compiling `FCPIndependentInvariantCharge`. The new recovery gate fixes that validator stem. The new Gate #2 proved the historical source trees remain byte-identical and the intended source revisions themselves need no mathematical repair.

**Next action:** Do not retry Gate #2 unchanged or infer cache availability from an earlier save marker. First discriminate cache visibility/eviction/key or branch scoping from missing import objects. Prefer a qualified cache whose exact restore is observed to work on this branch, or rebuild the smallest missing accepted modules inside one bounded gate. Only when a source-identity-checking parent environment is present should the 19 original G4 source modules, G4K10A, D3A/D3B and unchanged M4F1 be attempted. Preserve separate exact `#print axioms` auditing for source and independent declarations.

**Scientific ceiling unchanged:** Neither red refutes or proves the independent gauge-invariant smooth-core charge preservation theorem, closed physical charge graph, Hamiltonian equivalence, Spin(9) or spectral assertions.

**Governance:** No original `etblink/math` source, canonical `main`, accepted proof blob or draft PR #25 was modified by either attempt.
