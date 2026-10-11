# S3L5J3 — original-source spinor double-sum transport checkpoint 0.1.0

**ACCEPTED by pinned Lean.** The 16×16 spinor-index scalar-weighted double sum is formally exchanged on the ORIGINAL `SmoothCore 2` source-endomorphism type, and specialized to the literal `-Complex.I` gamma weights, `pairedPlaneSpinGenerator`, and original paired fermion-action/derivative kinetic monomials.

**NOT YET PROVED:** equality of the complete indexed source kinetic response with `-J` acting on the free spinor-index full kinetic charge; the new theorem supplies the finite spinor exchange, not the full orbital/fermion-action composition bridge. Original cubic potential, 16 complete Q, closure/domains, physical Hamiltonian rotational symmetry, and positive eigenvalues remain separate open obligations.

## Exact verification

- [BFSS S3L Source Rotation Coefficients #66](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38158248093) **GREEN** for head `03a0d6ebfd33f3292d168b9a56ef275f63879c0d`.
- Source: `SU2BFSSPhysicalDomainS3L5J3SourceSpinorDoubleSumTransportProbe.lean`.
- Qualified theorems:
  - `FCP.BFSSSU2PhysicalDomainS3L5J3.sourceSpinorDoubleSum_reindex`
  - `FCP.BFSSSU2PhysicalDomainS3L5J3.pairedKineticSpinorTerm_reindex`
- CI compiled the actual `.olean`, matched exact `#print axioms` theorem names, and prohibited `sorryAx`. Only `propext`, `Classical.choice`, and `Quot.sound` permitted.
- Source pins: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- FCP `main` remained `cf06212a57db0ceffad74bd78280a8a240856a17`, PR #25 stayed draft and was restored to its stacked S3K base. No upstream PR or merge authorized.

## Accepted content

1. **Algebraic finite exchange on true source operators**: for arbitrary complex coefficient `c γ`, spin-index coefficient `d γ β` and genuine original `SourceEnd` family `F β`,

```
∑γ cγ • (∑β dγβ • Fβ) =
∑β (∑γ cγ * dγβ) • Fβ.
```

2. **Literal source specialization at fixed spatial k and color A**: `cγ = kineticWeight pairedAlgebraData α k A γ = -Complex.I * gamma(k)[α,γ]`; `dγβ = pairedPlaneSpinGenerator(i,j)[β,γ]`; `Fβ = kineticTerm pairedAlgebraData k A β`, using the actual paired fermion action composed with the original coordinate derivative.

This is the finite spinor reindex, not an alternative Fock model.

## Negative knowledge and cache

- [Gate #65](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38157855415) red only because the specialized theorem lacked `open FCP.BFSSSU2PhysicalDomainS3A`, leaving `pairedPlaneSpinGenerator` unresolved; **its generic double-sum theorem was already compiled with allowed axioms**. No mathematical counterexample. Gate #66 added exactly that source namespace and compiled both cleanly.
- Gate #65 saved the immutable `S3L5J1`/`S3L5J2` accepted-object cache after recompiling those GREEN sources. Gate #66 restored it, verified frozen source blobs against Gate #64 `20ccdfb2faa6735cc0b832512083689270583dd3`, checked root theorem import and axiom footprint and skipped the two accepted compilations.
- The earlier pinned source/axiom caches for S3L0–S3L5I3 remained active and source checked.
- S3L5J3 is **not** in the frozen J1/J2 cache yet. It may enter a separately source-pinned accepted cache when economically useful.

## Next mathematical gate

Keep the original source operator hierarchy:

1. Prove a small source identity that distributes `(∑β spinCoefficient • pairedAlgebraData.fermionAction β A).comp coordinateDerivative(k,A)` into a spin-index sum of the named `kineticTerm`, with all `ℂ` coefficients and indices preserved.
2. Apply accepted S3L5J3 spin-index reindex and J1 spatial-index reindex to the separated true source kinetic response.
3. Use accepted J2 exact complex `-i` gamma/J coefficient identity to combine the two contributions, then prove the complete `-J` free-spinor action on `sourceKineticCharge pairedAlgebraData`. Avoid the earlier whole-charge elaboration trap: use named intermediate responses and small source lemmas.
4. Cubic source potential with the original gammaTwo/source structure constants and 1/2 coefficient, and analytic domain/spectral questions, are separate.

The purpose remains independent mathematical truth, not CI success for its own sake.
