# BFSS SU(2) G4-J — literal six-field GaugeData assembly scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_AND_UNCOMPILED_CANDIDATE`
**Prerequisites:** individually accepted G2-A boson hom/covariance, G2-B boson joint continuity, G4-E fermion unitary hom, G4-H exact 48-theta covariance, G4-I-C2 true fermion joint continuity (Gate #126).

## Single exact endpoint

Construct and compile a declaration whose inferred type is literally

```lean
FCP.BFSSSU2GaugeG1A.pairedAlgebraData.GaugeData
```

for the **pinned** `OAI.BFSSQuantum.AlgebraData.GaugeData` six-field structure, with no new `AlgebraData`, no alternate `GaugeGroup` or `Fermion` type, no axioms and no weakening of the field types. Fill each field using the **already verified** matching provider:

```text
boson             G2-A bosonGauge
fermion           G4-E fermionGaugeUnitaryHom
boson_adjoint     G2-A bosonGauge_adjoint
fermion_adjoint   G4-H pairedAlgebraData_fermion_adjoint
boson_continuous  G2-B bosonGauge_continuous
fermion_continuous G4-I-C2 fermionGauge_jointContinuous
```

Verify definitional equality of the two action fields to accepted providers, and retrieve the literal continuity projection from the constructed structure.

A GREEN run alone is insufficient: verify exact source commit, source+workflow blobs, Lean exit status and `#print axioms` for `pairedGaugeData` and the verification theorems with only `[propext, Classical.choice, Quot.sound]` and never `sorryAx`.

**Excluded:** Hamiltonian spectral theorems, empirical predictions, upstream PRs/issues, publishing, main merges, dependency changes, auto-generated axioms, workaround types.

Submit source, scope and workflow atomically and stop before inspecting the next run; owner reports color.
