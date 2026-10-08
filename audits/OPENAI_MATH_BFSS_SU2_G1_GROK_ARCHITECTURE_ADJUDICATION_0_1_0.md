# BFSS SU(2) Stage G1 — external Grok architecture review adjudication 0.1.0

**Date:** 2026-10-08
**Verdict:** `PARTIAL_ACCEPT__EXPLICIT_PAIRED_FOCK_REINDEX_PREFERRED__CURRENT_WITNESS_RETAINED__GAUGE_UNPROVED`
**Scope:** Independent review of source-first G0, no change to scientific FCP main or frozen T6.

## Reviewed external packet

The owner supplied a 133-line Grok response to the G1 read-only architecture prompt. The response is an **uncompiled external mathematical/Lean analysis**, not a kernel certificate. It correctly inventories the six fields of the actual pinned `M.GaugeData`, contrasts the explicit color-preserving Fock action against a Spin(48) lift, and recommends constructing a second paired `AlgebraData 2`.

The external reviewer reports inspecting the pinned October 5 manuscript, the BFSS gauge APIs, and FCP Stage F1/F2/F4 sources. This provenance is a self-report; do not claim independent repository SHA verification by the reviewer or Lean compilation of any proposed code. Its report included illustrative `sorry` placeholders explicitly marked UNCOMPILED; they are examples, not authorized proof artifacts. FCP committed gates must not contain those placeholders.

## Independently checked, source-bound facts

1. Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` `lean/OAI/MathematicalPhysics/BFSS/GaugeCore.lean` (blob `e4990dadf1d8bde849e351467282ab3f14989c3b`) defines exactly: `boson`, `fermion`, `boson_adjoint`, `fermion_adjoint`, `boson_continuous`, `fermion_continuous`. An `AlgebraData 2` inhabitant alone cannot discharge these.
2. Pinned manuscript (blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`), lines 85–106 and 701–727, uses the adjoint SU(2) action on each of three color labels, the normalized 48 Majoranas, and complex annihilators built from adjacent spin labels at fixed color. This is essential for its *specific* gauge-invariant vacuum line argument.
3. FCP `SU2FermionF2Probe.lean` (blob `abe847c82da672274ce1852de892b3fcbb348579`) defines `thetaLabelEquiv` via `Fintype.equivFin` and `thetaCandidate α A := majoranaCandidate (thetaLabelEquiv (α,A))`. The existing kernel proofs certify CAR, adjointness and irreducibility for this family but do **not** certify a spin-paired, fixed-color mode formula.
4. Existing `majorana0` and `majorana1` definitions (blobs `dd6881b3394372bbcbb143ba8606916f0206c166`, `abe847c82da672274ce1852de892b3fcbb348579`) use `s=(√2/2 : ℂ)`, `θ₀=s(c†+c)`, `θ₁=s*i(c†-c)`. This means **`c=s*(θ₀+i θ₁)`**. A paired-family annihilator theorem must use the actual `annihilator`, `creator`, `creator_adjoint` and `majorana1_phase` normalization, not assume a convenient phase.
5. FCP `F3C2` / `F4` compile exact `AlgebraData 2` but do not include `GaugeData`, nor a Hamiltonian spectral proof. Gates #82, #83, #85, #86 remain accepted.

## Rulings on Grok's stronger claims

- **Accept:** An explicit `SpinIndex ≃ Fin 8 × Fin 2` and `Fin 8 × ColorIndex 2 ≃ Fin 24` using Mathlib's `finProdFinEquiv` gives the manuscript-compatible pairing. Transporting the proven generic Majorana CAR and theta irreducibility across any bijection is mathematically valid. Keep the verified old witness unchanged; create a second paired `AlgebraData 2`.
- **Qualify:** There is no *verified* theorem asserting the current `thetaLabelEquiv` has the requested color pairing. It is unsound to infer that property from cardinality. However, calling the identity **impossible**, or proving the current inhabitant intrinsically incompatible with the abstract gauge action, exceeds available evidence. It could be examined by unfolding its specific equivalence; it is simply unnecessary to the chosen implementation path.
- **Qualify:** An arbitrary irreducible family of 48 Majoranas should admit an SU(2)-covariant unitary implementer by Clifford equivalence and a lift, but this is a **mathematical existence argument**, not a Lean kernel result or an already provided `GaugeData`. We need not establish such an implementer for the old inhabitant first.
- **Accept as a planning judgment, not theorem:** Explicit Fock second quantization is much more feasible within existing Lean infrastructure than a wholesale Spin(48) lift.
- **Accept and preserve for later:** A particular complex structure facilitating SU(2) gauge covariance may require nontrivial work to obtain simultaneous Spin(9) covariance; gauge compatibility is not yet the rotation-sector/commutation proof. Do not infer the physical spectral theorem from either.

## G1 bounded implementation decision

Submit one **G1-A** compiler gate that:
1. Defines *explicit*, invertible `spinPairEquiv : SpinIndex ≃ Fin 8 × Fin 2` and `colorModeEquiv : Fin 8 × ColorIndex 2 ≃ Fin 24` via `finProdFinEquiv`, and their explicit `pairedLabelEquiv : SpinIndex × ColorIndex 2 ≃ Fin 24 × Fin 2`.
2. Defines `pairedTheta α A := majoranaCandidate (pairedLabelEquiv (α,A))`, **without mutating `thetaCandidate` or `concreteAlgebraData`**.
3. Proves the exact even/odd spin-pair identity `pairedTheta(spinPairEquiv.symm(j,0)) A = majorana0(colorModeEquiv(j,A))` and the corresponding `(j,1)` identity for `majorana1`.
4. Transports the accepted generic Majorana CAR, self-adjointness, and original theta invariant-submodule dichotomy to the new family without new assumptions.
5. Constructs a **second** exact `OAI.BFSSQuantum.AlgebraData 2` by retaining the accepted color/gamma and replacing all theta fields, explicitly bridging the upstream natural-number/complex scalar if needed. Prints axioms of each substantive theorem and the constructed witness.
6. **Defers** the color-factorized annihilator equality and gauge action to G1-B: that equality involves extra phases, adjoints and real-sqrt normalization, and should be proved against the already compiler-verified paired-label API rather than bundled into the first implementation gate. This is a sequencing refinement of Grok's suggested all-in-one G1.

**All G1-A declarations are UNCOMPILED until the new pinned GitHub Lean CI passes.** Failing gates are not mathematical counterexamples; make only focused Lean repairs after reading exact diagnostics. No `sorry`, `admit`, custom axioms, changed source pins, enlarged timeouts or resource allocations, FCP main/upstream mutations, upstream PR, or new scientific T6/K1–K10 effect.

## After G1-A

G1-B: prove `c_j^A = s*(pairedTheta_even + i*pairedTheta_odd)` exactly, including matrix/color pairing and a vacuum-line compatibility theorem; then design explicit SU(2) adjoint second quantization and source-first covariance checks. The genuine `GaugeData` remains open. Do **not** skip representation/covariance/continuity gates.

**Operating principle:** truth-seeking before protocol completion or green-check accumulation.
