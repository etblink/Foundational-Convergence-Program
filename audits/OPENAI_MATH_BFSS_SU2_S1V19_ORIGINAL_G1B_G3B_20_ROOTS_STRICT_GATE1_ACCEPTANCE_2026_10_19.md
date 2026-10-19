# BFSS S1V19 — original typed gauge transport G1B through G3B: 20 strict roots accepted

**Date:** October 19, 2026 (PDT). **Disposition:** `ORIGINAL_PINNED_G1B_G3B_20_ROOTS_AXIOM_CLEAN_PASS__F4_G1A_CACHED__SOURCE_QUARTER_BRIDGE_STILL_OPEN`.

## Original kernel/CI evidence

- [BFSS S1V19 Original G1B to G3B Typed Gauge Source Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39296091346), entire job `118208878759` **successful**, exact checkout `9bc21db6dcd893514f61d1503e8e8fa40a0fb673`.
- Pinned original math: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Restored F4/G1A original accepted `bfss-s1v19-isolated-f4g1a-v1-adc7f124-lean4341-d13f23b-Linux-X64` cache (includes genuine `OAI.MathematicalPhysics.BFSS.GaugeCore`, `CovariantFields`, original color/gamma/F3C2/F4/G1A `.olean`); exact cache-hit and prerequisite `.olean` checks passed.
- Recompiled **unchanged** original five candidates, each with strict source SHA verification, fresh `.olean`, complete exact `#print axioms` roots and mandatory no `sorryAx` / compiler error check. Original source files/blobs:
  - `SU2BFSSG1BColorAnnihilatorProbe.lean` `c267bc73b0aee428c612664c164bea40ad85ee62`, namespace `FCP.BFSSSU2GaugeG1B`, **2 roots:** `color_annihilator`, `pairedAlgebraData_color_annihilator`.
  - `SU2BFSSG2ABosonGaugeProbe.lean` `d6165027f0f4782e9ae9ab3a5e7867f4732793bd`, `FCP.BFSSSU2GaugeG2A`, **5:** `bosonGaugeEquiv`, `bosonGaugeEquiv_apply`, `bosonGauge`, `bosonGauge_adjoint`, `bosonGauge_exact_fields`.
  - `SU2BFSSG2BBosonGaugeContinuityProbe.lean` `001d0d3c8d01a8b4090c4e5a58fe017263e2f168`, `FCP.BFSSSU2GaugeG2B`, **1:** `bosonGauge_continuous`.
  - `SU2BFSSG3AAdjointColorRepresentationProbe.lean` `c8bbd59782c3116fb514d6aa20d91c607a11c3e7`, `FCP.BFSSSU2GaugeG3A`, **8:** `colorUnit_inner`, `adjointCoefficient_on_basis`, `adjointCoefficient_one`, `adjointCoefficient_mul`, `adjointCoefficient_orthogonal`, `adjointColorMatrix_one`, `adjointColorMatrix_mul`, `adjointColorMatrix_orthogonal`.
  - `SU2BFSSG3B24ModeOrthogonalLiftProbe.lean` `c90b25156ec4d81ee16e5939cd888cc12cdc33a3`, `FCP.BFSSSU2GaugeG3B`, **4:** `oneParticleMatrix_block`, `oneParticleMatrix_one`, `oneParticleMatrix_mul`, `oneParticleMatrix_orthogonal`.
- The actual run printed all twenty fully qualified roots depending **only** on `[propext, Classical.choice, Quot.sound]`, five exact validation lines with 2, 5, 1, 8, 4 roots and terminal `ORIGINAL_SOURCE_G1B_G3B_20_ROOTS_KERNEL_PASS`.
- Run explicitly saved accepted cache `bfss-s1v19-isolated-g3b-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`; it is now reusable on **this isolated branch**.
- No `main`, draft PR #25, pinned upstream or source mathematical definitions changed.

## Scientific and source boundary

This closes actual typed original F4/G1A and color/orthogonal G1B/G2A/G2B/G3A/G3B under one immutable OAI BFSS source snapshot. It **does not** prove the original `sourceZ sourceQuarterTurnTime` 48-real matrix, a continuous global source SU(2) → Spin(48) lift, an equivariant unitary between the OAI Fock implementation and the manuscript Clifford module, nor self-adjoint operator-domain/spectral equivalence.

**Next distinct mathematical targets:**
1. For the original `pairedAlgebraData.color`, discharge both premises of previously accepted *conditional* S1V21 upstream trace theorem using actual original `sourceZ sourceQuarterTurnTime` and genuine original G1A Pauli color.
2. Prove S1V19 `original_zquarter_adjoint_matrix` for the original source `sourceZ` rather than standalone matrix aliases. The original `SU2BFSSPhysicalDomainS1V19OriginalSourceZQuarterAdjointCoefficientBridgeProbe` currently imports the **original S1G exact gauge-character/Euler package** and `S1L` manifold/48 color label, plus `S1V18` and `S1V21`. Avoid pretending F4/G3B cache already contains this physical-domain graph.
3. Prove S1V20 original 48×48 typed matrix equality by the paired 8×3 labels and source color entries, preserving original +i signs and output-row / input-column order.
4. Then tackle the full global group lift / module intertwiner / physical domains and spectral implications separately.

**Truth-first rule:** A green source-gauge algebra gate is not a manuscript-spectrum theorem. Stage the minimal original S1G/S1L prerequisite graph in separate cache gates; attribute any failure to the actual first causal Lean/error/cache/log message rather than issuing blind new CIs.
