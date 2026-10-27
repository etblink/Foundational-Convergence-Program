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
