# S3L5A/B — accepted actual BFSS source kinetic-monomial spin law

**Status:** S3L5A source-parametric kinetic-monomial product rule ACCEPTED; S3L5B concrete 48-Majorana specialization ACCEPTED. **The full source kinetic SUM, orbital-kinetic combination, cubic charge and 16-supercharge covariance remain OPEN.** No physical-domain or spectral claim follows from these lemmas.

## Qualified lineage

- S3L4B exact original SmoothCore postcomposition: gate #32 GREEN, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38127827229.
- S3L4C source fermionAction identification: gate #33 GREEN, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38128416965.
- S3L4D genuine 48-Majorana source spin theta law: gate #38 GREEN, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38129250838.
- S3L5A source-parametric kinetic monomial: gate **#41 GREEN**, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130473370; exact source/workflow SHA `14889608068a1552b1c7395a4ffc0a234231f484`.
- S3L5B actual original source kinetic monomial: gate **#42 GREEN**, https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130981802; exact qualified source/workflow SHA `9afa12a46e7314c751f09d9bafc16ed0a72e6abd`.

**Exact upstream environment:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. #41 and #42 produced importable `.olean` objects, verified strict exact theorem `#print axioms` allowlists (only `propext`, `Classical.choice`, `Quot.sound`), and rejected `sorryAx`.

## Exact scientific result

For every source spatial `k`, spinor `γ`, colors `A,B`, and plane `i,j`, the original paired SU(2) BFSS operators on `SmoothCore 2` obey:

```text
[pairedActualSourceSpin(i,j),
   pairedAlgebraData.fermionAction(γ,A) ∘ coordinateDerivative(k,B)]
 = (∑_β (pairedPlaneSpinGenerator(i,j)[β,γ] : ℂ)
          • pairedAlgebraData.fermionAction(β,A))
     ∘ coordinateDerivative(k,B).
```

This theorem is `FCP.BFSSSU2PhysicalDomainS3L5B.pairedActualSourceSpin_comm_kineticMonomial`; its proof is a direct application of the green S3L5A source-parametric operator Leibniz theorem with the explicit concrete fiber premise **discharged** by green S3L4D `pairedActualFockSpin_comm_source_theta`.

The monomial theorem retains the original `AlgebraData.fermionAction` and `coordinateDerivative`, not surrogates, and does not introduce assumptions about the closed Hamiltonian.

S3L5A additionally defines `sourceKineticCharge M α` and `sourceCubicCharge M α` with the syntactically exact pinned `Core.lean` finite sums and coefficients, including `-Complex.I` and cubic `1/2`. **A separate Lean equality theorem `M.charge α = sourceKineticCharge M α + sourceCubicCharge M α` is NOT accepted**; the initial attempted direct definitional proof timed out.

## Failure feedback

- Gate #39 RED https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130043713: source total-charge equality by `rfl` exhausted Lean's heartbeat budget in nested sums, and concrete direct monomial elaboration hit maximum recursion depth. These are compiler elaboration issues, not demonstrated mathematical contradictions. The repair avoided both large expressions while preserving exact source operators.
- Gate #40 RED https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38130456102: source-parametric theorem compiled but an intermediate workflow head expected the three superseded theorem names, and its Python axiom-name assertion failed. Gate #41 used the correct matched workflow and accepted the single theorem. Future edit sequence: source and workflow while PR remains on normal stacked base; retarget once; trigger once with a comment-only edit only if necessary.
- Gate #42 qualified the concrete specialization on the first attempt, reusing accepted #41/#38 theorems instead of expanding the 48-Majorana expression.

## Next bounded scientific objective

1. Prove the original **orbital** generator's commutation with `pairedAlgebraData.fermionAction γ A` using S3L4C source fermionAction commutation with both `position` and `coordinateDerivative`, combined with S3L1's finite color orbital operator. No unstated commutation assumptions.
2. Combine that with accepted S3L3E `[L_ij, coordinateDerivative(k,A)]` to obtain the source orbital action on each kinetic monomial. Check exact sign.
3. Contract original gamma coefficients using accepted S3L0 `gamma * Jᵀ - spatialVariation = -J * gamma`, preserving `-Complex.I`, and prove the **full finite kinetic sum** covariance for all sixteen original spinor indices.
4. Independently handle the exact cubic `structureConstant * gammaTwo` term using S3L2, S3L3C, and S3L5B's fermion spin law. Only after both are qualified attempt the original full `pairedAlgebraData.charge α` covariance, then physical domains and analytic spectral questions.

No source charge/Hamiltonian physical symmetry, group action or positive eigenvalues are claimed. Publication branch `etblink/math` with 130 staged modules remains parked; no upstream PR or merge without explicit owner authorization.

Independent contributor: Evan T. Kotler. Research DOI: https://doi.org/10.5281/zenodo.23291242 .
