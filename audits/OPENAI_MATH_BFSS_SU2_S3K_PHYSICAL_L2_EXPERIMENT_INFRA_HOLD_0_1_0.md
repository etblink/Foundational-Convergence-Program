# BFSS SU(2) S3K — exact physical L² spin-flow candidate and infrastructure hold 0.1.0

**Status: `SOURCE_CANDIDATE_ONLY__NOT_COMPILED__DEPENDENCY_CACHE_RESTORE_BLOCKED`**

## Authority and lineage
- Exact accepted scientific baseline: `research/openai-math-su2-concrete-potential` at `171a1f48e86cc3faf9bbb3c87b2afe64b7e352b8`.
- Isolated research branch: `research/openai-math-su2-s3k-physical-spin-flow`.
- Draft, unmerged PR #24: https://github.com/etblink/Foundational-Convergence-Program/pull/24
- Pinned compiler: Lean 4.34.1, openai/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- No accepted source module, original BFSS Majorana, gauge action, Hilbert space, or Hamiltonian was modified.

## Actual experimental source candidates
1. `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3K0SourceSpinFullL2LiftProbe.lean`: constructs an exact `Fermion 2 →ₗᵢ[ℂ] Fermion 2` packaging from S3H's prequalified spin-plane flow and a continuous complex-linear fiberwise `compLpL` on original `FullL2 2`; tests action exactness and norm nonexpansiveness.
2. `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS3K1ExactPhysicalGaugePreservationProbe.lean`: prospective source-specific commutation with original `pairedGaugeData.fiberAction` and `pairedGaugeData.bosonPullback` on `FullL2 2`, and preservation of literal `pairedGaugeData.physicalSpace` using its Gauss constraint. S3I source gauge commutation and D2B6–D2B7 are the intended foundations.
3. Workflow `.github/workflows/openai-math-su2-physical-domain.yml` adds pinned kernel/axiom qualification steps on PR-to-accepted-base events; uses the repository's existing warm proof chain rather than altering source authority.

These are **uncompiled candidates**. They are not proofs until the pinned Lean compiler returns successful, exact-name-only axiom reports. In particular no `FullL2` isometry or physical-subspace preservation is currently licensed by this candidate.

## Observed runs and negative knowledge
- Gate #201, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38108096655, source commit `2f0ce2af4494efb5e565aa5036bdfc7aa31990d4`, RED before theorem steps. Logs explicitly report `Cache not found for input keys: family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2` and `INFRASTRUCTURE_CACHE_RESTORE_INCOMPLETE: pinned Mathlib.olean missing` at the cache-verification step.
- Gate #202, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38108203850, commit `b658519ae3d49ca674f3b70cf20001ec89d70046`, PR-context attempt and unchanged-code retry: both terminated during **Restore pinned dependency environment**, with all subsequent Lean theorem checks pending; the provider's job-log redirect returned `BlobNotFound`, so do not speculate about which internal cache operation failed.
- Setting a draft PR base to the accepted research branch and switching CI to PR context did **not** deliver a qualified compiler run.
- Both failures are infrastructure evidence only, not theorem counterexamples, and must not be counted as mathematical red verdicts.

## Project Lead boundary / next trigger

Hold this candidate without further cosmetic Lean rewrites. Resume exact pinned compiler qualification only once a deterministic restore of the upstream Lean 4.34.1/Mathlib dependency cache is available, or a separately audited lockfile-faithful bootstrap route has been demonstrated. Do not loosen versions, smuggle axioms, alter physical operators, or claim success based on plausible mathematics.

Scientific next obligation after successful qualification is actual `FullL2` isometry (norm equality, rather than just ≤) and preservation of literal `pairedGaugeData.physicalSpace`; after that, separately construct *combined bosonic-plus-fermionic* physical spatial rotations and check the original closed charge/form and Hamiltonian domains.

No claim of gauge-physical Hamiltonian covariance, full Spin(9), positivity of the spectral infimum, positive eigenvalues, or bound-state existence follows from this code.
