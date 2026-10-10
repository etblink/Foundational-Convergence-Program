# BFSS SU2 G4-K10A — Gate #171 closed joint-charge graph acceptance 0.1.0

**Date:** 2026-10-09 Pacific (CI UTC 2026-10-10). **Disposition:** `PASS__EXACT_SOURCE_CLOSED_JOINT_CHARGE_GRAPH_AND_DOMAIN_EQUALITY`; source-mathematical kernel-qualified, not independent spectral or empirical validation.

## Compiler source and proof

- [BFSS SU2 Concrete Color Gate #171](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38012405367), run `38012405367`, job `114095110458`, concluded SUCCESS at tested commit `6eeb4293abcc1cf3a111ff5c511f708cb5ed320a`, tree `1833d2aa975a53d4d14f226da98276833e794768`.
- Source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K10ASourceClosedJointChargeGraphProbe.lean`, blob `65d86984f7c216950fbc96812bd011d9d09e968e`.
- Exact Lean `4.34.1`, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- `lake env lean SU2BFSSG4K10ASourceClosedJointChargeGraphProbe.lean` succeeded; five declarations each print axiom list exactly `[propext, Classical.choice, Quot.sound]` with no `sorryAx`. All frozen G4-K8E3 through G4-K9D prerequisites independently recompiled successfully.

## Accepted claims

1. `sourceChargeMap_equal`: original `deformedChargeMap 1 0 α = charge α` as linear maps on every original source SmoothCore N.
2. `sourceChargeVector_equal`: original source joint charge vector linear maps agree.
3. `sourceCoreGraph_equal`: original and deformed *source-defined* smooth-core joint charge graphs agree.
4. `sourceClosedJointChargeGraph_equal`: those actual source-defined **closed graph submodules** agree after topological closure.
5. `sourceClosedJointChargeDomain_iff`: projected FullL2 domains of those particular closed joint charge graphs agree.

All derive from the unconditional G4-K9D source identity qualified in Gate #170, not from assuming a graph equality. There are no extra physical assumptions.

## Scientific and inferential boundary

This is an equality of the exact closed **joint charge graphs** defined in the pinned upstream Lean source. It does **not** by itself show equality to the gauge-restricted closed quadratic form or self-adjoint Hamiltonian in the 2026 relative SU(2) BFSS spectral manuscript. It does not prove a global mass gap, spectral compactness, physical ground state or the M-theory conjecture. Next scientifically meaningful work is **read-only** manuscript/source domain mapping and specific discrepancy analysis; this gate closes the bounded source-operator identity program.

References already registered in FCP: `SRC-FCP24-NONPERT-BFSS-1997`, `SRC-OPENAI-MATH-F270B-BFSS-2026`, `FCP24-STRING-002`, T6 independent adjudication; K1–K10 unmodified. No main merge or upstream PR.
