# BFSS S3E2 Gate #18 — explicitly typed `smul_zero` still selected wrong Lean scalar-action instance; STRICT RED

**2026-10-24 Pacific / 2026-10-25 UTC.** Verified 0/3 accepted S3E2 root declarations; the original mathematical statements and all previously qualified ancestry are unchanged.

## Independently verified original compiler evidence

- [Actual Gate #18 run #40157884523](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40157884523), job `121063059982`, source workflow commit `16671329741341db57ae9dcf946cdb6a07aa9255`; run/job both `completed/failure`. All immutable mathematical-source SHA preflight, pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and source-compatible S3E2 V5 SHA checks **PASSED**.
- Qualified true original 48-Majorana Fock accepted Gate13 **117-path** cache **HIT and RESTORED**:
`bfss-fcp-s3l-s3e1-forward-smulsub-4b5f4f9e-gate13-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Actual S3C/D/E1 compiled `.olean` imports verified. S3E2 V5 source `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV5.lean`, exact Git blob `805132eba5103803ad44b05decf9fd6a901029c5`, contains NO altered theorem statement/assumption, only two V4→V5 `smul_zero` tactic replacements. Compiler genuinely reached this source with `lake env lean -DwarningAsError=true`.
- Original exact diagnostic for first/second delta-contraction lemmas:
```text
S3E2...lean:48:16: error: Type mismatch
  smul_zero ↑(J α β)
has type
  @HSMul.hSMul ℂ ?m.154 ?m.154
      (@instHSMul ℂ ?m.154 SMulZeroClass.toSMul) (↑(J α β)) 0 = 0
but is expected to have type
  @HSMul.hSMul ℂ (Fermion 2 →L[ℂ] Fermion 2)
      (Fermion 2 →L[ℂ] Fermion 2)
      (@instHSMul ℂ (Fermion 2 →L[ℂ] Fermion 2) ContinuousLinearMap.instSMul)
      (↑(J α β)) 0 = 0

S3E2...lean:81:20: error: Type mismatch
  smul_zero ↑(J α β)
has the same wrong implicit SMulZeroClass.toSMul instance instead
of the actual ContinuousLinearMap.instSMul instance.
```
- These are NOT `smul_zero` falsehood, gamma sign contradiction, or lost qualified source cache; the explicit *expected* operator type in the V5 ascription did not force the polymorphic theorem's elaboration to reuse the *goal's existing* scalar action instance. **All three original S3E2 `#print axioms` reports included `sorryAx`; 0/3 accepted, child cache save skipped**.
- Preserved [GitHub original diagnostic artifact](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40157884523/artifacts/12585178267), artifact ID `12585178267`, ZIP SHA256 `f782220dfacdf9280ae88eacfbb2875cf582a74dc5e9f225b2bb75d0fdc57918`.

## Next proof-engineering strategy, preserve source mathematics

Do not repeat variations of standalone polymorphic `exact (smul_zero ... : ...)`, which selects `SMulZeroClass.toSMul` before seeing the genuine original continuous linear operator instance. In a new separately pinned S3E2 V6 proof, use goal-directed **`simp only [smul_zero]`** (or direct `rw [smul_zero]` as a separately diagnosed fallback if rewriting requires it) on the *already elaborated and typed* exact false-branch goal `(((J α β : ℝ) : ℂ) • (0 : Fermion 2 →L[ℂ] Fermion 2)) = 0`. This targets the actual `ContinuousLinearMap.instSMul` syntax, without an inferred detached `SMulZeroClass` term. If this also fails, separate minimal source typeclass diagnostic rather than many blind CI reruns; inspect which source algebra action receives the operation and choose its explicit already-qualified CLM module lemma.

Strict new gate must pin original+V2/V3/V4/V5/V6 exact blobs and deterministic exactly TWO proof-only changes, enforce same all three source theorem statements and no `sorry` or axiom, restore original S3E1 Gate13 qualified 117-path cache, fresh Lean warning-as-error source compile, check all three original `#print axioms` with ONLY `propext, Classical.choice, Quot.sound`, and qualified 118-path compiled child cache SAVED before accepting any root.

Negative source knowledge chain remains explicitly classified: Gate14 original finite sum simplifier/typed sub mismatch, Gate15 run1 pre-Lean Python newline regex, Gate15 run2 Lean matrix implicit-transparency, Gate16 two `c • 0 = 0` leaves, Gate17 ambiguous `SMulZeroClass`, Gate18 explicit-type ascription still wrong instance. The accepted baseline is 28 **historical source requalifications**, plus ONE genuinely **new** S3E1 actual Fock same-color CAR commutator root; **zero** S3E2 root qualified yet.

Still no actual global gauge-compatible Spin(9) covariance, source cubic R4A/C1/C2/D integration, closed physical quadratic form reducing sectors, compactness, or positive normalizable BFSS eigenvector **existence** result. Original `etblink/math`, canonical `main`, draft PR #25 unchanged. Research Issue #29 remains open.
