# BFSS SU(2) L6H5E8AF — actual original smooth-core spatial parity acceptance (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ACTUAL_ORIGINAL_TESTFUNCTION_PARITY_INVOLUTION__SIX_KERNEL_AXIOM_CLEAN_ROOTS`.  
**Boundary:** On actual source `SmoothCore N` only, not a source `FullL2` unitary, physical gauge-space action, derivative intertwiner, sixteen-charge graph closure, normalized associated Hamiltonian operator domain, separate manuscript `Spin(48)` unitary identification, Spin(9) argument, positive eigenvalues or mass gap.

## Exact strict qualification evidence

- [BFSS SU2 Original Smooth Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031747595): run `39031747595`, head SHA `4b2f16c9e059878b582b0a4a517d5e92b1be9ebb`, all jobs **SUCCESS**, proof job `117393445116`, created `2026-10-17T12:14:32Z`, updated `12:18:58Z`.
- Artifact `bfss-su2-opposite-gamma-39031747595` ID `12100966077` holds exact compiler and Lean proof logs.
- Exact source file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AFOriginalSmoothParityInvolutionProbe.lean` blob `c9f71c6929121226788181ce3547979dcfe6afef`, candidate from `dadfc2d39fef064f0ca8bfe9ac8bfcb57ebfe23d`.
- Frozen upstream mathematical source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; exact H5E8AF proof blob and qualified environment/OAI BFSS Core checked before proof.
- Six printed source roots each showed exactly the standard `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, no Lean compilation error. CI verdict: `L6H5E8AF_ORIGINAL_SOURCE_SMOOTH_PARITY_INVERSION_AXIOM_CLEAN_PASS`.

## What is genuinely formalized

All in `FCP.BFSSSU2PhysicalDomainL6H5E8AF`:

1. `originalSmoothParityFun`: spatial coordinate pullback `(P f)(x) = f(-x)` constructs actual upstream `TestFunction` with `ContDiff` via smooth composition and compact support via the genuine `Homeomorph.neg (Boson N)` (not postulated).
2. `originalSmoothParity`: complex-linear `SmoothCore N →ₗ[ℂ] SmoothCore N`, maps actual source test functions.
3. `originalSmoothParity_apply`: exact `P f x = f(-x)` on source `Boson N`.
4. `originalSmoothParity_involutive`: `P ∘ P = id` as source `LinearMap`.
5. `originalSmoothParity_position`: on original `SmoothCore N`, `P ∘ position(i,A) = -position(i,A) ∘ P` for **every** literal source spatial/color coordinate, not a substitute variable multiplier.
6. `originalSmoothParity_fermionAction`: `P` commutes exactly with original `AlgebraData.fermionAction β A` for all source `AlgebraData N`.

This is a meaningful source-domain operator construction in addition to two previously accepted source gamma-orientation stages:
- [H5E8AD / Gamma Orientation #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031030146): `oppositeGamma` preserves `theta`, colors, `gammaTwo`, is an involution.
- [H5E8AE / Gamma Charge Split #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39031262405): original `AlgebraData.charge` splits definitionally and `Qα(oppositeGamma M) = -Kα(M)+Cα(M)`.

**Genuine next local mathematical uncertainty:** prove
[
  P\circ\operatorname{coordinateDerivative}(i,A)
  =-\operatorname{coordinateDerivative}(i,A)\circ P
]
as `SmoothCore N →ₗ[ℂ] SmoothCore N`, using pinned `AlgebraData.coordinateDerivative_apply` and Mathlib `fderiv_comp` for the smooth negation map `x↦-x`. This is not automatic from position anticommutation. Combined with AD/AE/AF, the exact source charge parity conjugation would follow by finite source-index sum transport; it is not yet proved.

Further independent analytic work: show `P` extends to a unitary on original `FullL2 N`, verify commutation with the physical SU2 gauge pullback and preservation of `GaugeData.invariantCore`, transport the **physical (restricted)** 16-charge graph and its closure, and identify the normalized closed form / associated Hamiltonian operator with actual domain. Finally reconcile arbitrary manuscript Clifford(48)/Spin(48) realization and global Spin(9) spectral argument. Never infer positive point spectrum from these source equalities.

Original source, main, upstream, source pins, accepted proofs and draft PR #25 base unchanged.
