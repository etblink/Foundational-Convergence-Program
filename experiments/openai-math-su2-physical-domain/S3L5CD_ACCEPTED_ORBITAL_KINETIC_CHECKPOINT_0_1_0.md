# BFSS SU(2) S3L5C/D — accepted orbital kinetic monomial checkpoint 0.1.0

**Status:** S3L5C and S3L5D ACCEPTED in pinned Lean. Complete kinetic finite sum, cubic charge, full 16-supercharge covariance, physical Hamiltonian symmetry and positive eigenvalues OPEN.

## Exact provenance and acceptance gates

- S3L5C `SU2BFSSPhysicalDomainS3L5CSourceOrbitalFermionActionCommutationProbe.lean`: pinned [gate #43 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38131762058), accepted proof/workflow SHA `ac44636f7ac3aedb0a304eab21deda29cbe74f14`.
- S3L5D `SU2BFSSPhysicalDomainS3L5DSourceOrbitalKineticMonomialProbe.lean`: pinned [gate #44 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38132314690), accepted proof/workflow SHA `8397edc0ebf83b3c3a2d2d608251ccde8e4d0580`.
- Previous accepted S3L5A source-parametric monomial #41 and S3L5B concrete spin-monomial #42 remain unchanged and passed again in both current gates.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Both new modules produced importable `.olean` files, `#print axioms` reports restricted to `propext`, `Classical.choice`, `Quot.sound`, and explicit `sorryAx` rejection. No premise left undisclosed.

## Exactly accepted mathematics

**S3L5C** `sourcePostcomp_comm_orbital`: for all bounded fiber operators `K : Fermion 2 →L[ℂ] Fermion 2`, pinned source `TestFunction.postcompCLM K` commutes with the actual color-summed source `pairedSourceOrbitalPlaneGenerator i j` on **original** `SmoothCore 2`. This is proved by the accepted S3L4B source coordinate multiplier and derivative commutators, and exact finite source color sum.

**S3L5C** `sourceOrbital_comm_fermionAction`: for **every literal source** `M : AlgebraData 2`, all `γ,C`, the original `M.fermionAction γ C` commutes with the genuine S3L1 orbital generator as a source endomorphism. This is a direct specialization of S3L4C's checked definitional interface.

**S3L5D** `sourceOrbital_comm_kineticMonomial`: for every source `M : AlgebraData 2`, distinct spatial `i,j`, arbitrary `k, γ, A, B`, the exact source composition `(M.fermionAction γ A).comp (coordinateDerivative k B)` transforms under `L_ij` according to
```text
[L_ij, M.fermionAction(γ,A) ∘ coordinateDerivative(k,B)]
  = M.fermionAction(γ,A) ∘
      (if k=j then coordinateDerivative(i,B)
       else if k=i then -coordinateDerivative(j,B)
       else 0).
```
No guessed derivative transformation: this is the already-qualified S3L3E `[L,D]` law, combined with S3L5C `[L,fermionAction]=0` by an explicit operator-product commutator lemma.

These are genuine source linear-map equalities, not generic paper identities or surrogates. All prior accepted gamma-plane, gammaTwo and 48-Majorana spin proofs remain independent.

## Next bounded scientific gates

1. **S3L5E**: Combine accepted S3L5B concrete source fermionic spin monomial and S3L5D genuine orbital monomial:
```text
[L_ij + pairedActualSourceSpin_ij,
  pairedAlgebraData.fermionAction(γ,A) ∘ coordinateDerivative(k,B)]
 = pairedAlgebraData.fermionAction(γ,A) ∘ spatialDerivativeVariation_ij(k,B)
   + (sum_β J_ij[β,γ] • pairedAlgebraData.fermionAction(β,A)) ∘ coordinateDerivative(k,B).
```
Do not expand actual concrete 48-Majorana quadratic generator. Prove a small reusable additive commutator identity, then instantiate accepted source theorem names. Preserve exact order and sign.
2. **S3L5F:** Apply literal pinned `-Complex.I * pairedAlgebraData.gamma k α γ` and sum over all `k,A,γ`, using accepted S3L0 gamma/J transpose coefficient identity. Aim for the full **finite source kinetic sum** spinor covariance for all sixteen α. Beware source charge nested sums and Lean elaboration limits: establish finite-sum transport and gamma coefficient cancellation in smaller named lemmas before asking Lean to normalize a giant `M.charge` expression.
3. Separately prove cubic potential covariance from S3L2 gammaTwo, S3L3C position and S3L4D source theta identities, with exact original structure constants and `1/2`; only after BOTH kinetic and cubic pass combine into the original `pairedAlgebraData.charge` identity.
4. Core/physical Hilbert-space closed form, self-adjoint Hamiltonian, unitary rotation group and spectral positive-eigenvalue conclusions still require independent analysis and are NOT established by infinitesimal source identities.

## Failure learning and process boundaries

Recent gates #43 and #44 passed on their first tries because their proof statements were source-parametric, each reused accepted smaller lemmas, and CI tested one bounded concrete mathematical claim. Preserve this approach. Do not rerun obsolete S3L4A monolithic elaboration failures, or direct `M.charge` syntactic `rfl` in huge nested sums (S3L5A #39). Do not infer a mathematical counterexample from tactic recursion depth.

PR #25 is draft, restored to stacked S3K PR #24 review base; temporary full-bridge skip removed. FCP `main` unchanged. The 130-module `etblink/math` fork preparation is parked and unmerged; no upstream PR without explicit owner authorization.

Independent researcher/contributor: Evan T. Kotler. Citable work: https://doi.org/10.5281/zenodo.23291242 .
