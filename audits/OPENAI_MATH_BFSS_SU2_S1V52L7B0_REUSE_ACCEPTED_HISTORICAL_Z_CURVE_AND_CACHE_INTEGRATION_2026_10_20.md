# S1V52L7B0 — verified historical native Z-curve, source Spin48 transport, cache integration decision

**Disposition:** `S1V23_G4M_HISTORICAL_Z_CURVE_ACCEPTED__L7B0_THREE_NEW_SOURCE_SPIN_ROOTS_STAGED_UNQUALIFIED__CURRENT_S1V52_ACCEPTED_87__CROSS_BRANCH_OLEAN_CLOSURE_UNAVAILABLE_UNTIL_VERIFIED`.

## Already accepted historical source results — DO NOT re-prove as new S1V52 mathematics

1. Genuine `pairedAlgebraData : OAI.BFSSQuantum.AlgebraData 2` and `pairedAlgebraData_color` are accepted in historical S1V19 G1A/F4 15-root [strict run #39294568180](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39294568180); source unchanged blobs G1A `4f8fbf05a35c1d625746931b7ff0361b7ffc2ec4`, F4 `fe3e0b21bb60d74b54c9faf7c066db9b02939405`.
2. Exact **original paired** positive-i source diagonal tangent, matrix exponential for EVERY real t, and accepted native quarter matrix are 11 strict G4M roots [run #39311329470](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39311329470), job `118261368057`; source blob `8f1b853916529b0260bc4edb47b1a11076c680cf`. Relevant `FCP.BFSSSU2GaugeG4M.original_z_tangent_diagonal`, `originalPairedZExponential_diagonal`, `original_z_exp_zero`, `original_z_exp_one`. Independently inspected compiler log `originalPairedZExponential_diagonal` axioms exactly `[propext, Classical.choice, Quot.sound]`, strict `ORIGINAL_G4M_PAIRED_SOURCE_Z_QUARTER_EXP_11_ROOTS_KERNEL_PASS` and saved cache.
3. The **historically named ORIGINAL** `FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve (2:Fin 3) t` is definitionally identified for ALL t with the same exact original paired exponent by `FCP.BFSSS1V23.original_sourcePlusIGaugeCurve_z_matrix_eq` in S1V23 [strict run #39320203897](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39320203897), job `118291975151`; source blob `cb29eb6261fc50550cc275bceb5b000619d521b7`, 3/3 accepted, same three axioms. Independent fresh reading of actual CI log confirms exact symbol and `ORIGINAL_S1V23_HISTORICAL_SOURCE_PLUS_I_QUARTER_3_ROOTS_KERNEL_PASS`, accepted `.olean` cache saved. At original quarter time `(Real.pi/2)*Real.sqrt 2`, actual native group equality and original paired 48-theta fermion (-,-,+) signs are independently accepted. This **already resolves** the previously identified historical source-name identity blocker. It is NOT a new S1V52 root.
4. S1V52 L3 genuine Z-plane Spin(48) polynomial membership already accepted (4 roots), C1/L7A0 actual native first-row quaternion transport accepted, L7A2 finite quaternion matrix accepted. These are in S1V52 accepted caches and are mathematically independent of the historical physical source proof.

## New source-exact target — L7B0 (3 STAGED, UNQUALIFIED)

Research source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7B0HistoricalZCurveNativeSpin48TransportProbe.lean` reuses the historical accepted S1V23 source-name identity, G4M all-time exp diagonal and scalar angle formulas, the newly accepted S1V52 L7A2 Z quaternion matrix, and the accepted S1V52 L3 original source48 Spin membership.

Proposed NEW roots, NONE kernel-qualified yet:
- `originalNativeZCurve_quaternion_matrix`: for ALL real t, original native `sourcePlusIGaugeCurve (2:Fin3) t` has precisely quaternion color matrix `⟨cos(t*pauliScale),sin(t*pauliScale),0,0⟩`;
- `originalNativeZCurve_quaternion_coords`: its **actual native** `originalNativeQuaternionCoords` returns that quaternion, positive-i sine;
- `originalNativeZCurve_mem_sourceSpin48`: its C1-extracted source 48-Clifford polynomial belongs to the **genuine pinned Mathlib spinGroup source48Quadratic** for every original 16 real-spin block and every real t, via existing L3 circle proof.

No new original source group, no t/2 phase, no surrogate Spin3, no fictitious manuscript-Hilbert equivalence. This is a one-parameter *pointwise* membership statement, not a global continuous native SU2→Spin48 group hom.

## Why no CI run yet — concrete branch-scoped cache boundary

Historical S1V23 isolated branch `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` qualified the original physical import closure in:
- Stage A 13 original modules / 50 roots, [run #39314647826](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39314647826);
- Stage B 15 original modules / 42 roots, [run #39316851640](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39316851640);
- Stage C1 8 original modules / 35 roots, [run #39318649350](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39318649350), saved `bfss-s1v23-isolated-l6g6x-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`;
- Stage C2 3 original source-named roots, [run #39320203897](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39320203897), saved `bfss-s1v23-isolated-source-plus-i-quarter-original-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

S1V52 L3 and L7A2 caches are saved on different active branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`; for example accepted L3 `bfss-s1v52l3-original-zplane-spin-membership-v2-adc7f124-lean4341-d13f23b-Linux-X64` and L7A2 `bfss-s1v52l7a2-source-zy-quaternion-trig-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Historical source files exist verbatim on S1V52 research branch, BUT their historical accepted compiled `.olean` does not automatically transfer across GitHub Actions branch cache scopes. An isolated workflow that presumes S1V23 cache restoration on current S1V52 branch is not trustworthy. The GitHub connector does not expose a supported Actions-cache inventory/download interface for independently transferring the cache.

**Project Lead decision:** avoid redundant original Pauli/source-curve new gates (staged L7A5C and L7A5D are unqualified and superseded as near-duplicates by accepted historical G4M/S1V23). Do NOT count their uncompiled statements or launch a predictable missing-cache test. Next, plan a source-hashed deterministic **acceptance replay** on the active research branch, divided into the proven A→B→C1→C2 historical module cuts and cached after each strict axiom audit, or another explicitly verified sanctioned cache availability route. Restore the active S1V52 L7A2/L3 `.olean` family **without overwriting or silently mixing incompatible artifacts**, and require exact separate source-blob pin checks for the historical module family and new L7B0.

The existing S1V19 source audit `OPENAI_MATH_BFSS_SU2_S1V19_ORIGINAL_F4_G1A_15_ROOTS_STRICT_GATE1_ACCEPTANCE_2026_10_19.md` demonstrates the F3/F2 irreducibility import closure required to recompile G1A. Avoid a monolithic cold all-source build and timeout: use its accepted split and negative knowledge, including exact root names and no-sorry validator, as a reproducible template. If any source file, .olean, branch or cache differs, FAIL CLOSED.

## Scientific boundary

Accepted locally in S1V52 at this audit: **87 roots**. G4M's 11 and S1V23's 3 historical roots are NOT new additions to that local count. L7B0 3 roots remain unqualified. Original full SU2 group lift, sixteen-block even commuting product, group hom, source Majorana intertwining, global continuity, independent manuscript complex Clifford/Fock module, operator-domain/Hamiltonian equivalence, Spin(9) decomposition, BFSS spectral positivity are not proved by the accepted original Z-quarter or prospective pointwise Z curve.

No write to canonical `main`, original upstream `etblink/math`, or unmerged draft PR #25. No CI triggered by this source/audit-only research commit.
