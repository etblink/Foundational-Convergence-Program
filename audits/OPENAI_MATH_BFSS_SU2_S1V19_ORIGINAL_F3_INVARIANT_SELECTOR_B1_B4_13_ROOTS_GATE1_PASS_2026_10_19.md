# BFSS SU(2) S1V19 — ORIGINAL F3 invariant/recovery and occupation selectors B1–B4 ACCEPTED

**Date:** October 19, 2026 PDT.  
**Final strict CI:** [Original F3 Invariant And Selectors Strict Gate #1 / run #39285628113 — GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39285628113), job `118170611851`.  
**Exact accepted workflow checkout:** `00e3038f1d42abfc2e748608ad3a8fd339c40ec8`.  
**Pinned independent original project:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Accepted compiled-source cache confirmed saved:** `bfss-s1v19-isolated-f3b4-selector-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Exact mathematical roots

The gate restored the prior **accepted ORIGINAL** F2B2 Majorana CAR/theta cache, kept the original source file provenance pins, then compiled six actual F3 source files and verified thirteen exact `#print axioms` declarations. Each reported only `[propext, Classical.choice, Quot.sound]` and generated a fresh, nonempty `.olean`. All six original files have no `sorry` declarations; the strict job passed its `sorryAx`/Lean compiler error checks.

| Exact original source | Accepted Git blob | Accepted roots |
|---|---|---|
| `SU2FermionF3InvariantProbe` | `5d79bd350ba92e7485153bc36aaeca45489074a2` | `thetaInvariant_majoranaCandidate`, `thetaInvariant_iff_majoranaCandidate`, `thetaInvariant_majoranaComponents` |
| `SU2FermionF3RecoveryProbe` | `2aa2f625d43bffc8c1aa123dcd0edd73802ff42e` | `thetaInvariant_creator_annihilator` |
| `SU2FermionF3B1OccupationProbe` | `5f7c472a158095da14b6ba73baebaa45356dda31` | `thetaInvariant_occupiedMode`, `thetaInvariant_vacantMode` |
| `SU2FermionF3B2BasisActionProbe` | `b71912cfbc2a1a9b0e9a7a567da486dbcc85d172` | `occupiedMode_as_fockNumber`, `occupiedMode_occupationKet`, `vacantMode_occupationKet` |
| `SU2FermionF3B3ProjectorProbe` | `c46623c1a507b2a2340b403cc7b0641af7298742` | `occupiedMode_idempotent`, `occupiedMode_mul_comm` |
| `SU2FermionF3B4SelectorProbe` | `6528da46419671b6fc2ea98b842d22315dab89fb` | `selectorSeq_occupationKet`, `occupationSelector_occupationKet` |

The strict log's actual (not merely script-echoed) terminal output:

```
SU2FermionF3InvariantProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 3
SU2FermionF3RecoveryProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 1
SU2FermionF3B1OccupationProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 2
SU2FermionF3B2BasisActionProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 3
SU2FermionF3B3ProjectorProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 2
SU2FermionF3B4SelectorProbe ORIGINAL_F3B4_AXIOM_CLEAN_PASS 2
ORIGINAL_FOCK_F3_INVARIANT_RECOVERY_B1_B4_13_ROOTS_KERNEL_PASS
Cache saved with key: bfss-s1v19-isolated-f3b4-selector-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

No mathematical negative knowledge occurred in this gate. Historical earlier unrelated occupationExpansion proof failures are **NOT** attributed to F3B4 and are not erased.

## Next falsifiable gate, bounded and isolated

[Original F3B5–F3B6 Occupation Expansion and Ket Gate #39288103400](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39288103400) is deliberately scoped to the next two **unchanged original files**, with strict source hashes and a fail-closed restore of the exact accepted F3B4 cache:

- `SU2FermionF3B5CoordinateProbe.lean`, Git blob `594b8f2b95b190d6e0084f04094120c05ac140a6`: `occupationExpansion`, `occupationSelector_apply`.
- `SU2FermionF3B6NonzeroKetProbe.lean`, Git blob `7065e9c7ab30c3be2c1fb0358e2912a0e716244b`: `thetaInvariant_occupationSelector`, `exists_nonzero_occupationCoeff`, `thetaInvariant_contains_occupationKet`.

Five original roots are checked, with a bounded Lean compile duration and a new pinned cache only on total success. **This gate remains UNQUALIFIED until CI completion and its actual axiom/compiled artifact evidence.**

The next original F3B7–B9 and C1–C2 closure, paired G1A data, original S1G quarter source, original S1V19/S1V20 typed matrix equality, and continuous SU2→Spin48 lift remain OPEN. Prior axiom-clean S1V21 proves only the real upstream `adjointCoefficient` *under explicit color/matrix hypotheses*. No new physical Hamiltonian or spectral theorem follows from this Fock algebra proof.

## Repository and CI governance

All writes occurred on isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. The active PR25 branch and main were not edited, no merge was made, and no broad historical PR workflow was dispatched. Preserve exact source toolchain/Mathlib pins, genuine original Fock algebra namespace and all negative compiler diagnostics.
