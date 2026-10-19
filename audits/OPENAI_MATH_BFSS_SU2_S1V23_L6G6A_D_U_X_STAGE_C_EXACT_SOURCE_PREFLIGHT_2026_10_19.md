# BFSS S1V23 — historical source curve Stage C preflight, no CI dispatched

**October 19, 2026 PDT.** **Status:** `8_ACTUAL_SOURCE_MODULES_35_ROOTS_PINNED__S1V23_THREE_ROOTS_STAGED_UNCOMPILED__STAGE_B_PENDING`.

## Complete source-exact Stage C manifest

The eight historical original Lean modules are located in `experiments/openai-math-su2-physical-domain/`, with the below unchanged Git SHA1 blobs. Their source `#print axioms` declarations and import DAG were read from the active isolated branch and are the *actual* module graph for the original `L6G6X.sourcePlusIGaugeCurve` declaration.

| Original source suffix (file `SU2BFSSPhysicalDomain<SUFFIX>Probe.lean`) | SHA1 blob | Printed roots |
|---|---|---:|
| `L6G6AOriginalFermionicResponsePointwise` | `f1ac38ca25c177c6147a24217f279ac53d185d7a` | 3 |
| `L6G6BOriginalFermionicFierzColorContraction` | `c70eb79c72b23e83bb74db30c3e17d2ef015bec8` | 3 |
| `L6G6COriginalFermionResponseKroneckerSelector` | `e6174f3f6f5d4dd38d3de5c575192953b491be08` | 3 |
| `L6G6DOriginalFermionResponseSymmetricLegs` | `7bd088faad5c678063b56678285c6ed3be7d382c` | 7 |
| `L6G6UOriginalAdjointColorTangent` | `712585ea481a41d2bd02384444a4690e798d89c4` | 5 |
| `L6G6VOriginalPlusIConjugationDerivative` | `eca3be7fef1c5844b0713284a64befcec0a749f1` | 4 |
| `L6G6WAmbientAdjointCoefficientDerivative` | `5f73e148a9c4b2abf6afb7d6204271ec12b00f4f` | 2 |
| `L6G6XOriginalSU2GaugeCurve` | `b4aff5ae8e55e506d6850765ec661d777b63a58e` | 8 |
**Total: 8 historical source modules, 35 axiom reports.**

- Imports: A imports accepted L6G5W; B imports A; C imports B; D imports C; U imports D and accepted G3C; V imports U and original `OAI.MathematicalPhysics.BFSS.GaugeGeometry`; W imports V; X imports W.
- **Important private roots:** The original L6G6X source explicitly prints `matrixTwoForm_mul_neg` and `matrixTwoForm_adjugate`, elaborated as generated `_private.SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe.<index>.FCP.BFSSSU2PhysicalDomainL6G6X.<name>`, as required by the historically accepted original workflow. Audit each with exactly one anchored private name and allowed axioms.
- All other 33 printed L6G6 roots are local ordinary declarations; all must be checked for `[propext, Classical.choice, Quot.sound]` with no unexpected roots, `sorryAx` or compiler `error:`. If the pinned source prints an external dotted name, match it literally (Stage A negative knowledge).

## Independent final S1V23 candidate (NOT accepted)

`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V23OriginalPlusICurveNativeQuarterBridgeProbe.lean` was staged at commit `314c4cb2e5f084ae5e1da209cb1cda00d3d8f009` with three roots:
1. `original_sourcePlusIGaugeCurve_z_matrix_eq (t)`: actual original L6G6X source-curve underlying matrix equals accepted G4M `NormedSpace.exp` for original paired Pauli-z, proposed by definitional `rfl`.
2. `original_sourcePlusIGaugeCurve_quarter_eq_actualGauge`: historical positive-i source curve at `(π/2)√2` equals G4L's accepted genuine SU(2) group element by `Subtype.ext`.
3. `original_sourcePlusIGaugeCurve_quarter_fermion_theta_sign`: exact original G4J fermionic paired-theta sign rule transported onto the historical L6G6X source curve.

## Stage C dependency and go/no-go gate

Dispatch a new source-hash and axiom-pinned Stage C strict workflow **only after** Stage B `L6G5I–W` completes green with actual saved key `bfss-s1v23-isolated-l6g5w-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Stage B launch [#39316851640](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39316851640). Restore the exact key with `cache-hit == true` and require `L6G5W.olean` plus the prior accepted G4M/G3C modules. Build immutable original `GaugeGeometry` if missing. Compile A–D, U–X in order, validate 35 roots. **Then** compile the S1V23 final historical source-curve bridge and strictly audit its three roots. The S1V23 source SHA should be pinned to a live exact blob from `fetch_file` before any workflow is written.

Historical L6G6E–T, L6G7 and Euler modules are not direct import prerequisites for the curve definition. Do not pay their dependency costs gratuitously. If Stage B/Stage C fail, preserve first causal Lean error and do not claim source-curve identification.

**Scientific ceiling:** even successful Stage C (38 new checked roots) would close the real historical positive-i source quarter matrix/group identity and its 48-field fermionic covariance in the original OAI `GaugeData`. It does NOT prove independent manuscript Spin48 representation equivalence, Hilbert intertwiner, analytic domain matching or BFSS mass gap. PR #25, main and pinned original etblink/math remain unchanged.
