# S3L5J2 — complex gamma and original -i source coefficient 0.1.0

**Accepted, source-scoped.** The exact real gamma/J coefficient established by S3L5J1 #59 has been transported into complex scalars and multiplied by the **literal original -Complex.I** factor. This is the needed coefficient input for the full kinetic charge, not yet the full operator-level coefficient contraction.

## Exact qualification

- [S3L Source Rotation Coefficients #64](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38156644133): **GREEN** at FCP SHA `20ccdfb2faa6735cc0b832512083689270583dd3`.
- Source module `SU2BFSSPhysicalDomainS3L5J2ComplexGammaCoefficientProbe.lean`.
- Compiled `.olean` and exact theorem-name `#print axioms` gate, permitted only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`.
- New qualified names: `FCP.BFSSSU2PhysicalDomainS3L5J2.pairedComplexKineticCoefficient_reindexed` and `FCP.BFSSSU2PhysicalDomainS3L5J2.pairedMinusI_KineticCoefficient_reindexed`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- The accepted S3L3B–S3L5G, S3L5H/I1/I2A, and S3L5I2B/I3 cache layers restored and passed exact source/axiom verification.

## Mathematics and boundaries

The exact source `Cl(9)` gamma/spinor matrices satisfy the complexified reindexed identity for every distinct i,j, spatial k, spinor α and γ:

```
∑β gamma(k)[α,β] * J(i,j)[γ,β] + orbitalCorrection(k)[α,γ]
 = -∑β J(i,j)[α,β] * gamma(k)[β,γ].
```

Here all operands lie in `ℂ`; the orbital correction has the source spatial sign, and its real-valued `if` case expression is cast in full to complex. The second theorem multiplies **both sides** by the actual `-Complex.I`, preserving coefficient sign and order without a new physics assumption.

The full 9×3×16 source response `kineticWeightedResponse` is already genuine and established against the actual paired 48-Majorana generator in S3L5I3 Gate #57. It still must be identified with the free-spinor transform of `sourceKineticCharge`. Finite spin reindex, spatial/color operator composition, and final coefficient grouping are not established in this gate. Cubic potential, full supercharges, Hamiltonian domain and spectrum are open.

## Failure feedback

Gates #60–#63 were RED only in the complexification lemma; exact errors isolated transport of the cast through a nested orbital conditional. Gate #64 split the spatial `k = i` and `k = j` cases and discharged the reverse inequality `j ≠ i` using `Ne.symm hij`. The original theorem statement was preserved. These were proof elaboration/simplification failures, not failures of the underlying gamma identities. No extra axioms or compiler limits were introduced.

**Next:** preserve exact accepted J1/J2 modules in a source-pinned `.olean` cache opportunistically; isolate the original source spinor double-sum reindexing before trying the final kinetic-operator contraction. FCP `main` unchanged; PRs #24/#25 draft/unmerged; PR #25 on S3K base; upstream PR remains unauthorized.
