# BFSS SU(2) S3L5C — qualified source orbital/fermionAction commutation

**Status: S3L5C QUALIFIED at #43. Full kinetic sum, cubic charge and physical spectrum OPEN.**

Qualified source commit: `ac44636f7ac3aedb0a304eab21deda29cbe74f14`. Exact pinned Lean gate [#43 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38131762058). Gate compiled `.olean`, checked two source-level theorem names and `#print axioms`, allowed only `propext`, `Classical.choice`, `Quot.sound`, and explicitly rejected `sorryAx`.

Environment: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exactly established

1. `FCP.BFSSSU2PhysicalDomainS3L5C.sourcePostcomp_comm_orbital`: every bounded original-Fock fiber operator `K` acting on *the original source* `SmoothCore 2` by pinned `TestFunction.postcompCLM` commutes with the actual S3L1 orbital generator `pairedSourceOrbitalPlaneGenerator i j`. The proof explicitly uses the green S3L4B `[postcomp K, position]` and `[postcomp K, coordinateDerivative]` equalities and the exact sum over the original SU(2) color indices.
2. `FCP.BFSSSU2PhysicalDomainS3L5C.sourceOrbital_comm_fermionAction`: for **any actual source** `M : AlgebraData 2`, spinor `γ` and color `C`, the exact `M.fermionAction γ C` commutes with the S3L1 orbital generator, as operators on `SmoothCore 2`. This is derived from the accepted S3L4C definitional equality between `M.fermionAction` and source postcomposition. No newly assumed commutation law or replacement Hilbert space.

Together with green S3L3E original `[L,coordinateDerivative]` and S3L5B actual Fock spin kinetic-monomial action, the source orbital contribution to each kinetic monomial can now be proved by a *small* operator-product lemma. This is the next bounded stage; do not expand the original nested charge sums or concrete 48-Majorana matrices yet.

## Research and review discipline

Earlier FCP S3L5A gate #39 timed out on direct `M.charge` normalization of a huge nested sum and gate #40 had a CI checker name mismatch. Do not repeat either. Use parametric operator equalities first; instantiate into the literal paired source only after independent green checks. Preserve `#print axioms` and exact source pins.

PR #25 remains draft on S3K PR #24; the temporary isolated S3L5C bridge skip was restored after #43. FCP `main` was never modified. Owner fork `etblink/math` is parked with 130 staged modules, not externally submitted or merged.

Independent research contributor: Evan T. Kotler. DOI https://doi.org/10.5281/zenodo.23291242.
