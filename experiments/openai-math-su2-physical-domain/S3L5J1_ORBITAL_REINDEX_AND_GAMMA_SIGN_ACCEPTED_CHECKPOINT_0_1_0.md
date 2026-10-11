# S3L5J1 — original spatial reindex and real gamma/J sign 0.1.0

**Status: ACCEPTED.** The source-defined orbital derivative index reindex and real gamma/J spinor coefficient cancellation are kernel-qualified as independent lemmas. Complex `-i` contraction across the full source kinetic sum, final `-J` free-spinor action, cubic potential, full Q, physical Hamiltonian domain, and positive-eigenvalue inference remain OPEN.

## Qualification

- [BFSS S3L Source Rotation Coefficients #59](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38154387126) SUCCESS at exact accepted source/workflow SHA `81d5182c1ada69924fae3e54b735c99f0fde86c6`.
- [Physical Domain Bridge #268](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38154387053) SUCCESS at the same source head.
- Source module: `SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe.lean`.
- Accepted names:
  - `FCP.BFSSSU2PhysicalDomainS3L5J1.sourceOrbitalSpatialSum_reindex`
  - `FCP.BFSSSU2PhysicalDomainS3L5J1.pairedRealKineticCoefficient_reindexed`
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; compiled importable `.olean`, exact theorem-name/axiom whitelist (`propext`, `Classical.choice`, `Quot.sound`) and NO `sorryAx`.

## Genuine mathematics

For distinct spatial indices `i ≠ j`, any source-endomorphism family `D` and complex coefficient `c`, the original orbital derivative variation under a plane rotation reindexes precisely:

```
∑_k c(k) • (if k=j then D(i) else if k=i then -D(j) else 0)
 =
∑_k (if k=i then c(j) else if k=j then -c(i) else 0) • D(k).
```

Applied later with the true source fermion-action and coordinate derivatives, this is the orbital spatial-term coefficient bookkeeping rather than a replacement BFSS dynamics model.

The real Clifford gamma spinor coefficient from S3L0 now has exactly the **reindexed** orbital correction sign:

```
∑_β gamma(k)[α,β] J(i,j)[γ,β] +
 (if k=i then gamma(j)[α,γ]
  else if k=j then -gamma(i)[α,γ] else 0)
 = - ∑_β J(i,j)[α,β] gamma(k)[β,γ].
```

That last line is source-defined real matrix equality; the complex coefficient and the full source endomorphism sum contraction must be separately checked, not claimed by this checkpoint.

## Failure feedback and accepted cache

- [Gate #58](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38153907755) RED: the real coefficient lemma compiled with permitted axioms, but two filtered singleton sums remained unsimplified in the spatial reindex proof. **This was not a mathematical obstruction**. The diagnostic exposed exact goals `∑ x with x = j, c x • D i = c j • D i` and its `i` counterpart.
- Gate #59 repaired ONLY those goals using Mathlib `Finset.filter_eq'`. Both resulting theorems are now independently qualified. No recursion or heartbeat limits were increased.
- Previously accepted S3L3B–S3L5G 13-module cache and S3L5H/I1/I2A 3-module cache were source-checked in #59.
- The new Gate #57 exact-source cache (`bfss-s3l-accepted-i2b-i3-v1-f8adbc49-Linux-X64`) was saved in #58 **after accepted S3L5I2B and I3 independently compiled and passed**, then restored, source-identity checked, root physical theorem imported and axiom-checked in #59. It skips those two modules only on a validated cache hit.

## Next warranted proof gate

Complexify the accepted real gamma/J coefficient and multiply by the literal `-Complex.I`, separately checking the finite spinor-index `-i` algebra. Only after that, contract the full named weighted kinetic response to `-∑_β J(i,j)[α,β] • sourceKineticCharge pairedAlgebraData β` on original SmoothCore 2. The cubic source potential using S3L2 and all analytic Hamiltonian/spectral claims remain separate.

FCP `main` unchanged. PR #25 stacked draft over S3K, PR #24 unmerged. No upstream PR opened.
