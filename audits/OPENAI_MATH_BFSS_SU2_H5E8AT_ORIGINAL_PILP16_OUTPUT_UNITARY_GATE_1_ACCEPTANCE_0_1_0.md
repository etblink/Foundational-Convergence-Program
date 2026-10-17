# BFSS SU(2) — H5E8AT true original sixteen-component PiLp 2 Hilbert output parity unitary

**Date:** October 17, 2026 (PDT). **Disposition:** `PASS__ACTUAL_ORIGINAL_16_COMPONENT_HILBERT_PILP2_UNITARY_PARITY__FIVE_AXIOM_CLEAN_ROOTS`.

**Scientific scope:** real original source FullL2 and genuine PiLp 2 Hilbert output, not the independent paper's Cl(48)/Spin(48) realization, original closed charge `LinearPMap` import, normalized self-adjoint Hamiltonian operator-domain conjugation, Spin(9) global spectral result, or a BFSS mass gap.

## Strict qualification and exact sources

- [BFSS SU2 Original PiLp16 Hilbert Output Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39054163210) **SUCCESS**, workflow/source SHA `11cd89365de7dd2af45c653fe4cbdf46177dae16`, exact `exact-pilp16-hilbert-output-parity` job `117458639772`.
- Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8ATOriginalPiLp16OutputParityUnitaryProbe.lean`, **immutable blob `dba70e368ad17344329782cb77da77cfb295328f`**.
- Actual original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, checked during CI with pinned accepted G1A/Fock proof cache integrity and compiler version.
- The job compiled all **sixteen** AD–AT source modules, producing a fresh AT OLEAN. Five named theorem/definition `#print axioms` results printed only `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, errors or missing roots. Strict marker `L6H5E8AT_TRUE_PILP2_HILBERT_OUTPUT_UNITARY_FIVE_ROOTS_CLEAN_PASS`.
- Qualification artifact ID `12109261420`, digest **`sha256:c91350f0c8017afa41d973a4705168975b504881430e2aafcac0816232542b59`**, expires October 31; immutable Git source and Actions run persist.

## Five actual source-typed declarations

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AT`.

1. `originalChargeHilbertOutputParityUnitary`: bona fide `PiLp 2 (fun _ : SpinIndex => FullL2 N) ≃ₗᵢ[ℂ] PiLp 2 (...)` obtained via *pinned Mathlib* `LinearIsometryEquiv.piLpCongrRight 2` applied to the already accepted original source AJ `originalFullL2ParityUnitary`. No assumed inner product or externally supplied unitary.
2. `originalChargeHilbertOutputParityUnitary_apply`: on every literal source spinor output component, the unitary is exactly original FullL2 spatial parity.
3. `originalChargeHilbertOutputParityUnitary_norm`: exact norm preservation in the actual finite Hilbert direct sum, not the `SpinIndex → FullL2` product/sup norm.
4. `originalChargeHilbertOutputParityUnitary_twice`: true involution on that PiLp 2 Hilbert output.
5. `originalChargeHilbertOutputEnergy_parity`: preservation of AS's original exact scalar `(1/16)∑_α ‖y_α‖²` when transported by the true output Hilbert unitary.

This addresses the specific mathematical output ambient distinction documented in the original accepted D2B17 true Hilbert adjoint source: original `SpinIndex → FullL2` is a product topology, while `PiLp 2 (fun _ : SpinIndex => FullL2)` is the true sixteen-component Hilbert sum. The required continuous-linear/isometric constructor is in the pinned Mathlib, not a new BFSS hypothesis.

## Still open and negative-knowledge preservation

- Accepted AQ #1 [source closed charge graph/domain parity](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39051507670), AS #1 [exact 1/16 closed graph energy parity](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39053477067) and AT #1 together provide clean physical graph domain, normalized output energy, and actual output Hilbert-unitary interfaces for opposite-gamma source parity.
- **H5E8AR Gate #1 remains RED/UNTESTED** because its required Gate93 native `LinearPMap` cache failed to restore in this S3L PR before Lean candidate compilation. Preserve [exact cache miss audit](./OPENAI_MATH_BFSS_SU2_H5E8AR_NATIVE_OPERATOR_GATE_1_CACHE_MISS_NEGATIVE_2026_10_17.md). Gate93's original acceptance remains valid on its own branch; do not substitute its missing compiled objects with unchecked modules or assume AR's source tactics compile.
- Next: source-staged native original charge `LinearPMap` graph/domain/action + true Hilbert output map and corresponding closed quadratic form; then transported adjoint and natural-domain `(1/16)T†T` self-adjoint operator. Need a concrete reproducible dependency/cache solution or a controlled accepted module import rebuild on the *current* research branch, not speculative replays.
- Independently specified 2026 manuscript Cl(48)/Spin(48) gauge realization, global Spin(9) isotypic confinement and positive point-spectrum proof remain **separately open**. These source gamma-orientation equivalences do not independently prove the paper theorem.

**Governance:** no edits to original upstream, canonical main, accepted Mathlib pins or original source conventions; draft PR #25 stays open and unmerged.
