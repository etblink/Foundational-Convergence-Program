# BFSS SU2 H5E8BE — original normalized physical Hamiltonian weak-form acceptance

**2026-10-17 PDT / 2026-10-18 02:28 UTC.** Disposition: `PASS__ORIGINAL_AY_BA_BB_BC_BD_H_EQUALS_ONE_SIXTEENTH_TSTAR_T__NATIVE_SELFADJOINT__EXACT_WEAK_FORM__14_AXIOM_CLEAN_ROOTS`.

## Exact provenance

- [Original Normalized Physical Hamiltonian #10](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39088799248), job **117560890484**, successfully completed 2026-10-18 02:28:54 UTC on source/workflow SHA **`184102c5c7f0e8b71fba9ed25ecebf9f6a71b303`**.
- Source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8BEOriginalNormalizedPhysicalHamiltonianProbe.lean`, immutable blob **`bbe48532f9f66a7ef493e051453c00d40642752e`**.
- Exact pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Strict original AY/BA/BB/BC/BD proof recompilation, 20 qualified frozen G4K modules and 22 qualified frozen D1/D2B/D3 Haar modules passed.
- Final H5E8BE step compiled a new `.olean` and audited exactly **14** `#print axioms` reports, all subsets of **`propext`, `Classical.choice`, `Quot.sound`**. No `sorryAx` or Lean `error:`. Log marker: `L6H5E8BE_ORIGINAL_NORMALIZED_SOURCE_HAMILTONIAN_WEAK_FORM_14_ROOTS_KERNEL_PASS`. Nonfatal Lean warnings about automatically included unused section variables in two generic scalar-identity lemmas are not mathematical proof failures; no unproved hypotheses are introduced.

## Exact theorem boundary

For `N=2`, arbitrary *source-admissible* `M : AlgebraData 2` and genuine `G : M.GaugeData`, define the literal AY **original invariant-core minimal closed** physical sixteen-charge map `T` on `G.physicalSpace`. BA proves unconditional domain density, BB constructs genuine native Hilbert adjoint `T†`, BC natural `A=T†T` with symmetry/positivity, BD proves genuine `IsSelfAdjoint A`.

BE now defines `originalMinimalPhysicalNormalizedHamiltonian M G = (1/16:ℂ) • A`, proves the **same natural operator domain**, correct action, `IsSelfAdjoint`, domain density and closed graph. It proves the exact associated-vector characterization
```
(∀ v : Dom(T), ⟪w,v⟫ = (1/16) ⟪Tu,Tv⟫) ↔
  ∃ hu : u ∈ Dom(H), w = H ⟨u,hu⟩.
```
The form is the closed, nonnegative source charge form induced by the closed AY operator, not a guessed formal source differential Hamiltonian. The coefficient is **exactly 1/16**.

**NOT proved:** equality of the distinct historical D2B17/28 Hilbert *operator declarations* (even though both are defined from the original source restricted graph); independent manuscript Cl(48)/Spin(48) module unitary/gauge intertwiner; full Spin(9) sector transfer; positive point spectrum, no-zero-state theorem or BFSS mass gap. In particular, normalized form-associated self-adjointness is not a BFSS spectral-gap solution.

## Controlled next proof

H5E8BF will explicitly co-qualify the **original AY minimal invariant-core closed graph** with D1's accepted true source `G.deformedModelGraph 1 0` identity, and specialize the BE Hamiltonian to the concrete six-field `pairedAlgebraData` / `pairedGaugeData` SU2 Hilbert gauge representation. Source graph equality at (1,0) does NOT assert the false fullClosedGraph = restrictedCoreClosedGraph identity, and the paper's independent abstract realization still requires its own intertwiner/domain proof. Use the existing accepted D1 and G4K2B import chain; no historical deformed-mode operator conflation without an exact typed equality theorem.

**Governance:** PR #25 remains open/draft based on S3K, without merge. Original source gamma/fermions/color and signed conventions, pinned upstream/mathlib and all accepted Lean proof files remain untouched.
