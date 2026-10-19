# BFSS S1V19 original Fock CAR base — strict first-four-source roots ACCEPTED

**Research date:** 2026-10-19 PDT.  
**Strict exact-original gate:** [#39277892786 — GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39277892786), job `118146683435`, checkout commit `367fc732ee0dfb31b1ebb87c77e9b8d9c524b09f`.  
**Pinned original independent project:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## What is actually accepted

The pipeline restored the strictly qualified original OAI CovariantFields cache, compiled original `OAI.MathematicalPhysics.ContinuumCoulomb.ManyBody.FockNorm` and its transitive OAI imports, and then compiled the ACTUAL source Fock chain using fresh nonempty Lean artifacts:

| Exact original source module | Immutable Git blob | Exact qualified axioms-root count |
|---|---|---:|
| `SU2FermionFockProbe.lean` | `dd6881b3394372bbcbb143ba8606916f0206c166` | 5 |
| `SU2FermionF2Probe.lean` | `abe847c82da672274ce1852de892b3fcbb348579` | 6 |
| `SU2FermionF2BProbe.lean` | `b8218829e576c3c94800dffaeeb74f1211a9740c` | 1 |
| `SU2FermionF2B2Probe.lean` | `128ee450affa00167ceb38011f407349323ff0dd` | 1 |

The accepted roots include original 24-mode Fock unitary transport, creator/annihilator CAR, the original Majorana complement and its self-adjointness, initial `thetaLabelEquiv`, and the real-real source CAR. The strict gate audited **all thirteen** corresponding `#print axioms` results, allowing ONLY `[propext,Classical.choice,Quot.sound]`, zero `sorryAx` and no Lean errors.

The GitHub job reported:

```
ORIGINAL_FOCKNORM_TRANSITIVE_IMPORTS_BUILT
SU2FermionFockProbe PINNED_SOURCE_FOCK_AXIOM_CLEAN_PASS 5
SU2FermionF2Probe PINNED_SOURCE_FOCK_AXIOM_CLEAN_PASS 6
SU2FermionF2BProbe PINNED_SOURCE_FOCK_AXIOM_CLEAN_PASS 1
SU2FermionF2B2Probe PINNED_SOURCE_FOCK_AXIOM_CLEAN_PASS 1
ORIGINAL_FOCK_F1_F2_F2B_F2B2_TOTAL_13_AXIOM_ROOTS_KERNEL_PASS
Cache saved with key: bfss-s1v19-isolated-fock-base-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

The new reusable cache contains exact OAI `.olean` modules and original `SU2Fermion*.olean` roots. This resolves another authentic original-import prerequisite, not a surrogate substitute. It DOES NOT itself show full F2B2 mixed CAR, original F3 irreducibility, original G1A/S1G source quarter matrix, or any physical/spectral conclusion.

## Next gates started separately, without broad PR25 workflows

1. [F2B2 complete CAR gate #39281928744](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39281928744), exact six original source modules `Imag→Mixed→MixedDiag→MixedAll→Indexed→Theta`, one axiom root each, with fail-closed restore of this accepted Fock-base cache. **Not accepted until this gate finishes and six roots pass.**
2. [Original upstream conditional trace gate S1V21 #39282242004](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39282242004) independently compiles original `SU2ColorCrossProbe`, the qualified standalone S1V0–S1V12 source positive-i quarter action and **actual OAI GaugeCore.adjointCoefficient**. It audits three roots of a theorem with VISIBLE hypotheses that the original AlgebraData.color equals normalized Pauli and the original SU2 matrix equals the pinned positive-i quarter. It does NOT import G1A/S1G to discharge those hypotheses, and it does not independently construct a global SU2→Spin48 homomorphism.

## Governance and truth boundary

The original S1V19 and S1V20 proposed *unconditional* typed original SU2 quarter coefficient and 48×48 matrix equality remain UNCOMPILED. A conditional upstream S1V21 theorem, even if later accepted, will not prove those premises hold of the original `pairedAlgebraData` until source G1A/S1G imports are compiled and audited. Separate physical Hamiltonian, Spin9 sector, manuscript positive eigenvalue, and BFSS mass gap claims remain OPEN. No modifications or merge into active PR25 or `main`.
