# BFSS SU(2) H5E8BB — original physical Hilbert 16-charge adjoint, Gate #7

**Accepted on 2026-10-17 PDT / 2026-10-18 00:51 UTC.** Status: `PASS__ORIGINAL_SOURCE_PHYSICAL_HILBERT_ADJOINT_FORMAL_PAIRING_CLOSED__5_ROOTS_AXIOM_CLEAN`.

## Immutable evidence

- [BFSS SU2 Original Physical Hilbert Charge Adjoint #7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39081744880), job **117543302774**, run head `078020c5f39478fdb59af5af93018a0e668ca0a7`. Workflow job **success** with the *final* adjoint qualification step **success**.
- Actual source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8BBOriginalPhysicalHilbertChargeAdjointProbe.lean`; exact qualified source blob `51305150567a4e4d70f285a673732cbe657ac338`, original staging commit `6b7c9746f05f3ae0ff6a88d05d4bd3562d68b56e`.
- All original Lean/Mathlib BFSS pins unchanged: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Co-compiled original AY/AZ/BA source chains; the Gate #4 original unconditional dense physical domain qualification remained strict green. Rebuilt 20 exact G4K source modules and 22 exact D1/D2/D3 Haar-density modules, both with strict permitted-axiom audits.
- Actual final gate emitted `#print axioms` for **five exact roots** in `FCP.BFSSSU2PhysicalDomainL6H5E8BB`: `originalPhysicalHilbertComplete`, `originalMinimalPhysicalHilbertChargeAdjoint`, `originalMinimalPhysicalHilbertChargeAdjoint_isFormalAdjoint`, `originalMinimalPhysicalHilbertChargeAdjoint_isClosed`, `originalMinimalPhysicalHilbertChargeAdjoint_inner`.
- All five printed only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`, Lean `error:` or `unknownIdentifier`. Final exact marker: `L6H5E8BB_ORIGINAL_PHYSICAL_HILBERT_CHARGE_ADJOINT_FIVE_ROOTS_KERNEL_PASS`.
- Proof artifacts are retained under [Gate #7](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39081744880).

## Mathematical scope

For the **actual source original**, unbounded, closed and now unconditionally densely-defined
`T = originalMinimalPhysicalHilbertChargeColumn M G :
G.physicalSpace →ₗ.[ℂ] PiLp 2 (fun _ : SpinIndex => FullL2 2)`,
BB defines the **genuine Mathlib Hilbert adjoint** `T†`, proves the adjoint's Hilbert pairing on both natural domains and proves the adjoint graph is closed. The input is exactly the original gauge-invariant physical Hilbert subspace with its own completeness, NOT ambient FullL2. No surrogate Fock/gamma structure, alternative gauge action or deformed `G.deformedModelGraph 1 0` replacement is assumed.

**Not accepted by this gate:** density of `Dom(T†)` (not separately audited), the natural-domain product `T†T` or its positivity/self-adjointness, exact `(1/16)` associated Hamiltonian, equality with historical D2B28 on exact domains, abstract manuscript Cl(48)/Spin(48) intertwiner, Spin(9) isotypic reduction, positive eigenvalues or a mass gap. In particular, **formal-adjoint identity and closedness alone do not establish a Hamiltonian**.

## Next controlled proof step

Stage H5E8BC natural-domain `T†T`: use the already accepted abstract mathematics of old D2B18/D2B19 **without importing their historically separate deformed-source objects**, and qualify the *literal AY/BB operators* on their exact natural graph. Never use full-domain `LinearPMap.comp` without the generally false `T(Dom T)⊆Dom T†` hypothesis. Preserve source h=1, m=0, original gamma/fermions and all sixteen output values. Prove exact product domain and on-domain action; establish symmetric/positive energy, then separately prove source-original self-adjointness.

**Governance:** draft PR #25 open/unmerged, original S3K base; no main/upstream merge or original accepted source edits. Expensive dependency reconstruction shall be qualified, not silently assumed from a different CI cache scope.
