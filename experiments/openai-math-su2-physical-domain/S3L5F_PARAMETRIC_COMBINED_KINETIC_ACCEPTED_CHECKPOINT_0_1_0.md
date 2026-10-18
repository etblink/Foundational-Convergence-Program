# BFSS SU(2) S3L5F — accepted source-parametric combined kinetic monomial

**Status:** S3L5F ACCEPTED in the exact pinned Lean kernel. The earlier concrete S3L5E specialization remains UNQUALIFIED; full 16-supercharge covariance and all Hamiltonian/spectral claims are OPEN.

## Exact reproducible lineage

- **Green qualified theorem commit:** `af7ecdf3a1b432bd0babd5c5942351d37f727dde`.
- **Accepted gate:** [BFSS S3L Source Rotation Coefficients #46](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38133589836), success; importable `.olean` and explicit `#print axioms` checks.
- Original upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Research source: `SU2BFSSPhysicalDomainS3L5FParametricCombinedKineticMonomialProbe.lean`.
- FCP `main` untouched; draft PR #25 restored to its proper S3K base (PR #24), unmerged.
- Evan T. Kotler research record: https://doi.org/10.5281/zenodo.23291242.

## Kernel-accepted mathematical result

`sourceComm_sum_of_components` is a pure identity of endomorphisms on the **original** `SmoothCore 2`:
```text
[L,T] = A ∧ [K,T] = B  =>  [L+K,T] = A+B.
```
`sourceCombined_comm_kineticMonomial_of_fiber` then proves the exact original source kinetic monomial covariance **for every `M : AlgebraData 2` and bounded fermionic fiber operator `K`**, under one **visible** fiber covariance premise
```text
[K, M.theta(γ,A)] = ∑_β c(β) • M.theta(β,A).
```
Writing source `L_ij` for the qualified genuine orbital generator,
`S(K)` for the proven source `TestFunction.postcompCLM K`,
`T = M.fermionAction(γ,A) ∘ ∂_(k,B)`,
and `Δ_ij ∂_(k,B)` for the qualified S3L3E derivative variation, the theorem states:
```text
[L_ij + S(K), T] =
  M.fermionAction(γ,A) ∘ Δ_ij ∂_(k,B)
  + (∑_β c(β) • M.fermionAction(β,A)) ∘ ∂_(k,B).
```
No actual paired Fock generator is unfolded in the theorem. Its proof uses only accepted S3L5D orbital and S3L5A parametric fermion-spin monomial laws, and the separately compiled additive commutator lemma.

Gate #46 checked both new theorem axiom reports and admitted only `propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx`.

## Failure feedback and standing negative knowledge

Source gate [#45 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38132855120) attempted `pairedCombinedSourcePlane_comm_kineticMonomial` with actual `pairedAlgebraData` and concrete quadratic 48-Majorana `pairedFermionPlaneSpinGenerator` as direct explicit arguments to a generic theorem. At **line 76:8**, Lean reached maximum recursion depth while elaborating these giant concrete terms. The trusted source prerequisites passed, but the target theorem in S3L5E had `sorryAx` after the failed proof. This is an elaboration failure, not a counterexample or evidence that full charge covariance is proved.

The draft S3L5E module remains **excluded** from accepted CI. The existing S3L5E diagnostic checkpoint was preserved. Do not redo #45 unchanged, raise recursion depth indiscriminately, or conflate accepted generic S3L5F with actual concrete S3L5E.

## Next bounded scientific task

Create an **independently checked small concrete specialization**, separately from S3L5F. The source must explicitly identify `M = pairedAlgebraData`, `K = pairedFermionPlaneSpinGenerator i j`, and `c β = ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ)`. Discharge the full *fiber covariance premise* via previously accepted S3L4D `pairedActualFockSpin_comm_source_theta` or S3E. Avoid expanding the concrete generator in the proof term; use local `let` bindings and abstract named theorem application, with a narrow normalization of `pairedAlgebraData.fermionAction` if necessary. Kernel qualification is required before promoting any specialization.

Only after that gate should the full kinetic finite sum with actual `-i gamma` coefficients be assembled. Source cubic `gammaTwo` variation must be checked separately; full charge, core closure, physical Hamiltonian symmetry and positive eigenvalues remain unproved.

**Upstream release:** Public `etblink/math` 130-module preparation remains parked and unmerged, and no upstream PR may be opened without explicit owner authorization.
