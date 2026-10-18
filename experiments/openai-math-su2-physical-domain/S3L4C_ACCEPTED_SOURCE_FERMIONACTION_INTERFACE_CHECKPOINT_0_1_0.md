# BFSS SU(2) S3L4C — exact original fermionAction source interface (accepted)

**Accepted scope:** Source-parametric `AlgebraData 2` on the original `SmoothCore 2`. **Unaccepted:** concrete quadratic 48-Majorana instantiation S3L4A, full supercharge covariance, closed physical Hamiltonian, spectral claims.

- Qualified source commit: `02b83aa4aa09de89f223a7a56795b3f24e46a293`.
- Pinned Lean gate **#33 GREEN**: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38128416965 .
- Environment: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Previously accepted S3L4B #32: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38127827229 .

Four theorems in `SU2BFSSPhysicalDomainS3L4CSourceAlgebraDataFermionActionInterfaceProbe.lean` are compiled and axiom checked:

1. `sourceFermionAction_eq_postcomp`: literally `M.fermionAction γ C = sourcePostcomp (M.theta γ C)`, for arbitrary source `M : AlgebraData 2`. Definitional `rfl` from original `Core.lean` field.
2. `sourceFermionAction_covariance_of_fiber`: if `K` satisfies a **separately proved** spinor-indexed commutator identity with the *actual source* `M.theta`, then the genuine source `M.fermionAction` has the same induced commutator after postcomposition.
3. `sourceFermionAction_comm_position`: original source `fermionAction` commutes with original bosonic coordinate multiplication.
4. `sourceFermionAction_comm_derivative`: original source `fermionAction` commutes with original coordinate derivatives.

All four `#print axioms` outputs contain only `propext`, `Classical.choice`, `Quot.sound`. The gate compiled the importable `.olean` without `sorryAx`.

**Next gate, narrow:** S3L4D should instantiate `M := pairedAlgebraData`, `K := pairedFermionPlaneSpinGenerator i j`. Prove the concrete fiber premise with qualified `FCP.BFSSSU2PhysicalDomainS3E.pairedFermionPlaneSpinGenerator_comm_theta` and the separately qualified small source identity `FCP.BFSSSU2GaugeG1A.pairedAlgebraData_theta`. Use direct application of the accepted S3L4C theorem to the literal source `pairedAlgebraData.fermionAction` rather than `change` or `simp` over the enormous 48-Majorana expression. Do not re-enable the unqualified S3L4A module.

Provenance and review: Evan T. Kotler; https://doi.org/10.5281/zenodo.23291242. No merge, no upstream PR. Keep the fork publication effort parked.
