# FCP BFSS — S4B35 fast-leaf first trial and import closure

## Precise observed Gate S4B35 #1 result

[CI run #40465724708](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40465724708) on source/workflow commit `7bbcad10952eb90f824e137cf4f0a36a63da2c16`, job `122060530290`, concluded **failure** (5m 16s). All immutable-source/source-SHA preflight, accepted checkpoint producer attestation, Lean/Mathlib restoration, old G4K9C cache restore, newly qualified S4B34 parent-cache restore, and strict native accepted-parent import test passed.

First actual candidate compiler failure, *before elaboration of the candidate theorems*:

```
SU2BFSSPhysicalDomainS4B35PairedSourceSmoothCoreEnergyProbe.lean:1:0:
error: unknown module prefix 'SU2BFSSConcretePotentialProbe'
FCP_BFSS_S4B35_COMPILER_EXIT 1 REPORTS [] WARNINGS []
```

The S4B35 source had an extra `import SU2BFSSConcretePotentialProbe`, whose `.olean` was not part of the 58 admitted accepted Gate122 binaries. Importing it without separately compiling its original source was an unqualified ancestry request; **this is a procedural/import-closure red, not a counterexample**, and produces **zero** new roots (S4 remains at 59). Original log and diagnostic artifact were preserved (artifact 12716334589).

### Source-grounded repair hypothesis

The required `FCP.BFSSSU2.deformedBosonicPotential_one_zero_eq_wedge` is originally defined and qualified within `SU2ColorCrossProbe`, which is in the existing qualified ancestry through `SU2BFSSG1APairedThetaProbe` / `SU2BFSSFullAlgebraDataProbe`, already imported transitively by the first `SU2BFSSPhysicalDomainS4B34ConcretePauliPairedManuscriptBProbe` import. `SU2BFSSConcretePotentialProbe` exports a specialized `concreteAlgebraData` potential statement, but no declaration from that module appears in either S4B35 proof. Removing that extra import should restore import closure **without inventing a fake theorem, adding an unqualified source module, or modifying any accepted prior source**. This is a testable hypothesis, not a new strict acceptance.

Next candidate removes only `import SU2BFSSConcretePotentialProbe`; the exact two public theorem statements and both proof terms remain byte-identical. Old candidate blob `c9d7c5bea1b54e3a8d61c6ec3dcbf9759aa97d8e`; new blob `77a1a79f12a7cfdf68f47b6a2420633c1958731f`. The strict workflow's two exact candidate SHA pins are updated atomically in the same commit. No toolchain, original source, cache policy or theorem/axiom whitelist changes. If the next CI fails at theorem elaboration, inspect the exact first compiler error and do not classify as import-closure.

### Successful infrastructure finding

The actual checkpoint was separately accepted [run #40464747798](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40464747798) with 58 original artifact binaries, imported source roots and strict kernel consumer. S4B35 was able to restore the cache and verify genuine accepted imports on this first live consumer attempt. Its ~5m setup/restore before candidate failure is an observed performance result; the hoped-for proof-runtime reduction must be assessed only after a fully checked theorem gate. The closed original Hamiltonian/operator-domain/spectral target remains open.

## Gate #2 run 40466480310 — strict acceptance of both S4B35 roots

**VERIFIED GREEN — TWO ORIGINAL-SOURCE ROOTS ACCEPTED, +2 to S4 cumulative 61.** Completed [GitHub Actions run 40466480310](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40466480310), attempt 1, original head `a5fcb556ca73e9264931d5ce63f96c802363efc1`, job `122063005201`, wall-clock **4m 34s** (started 2026-10-27T07:19:59Z, updated 07:24:33Z UTC). Candidate original Git blob **`77a1a79f12a7cfdf68f47b6a2420633c1958731f`**, source path `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B35PairedSourceSmoothCoreEnergyProbe.lean`. Gate #1 failed on a redundant uncompiled import; Gate #2 removed only that import, leaving proof and theorem bodies unchanged.

The strict log confirms preflight exact two names and source hashes, successfully qualified independent Gate122 cache producer run `40464747798`, original G4K9C cache restoration, strict S4B34 accepted source-cache restoration, and newly compiled original-leaf source with a fresh nonempty `.olean`. Decisive original compiler report:

```
FCP_BFSS_S4B35_COMPILER_EXIT 0 REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B35.pairedBosonicPotential_eq_wedge',
  'propext, Classical.choice, Quot.sound'),
 ('FCP.BFSSSU2PhysicalDomainS4B35.pairedOriginalSmoothCoreEnergy_eq_manuscript',
  'propext, Classical.choice, Quot.sound')
] WARNINGS []
FCP_BFSS_S4B35_PAIRED_SMOOTH_CORE_TWO_ROOTS_STRICT_PASS
```

**Scope:** (1) Real `pairedAlgebraData.deformedBosonicPotential 1 0 x` equals the positively oriented normalized Pauli sum of squared color minors; (2) for `f : SmoothCore 2`, frozen upstream source `pairedAlgebraData.averaged_core_energy 1 0 f`, accepted B(x) field identity and Pauli potential yield the literal `(1/16)∑α‖deformedCoreCharge α f‖²` expression as kinetic derivative square plus the integral of the true Pauli bosonic potential and the genuine real-restricted paired manuscript B(x) Fock-field expectation. No closed physical Hilbert operator, coercivity at infinity, compact resolvent or positive normalizable eigenstate is established.

**Runtime:** last full Gate122 run 40461814814 18m 50s; first successful S4B35 cached-leaf run **4m 34s**, observed **75.75%** shorter wall-clock and approximately 4.12× throughput for this different proof task. First red cached-leaf run took 5m 16s including setup and missing-module failure. This is not a controlled benchmark of equal theorem workloads; tooling and source/data integrity still matter more than speed.

### Post-acceptance cache-key defect — label corrected without changing theorem

The newly compiled S4B35 leaf was saved successfully in the accepted run but named using the **stale pre-repair candidate** prefix `c9d7c5bea1b5`. This is an infrastructure provenance-label defect, NOT a Lean failure or a defect in the accepted theorem statement/proof, whose actual blob is `77a1a79f12a7cfdf68f47b6a2420633c1958731f`. Do **not** use the old misnamed leaf cache in new research gates. The separate qualified S4B34 ancestry cache is unaffected. This follow-on workflow-only source-binding repair changes the leaf `actions/cache/save` key to `bfss-fcp-s4b35-paired-source-energy-77a1a79f12a7cfdf68f47b6a2420633c1958731f-v2-adc7f124-lean4341-d13f23b-${{ runner.os }}-${{ runner.arch }}`, and asks the normal strict workflow to rerun unchanged Lean mathematics to save the correctly named artifact. Do not count the same two roots again if it succeeds. The historical run and erroneous cache key remain audit-visible for reproducibility.

## Gate #3 run 40467255128 — source-bound cache-key qualification

**VERIFIED GREEN — infrastructure/provenance acceptance, +0 scientific roots.**

- [GitHub Actions run 40467255128](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40467255128), job `122065556443`, attempt 1, commit `1adbd547213c2e0c2d631ebe720fed07376154f3`, completed `success`. Started **2026-10-27T07:27:45Z**, completed **07:32:44Z** (4m 59s wall clock).
- Source proofs and original source blob **unchanged** from Gate #2: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B35PairedSourceSmoothCoreEnergyProbe.lean`, Git SHA `77a1a79f12a7cfdf68f47b6a2420633c1958731f`; source revisions `etblink/math@adc7f124...`, Lean **4.34.1**, Mathlib `d13f23b...` unchanged. Only workflow-cache label changed.
- All exact source/pins, independent accepted S4B34 cache producer attestation, historical G4K9C cache restoration, independently qualified combined S4B34 original Pauli/Fock cache restoration, and fresh native accepted-parent import passed.
- Strict candidate log: `FCP_BFSS_S4B35_COMPILER_EXIT 0`; precisely `FCP.BFSSSU2PhysicalDomainS4B35.pairedBosonicPotential_eq_wedge` and `FCP.BFSSSU2PhysicalDomainS4B35.pairedOriginalSmoothCoreEnergy_eq_manuscript`, each only `propext`, `Classical.choice`, `Quot.sound`; `WARNINGS []`; `FCP_BFSS_S4B35_PAIRED_SMOOTH_CORE_TWO_ROOTS_STRICT_PASS`.
- Original Actions log explicitly states the **corrected cache has been saved**:

```
Cache saved with key:
bfss-fcp-s4b35-paired-source-energy-77a1a79f12a7cfdf68f47b6a2420633c1958731f-v2-adc7f124-lean4341-d13f23b-Linux-X64
```

The earlier `c9d7c5bea1b5` leaf cache is an **invalid provenance label** for the accepted source and must not be reused; the new exact-blob key is the sole qualified S4B35 leaf cache from this sequence. Gate #3 repeats both already accepted roots, **not two new discoveries**; cumulative S4 strictly accepted remains **61**.

**Observed speed:** full Gate122 18m 50s; strictly green cached leaf Gate #2 4m 34s; correctly keyed cache qualification Gate #3 4m 59s. Distinct proof workloads prohibit claiming an exact controlled speedup, but repeated 4–5 minute compiled-leaf success validates the architecture's operational advantage.

**Research boundary:** the two genuine source-derived original smooth-core equalities are accepted. Physical invariant-space closed quadratic-form/domain identification, essential self-adjointness, compactness, and positive normalizable eigenstates are NOT accepted or implied. Next bound should inspect the available source-defined physical projection and closure/domain machinery and identify the *first* exact missing statement before proving a new leaf.
