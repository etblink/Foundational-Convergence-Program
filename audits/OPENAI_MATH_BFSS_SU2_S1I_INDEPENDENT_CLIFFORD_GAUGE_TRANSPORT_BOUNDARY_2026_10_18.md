# S1I — independent Clifford-module gauge transport: scope and strict test plan

**Research branch:** `research/openai-math-su2-s3l-combined-rotation`. **Date:** October 18, 2026.
**Status:** NEW CONDITIONAL RESEARCH CANDIDATE, **NOT ACCEPTED** until a strict successful source-pinned gate and permitted-axiom audit.

## Accepted facts at this handoff

- S1C: qualified source SU(2) 24-complex-one-particle determinant-one and special-unitary representation, exact `complexOneParticleSpecialUnitaryHom : GaugeGroup 2 →* Matrix.specialUnitaryGroup (Fin 24) ℂ`. This is **not** an independently constructed real Spin(48) representation.
- S1G: [Exact Source Character Triviality #10](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39136594830), strict 11-root PASS, exactly source positive-i SU(2), with explicit hV on the source Fermion 2.
- S1H: [Source Gauge Representation Uniqueness #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39144318743), strict 3-root PASS: every `V : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` with *explicit* original 48-paired-Majorana covariance equals `fermionGaugeLinearHom`. First red #1 was Lean's implicit section-variable elimination of hV, resolved using `include hV`.
- Accepted source Euler H5E8Y was recompiled by frozen baseline with 69 identical source objects and 59 missing modules under S1G Gate #9. S1G #10 and S1H #2 import the resulting pinned cached `.olean`.

## Newly introduced S1I exact formal interface

Source candidate: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1IConditionalCliffordModuleGaugeTransportProbe.lean`.
Initial blob: `49f40a75d16f7fcaa32bdc2d07abbf047eb0c87c`.
Initial source commit: `47241da9a4ee08c9e30ac719993453df8710f2a3`.
Strict verification workflow: `.github/workflows/bfss-su2-independent-module-gauge-transport.yml` (source/hash-pinned and manual-only after launch).
[Independent Module Gauge Transport #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39146108969) is the **FIRST** strict candidate run.

Fix any red run from its first Lean/error or audit diagnostic. Do not elevate an uncertified candidate based on a plausible paper calculation.

The four candidate declaration types are:

1. `transportedGaugeHom`: from `T : E ≃ₗ[ℂ] Fermion 2` and `W : GaugeGroup 2 →* (E ≃ₗ[ℂ] E)`, construct conjugated `GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)`; this is *formal transport of a supplied action*, **not** creation of W or T.
2. `transportedGaugeHom_covariant`: deduce the exact source 48-theta covariance from (a) a supplied array of `theta α A : E →ₗ[ℂ] E` and (b) explicit `hT`, `hW` identities on that array.
3. `transportedGaugeHom_eq_source`: apply accepted S1H source uniqueness to deduce equality with `fermionGaugeLinearHom` without scalar ambiguity.
4. `independent_gauge_intertwines_source`: conclude pointwise `T (W g v) = fermionGaugeLinearEquiv g (T v)`.

**This conditional theorem is a bridge contract, not a completed manuscript lift.** It is useful because future independent constructions will know exactly which source-exact hypotheses to supply, but it makes no progress on the hard *existence* of those hypotheses.

## Non-negotiable independent existence obligations

- Define the actual **independent** real 48-dimensional orthogonal Majorana space and its Clifford algebra `Cl(48)` with a frozen bilinear-form, normalization, orientation, and sign convention; do not merely rename original Fermion 2 or assume an equivalence.
- Construct its complex irreducible spinor module `E` and 48 Clifford generators `theta α A`, verify exact CAR/Majorana normalization and involutive adjoints.
- Construct the original SU(2) color action on that real 48-space with the source normalized Pauli +i and generator ordering, prove it lands in SO(48), and exhibit its genuine lift to Spin(48) with signs/central elements resolved and correct multiplication/group continuity as needed.
- Prove the independent spin lift acts on E as a **genuine** SU(2) representation W with exact 48-theta covariance hW. A projective representation with unproved 2-cocycle is insufficient.
- Construct a truly **unitary** module identification T to original Fermion 2 and prove exact Majorana compatibility hT, respecting all source conventions. The S1I type presently needs a complex-linear equivalence; unitary is a further genuinely necessary physical compatibility condition.
- Only then apply the conditional S1I transport theorem; proceed separately to the sixteen BFSS charge operators, invariant operator cores, closed graph domains, gauge/Spin(9) action, and spectral claim. **Neither a green CI nor an algebraic uniqueness statement proves a positive point eigenvalue or a mass gap.**

## Avoided shortcuts

A source Pauli/YZ curve theorem is not the independent Spin lift. Source SU(24) determinant one does not alone identify a Spin(48) action. Existence of T, W, or hW must not be inserted as unproved axioms and then presented as an unconditional theorem. The source Pauli adjoint order and original gamma/fermion signs are frozen.

No merge or `main` update permitted by this work. PR #25 remains draft.
