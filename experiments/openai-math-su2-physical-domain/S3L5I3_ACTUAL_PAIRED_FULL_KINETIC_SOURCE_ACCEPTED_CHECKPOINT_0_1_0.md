# S3L5I3 — actual paired full BFSS kinetic-source charge covariance checkpoint 0.1.0

**Accepted result:** Full ORIGINAL source kinetic-charge commutator with the genuine SU(2) paired 48-Majorana spin generator is kernel-qualified as an EXACT, indexed weighted-response equality. The corresponding response has NOT yet been contracted to a free-spinor `-J` transformation. Cubic source charge, full 16 supercharges, group/closed physical Hamiltonian rotational symmetry, representation-theoretic confinement and spectral theorem remain OPEN.

## Reproduction and pins

- [BFSS S3L Source Rotation Coefficients #57](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38149367073) SUCCESS at exact theorem/workflow commit `f8adbc49aeb90a78cb06d6a076457434afd109c3`.
- [BFSS SU2 Physical Domain Bridge #266](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38149367126) SUCCESS at the same head.
- Qualified Lean source module: `SU2BFSSPhysicalDomainS3L5I3ActualPairedKineticChargeProbe.lean`.
- Qualified theorem: `FCP.BFSSSU2PhysicalDomainS3L5I3.pairedActualCombined_comm_sourceKineticCharge_response`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Importable compiled `.olean`; exact theorem-name `#print axioms` check; only `propext`, `Classical.choice`, `Quot.sound` are accepted; no `sorryAx`.
- Green at earlier pins: S3L5I2A #55 and S3L5I2B #56.

## Exact source mathematics

Let `L_ij` be the qualified original source orbital `SmoothCore 2` rotation, `K_ij` the source postcomposition of the actual quadratic paired 48-Majorana fermionic generator and `Qkin_α = sourceKineticCharge pairedAlgebraData α` the full original nine-spatial / three-color / sixteen-spinor weighted kinetic expression. Then

```
[L_ij + K_ij, Qkin_α] =
  kineticWeightedResponse pairedAlgebraData
    (fun γ β => ((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ))
    i j α.
```

The RHS is the exact accepted source-defined weighted variation of the original kinetic monomials, retaining the literal `-Complex.I * gamma` coefficients and derivative/orbital signs.

**Crucial improvement over #56:** There is NO undischarged fermionic fiber premise. Gate #57 instantiates the full-charge theorem with the real `pairedAlgebraData`, real `pairedFermionPlaneSpinGenerator`, and discharges `∀ γ A` using the previously qualified S3L4D `pairedActualFockSpin_comm_source_theta`. It does not unfold the giant concrete Fock generator, invent a surrogate operator, or add new axioms.

The S3L0 coefficient theorem `pairedKineticSpinorCoefficient_exact` and S3L5H index-extracted entry are qualified, but they have NOT yet been carried through all source sums to show that the response equals `-∑_β J_ij(α,β) Qkin_β` (sign orientation still to be confirmed against exact source representation).

## Failure-derived method boundary

Gates #51/#53/#54 failed during Lean elaboration/normalization of huge full-charge expressions. They did not exhibit mathematical counterexamples. Gates #55–#57 succeeded by splitting (a) original-weighted named finite-index source terms, (b) exact identification with sourceKineticCharge and (c) actual 48-Majorana specialization. Preserve this method for gamma/J contraction and later cubic term.

## Verified caching and repository boundaries

- Exact accepted S3L3B–S3L5G 13-module cache restored and provenance/axiom-checked in #57.
- Second immutable cache of S3L5H / S3L5I1 / S3L5I2A, source-pinned to qualified `bd6785307c37931a0871b6bba100cd561d2566d7`, saved in #56 and **restored and verified** in #57. Their accepted compilation steps are skipped only with source identity and root axiom checks.
- S3L5I2B and S3L5I3 compiled independently on #57 and are NOT yet in either immutable cache; opportunistic next bundle can include them once frozen.
- FCP canonical `main` is unchanged at `cf06212a57db0ceffad74bd78280a8a240856a17`.
- Draft PR #25 remains on its intended stacked S3K branch; PRs #24/#25 unmerged. No upstream `etblink/math` PR authorized, created, or merged.

## Next scientific obligation

Prove the actual right-hand coefficient contraction using the already-accepted source S3L0 exact gamma/spin entry and finite-sum transport. Separate:
1. spatial orbital variation term into a source derivative-index reindexing lemma;
2. fermionic-spin response into a source spinor-index reindexing lemma;
3. the exact `-Complex.I` scalar coefficient combination into the S3L0 gamma matrix entry;
4. only then combine to `-J` on the full original kinetic charge, using named source summands and avoiding whole-expression elaboration.

Then independently handle the original cubic potential using qualified S3L2, followed by complete supercharge covariance and analytic core/form/Hamiltonian domain preservation. Do not promote this checkpoint to a BFSS positive-energy eigenvalue proof.
