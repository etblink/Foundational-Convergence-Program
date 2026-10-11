# BFSS SU(2) S3L5J9 — actual original-source kinetic free-spinor covariance ACCEPTED 0.1.0

## Scientific status — substantive source theorem, not a spectral proof

**ACCEPTED:** Under the original pinned paired SU(2) BFSS operators on `SmoothCore 2`, the *complete kinetic part* of each of the 16 source supercharges transforms covariantly under the source-defined combined orbital generator and the **actual** paired 48-Majorana Fock spin generator. The coefficient is the negative original plane-spinor generator on the free supercharge spinor index. All nine spatial, three adjoint color, sixteen spinor source indices and literal `-Complex.I` gamma factors are retained.

This is a new complete kinetic-sector covariance identity, not the full supercharge covariance or closed physical Hamiltonian result. It neither proves nor rules out the manuscript's positive-eigenvalue theorem.

## Exact kernel qualification

- [BFSS S3L Source Rotation Coefficients #76](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38164568692) **GREEN**, exact source/workflow commit `d9310e7d18098ed31533652173a0cf050f03af92`.
- [BFSS SU2 Physical Domain Bridge #285](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38164568697) **GREEN** on same head.
- Module `SU2BFSSPhysicalDomainS3L5J9ActualKineticFreeSpinorCovarianceProbe.lean` compiled as real importable Lean `.olean`. Strict CI checked all **six exact theorem names**, allowed only `propext`, `Classical.choice`, `Quot.sound`, and rejected `sorryAx`.
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Consolidated accepted 26-object cache restored, checked all frozen source identities and ten representative imported theorem axiom footprints. The accepted J5–J8 modules independently recompiled and checked prior to J9.

### Exact newly qualified theorem names

1. `FCP.BFSSSU2PhysicalDomainS3L5J9.sourceFourSum_spinorFirst` — finite four-index exchange on genuine `SourceEnd`.
2. `FCP.BFSSSU2PhysicalDomainS3L5J9.sourceFullFreeSpinorSum_transport` — scalar-weighted free-spinor sum through all original 9×3×16 source indices.
3. `FCP.BFSSSU2PhysicalDomainS3L5J9.sourceFullNegativeFreeSpinorSum_transport` — negative generator coefficient with precisely preserved sign.
4. `FCP.BFSSSU2PhysicalDomainS3L5J9.pairedSourceKineticTripleSum_eqNamed` — separately qualified exact 9×3×16 source sum/name bridge to avoid whole-Fock elaboration.
5. `FCP.BFSSSU2PhysicalDomainS3L5J9.pairedKineticWeightedResponse_freeSpinorCovariance` — **complete exact paired source kinetic response** equals negative free-spinor generator acting on every named kinetic source charge.
6. `FCP.BFSSSU2PhysicalDomainS3L5J9.pairedActualCombined_comm_sourceKineticCharge_freeSpinor` — **complete actual paired source kinetic-charge commutator** equals negative plane-spinor action on the literal original `sourceKineticCharge pairedAlgebraData`.

### Mathematical result

For distinct spatial directions i,j and each original spinor α, define the source combined plane operator

`G(i,j) := sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j`

on the actual BFSS `SmoothCore 2`, using exactly the pinned source's orbital action and paired 48-Majorana Fock operator. Then the accepted theorem proves

```
G(i,j).comp (sourceKineticCharge pairedAlgebraData α)
 - (sourceKineticCharge pairedAlgebraData α).comp G(i,j)
 =
 -(∑ β : SpinIndex,
   (pairedPlaneSpinGenerator i j α β : ℂ)
    • sourceKineticCharge pairedAlgebraData β).
```

There is **no unproved fiber premise**: it was discharged earlier by source-defined S3L4D against the genuine paired 48-Majorana representation, imported through S3L5I3. The coefficient was established in S3L5J8 from original gamma/J Clifford identities and literal complex `-i`, not imposed as an assumption.

## Failure feedback / negative knowledge

- [Gate #75](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38164093972) was RED, but independently compiled all three generic fourth-index transport lemmas with permitted axioms. The first paired coefficient-to-named-charge specialization used a single `simpa only [kineticWeightedSum]` on the massive source sum and timed out in `isDefEq` at 200000 heartbeats. The final theorem also omitted `open FCP.BFSSSU2PhysicalDomainS3L5F`, leaving `sourceParametricCombinedPlane` unresolved. No mathematical contradiction; neither assumption nor compiler limits were altered.
- Gate #76 added only the missing source namespace and `pairedSourceKineticTripleSum_eqNamed`; it replaced the massive simplification with a precise `sourceFullNegativeFreeSpinorSum_transport` followed by a small `congrArg` and `Finset.sum_congr` at each β, then rewrote the accepted literal `kineticWeightedSum_eq_sourceKineticCharge`. All six lemmas and the final exact-source theorem passed; no `sorryAx`.
- Future proof design: preserve named source operators and compose already-qualified identities. Do NOT revisit monolithic `rfl`/`simpa` of the expanded charge.

## Next Project Lead scientific decision

Advance to the **separate original cubic/potential supercharge covariance** using genuine `gammaTwo`, original source structure constants, actual color/spatial indices, and precise one-half coefficient. Reuse accepted S3L2 cubic coefficient identities and S3L4D spin/Fock covariance. First audit the exact remaining cubic commutator/source boundary and prove small monomials, then combine into all sixteen original complete supercharges. Do not equate that to invariance of the closed Hamiltonian without proving form/domain invariance and the relevant functional-analytic steps.

Also retain attention to the manuscript's truly hard spectral uncertainties: representation-theoretic branching, transverse oscillator exclusion, compactness and positive eigenvalue inference remain open and should not be crowded out by Lean bookkeeping.

FCP `main` remains unchanged at `cf06212a57db0ceffad74bd78280a8a240856a17`. PR #25 remains **draft, stacked on S3K, unmerged**. No upstream `etblink/math` PR has been opened or merged. Zenodo record remains separate.
