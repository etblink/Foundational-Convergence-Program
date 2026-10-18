# BFSS SU(2) S3L3D/E — source orbital/derivative checkpoint 0.1.0

**Status:** S3L3D and S3L3E QUALIFIED in pinned Lean. Combined original 16-charge, closed form, closed Hamiltonian, Spin(9), spectral conclusions OPEN.

**Accepted proof commit:** `f6a4247d8324e9749ec8a9a4ff1f8961b099928f`
**Proof gates:** S3L3D [#24](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38124731915) GREEN; S3L3D/S3L3E [#26](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38125136380) GREEN.
**Pinned environment:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
**Review state:** FCP draft PR #25 stacked on S3K PR #24; no merge, canonical main untouched. Publication in owner fork is parked. Research record: https://doi.org/10.5281/zenodo.23291242.

## What the pinned kernel established

- `FCP.BFSSSU2PhysicalDomainS3L3D.sourceCoordinateDerivative_comp_comm`: the literal upstream source `AlgebraData.coordinateDerivative` endomorphisms commute on the original `SmoothCore 2`, derived from true compactly-supported test-function `ContDiff` and the pinned symmetric second Fréchet derivative theorem, with no separately assumed mixed-partial commutator.
- `FCP.BFSSSU2PhysicalDomainS3L3E.pairedSourceOrbital_comm_derivative`: for distinct spatial i,j, all k and color B, the concrete S3L1 source orbital generator `L_ij = ∑_A (x_i^A ∂_(j,A) - x_j^A ∂_(i,A))` obeys as an equality of endomorphisms on the actual source smooth core:
  ```text
  L_ij ∘ ∂_(k,B) - ∂_(k,B) ∘ L_ij
    = if k = j then ∂_(i,B)
      else if k = i then -∂_(j,B)
      else 0.
  ```
  The proof uses S3L3D mixed derivative commutation and the earlier accepted S3L3B `[∂,x]` operator law; its proof structure was checked against the already-qualified S3L3C `[L,x]` result before qualification.
- The exact `#print axioms` reports were confined to `propext`, `Classical.choice`, and `Quot.sound`. Both gates checked importable `.olean` outputs, rejected `sorryAx` and errors.

Together with accepted S3L3C `[L,x]`, this now verifies the **two elementary source orbital transformation laws**, not merely a pointwise differential identity.

## Failure feedback and improved gate discipline

Three sequential S3L3D reds (#20, #21, #22) arose from a post-`fderiv_clm_apply` elaboration/simplification mismatch, **not** a mathematical counterexample:
- #20 invoked a simplifier that did not match the pinned constant-vector derivative.
- #21 used `rfl` before removing the derivative of the constant vector.
- #22 correctly simplified the constant derivative but left local definitional aliases `vi`/`vj` unresolved.
- A single targeted `simpa only [vi,vj]` closed exactly the compiler-reported residual goal in #24.
- Before S3L3E #26, compare the full proof with accepted S3L3C, check signs and index-swapping obligations, and add `hij.symm` to final case splits; #26 then passed without further repairs.

**Process rule from these gates:** extract exact Lean residual before editing; verify lemma statements against the pinned mathlib source; isolate one proof obligation, preflight against accepted patterns, and run the expensive cache gate only for a specific justified repair. Do not use repeated shotgun tactic guesses; red means feedback about proof elaboration unless a concrete semantic counterexample is established.

## Next scientific gate (not yet authorized or proved by this checkpoint)

Assemble the complete source `AlgebraData.charge α` under **combined orbital + source-defined fermionic spin** generator, using accepted S3B `gamma` vector, S3L2 `gammaTwo` two-form, S3L3C/E bosonic position and derivative laws, and accepted S3E fermionic `theta` covariance. Check:
- all 16 free spinor indices, concrete source Fock `fermionAction` and honest `SmoothCore 2` endomorphisms;
- every kinetic term with factors of `-Complex.I`, every cubic potential term with structure constants and `gammaTwo`, including normalization/signs;
- source gauge compatibility, actual fermionic lift and core preservation, with no invented commuting factors or physical Hilbert-space assumptions.
Only then attempt closure/form-domain invariance and Hamiltonian operator-domain rotation. The positive-point-spectrum argument still has unresolved independent analytic obligations.
