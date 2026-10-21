# S1V52L9C1 strict Gate #2 — RED: local finite complex trace tactic normalization

**Evidence disposition:** `L9C1_GATE2_RED__ZERO_NEW_ROOTS__ORIGINAL_SEVEN_OAI_SOURCE_DEPENDENCIES_COMPILED__ORIGINAL_PAULI_COMPILED__L9C1_REACHED__COMPLEX_RING_NF_TACTIC_FAILURE__NO_KERNEL_ACCEPTANCE`.

- [Actions run #39518153946](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39518153946), job `118955193094`, concluded FAILURE. Immutable triggering workflow SHA `a9e4008c269988fb2d8a0d0bea5edda2c1d1c2d7`. The L9C1 candidate was still EXACT source blob `8aba2415cc4058228fe1a383f58cc7c5721fc5b9`.
- Original source SHA and toolchain preflight PASS, original BFSS pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib pinned `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Qualified L9B4 source cache restored: `bfss-s1v52l9b4-source-same-block-quaternion-conjugation-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- All seven missing upstream original OAI transitive modules compiled and produced fresh nonempty .olean files: `GammaWords`, `GammaIdentity`, `MassIdentity`, `CliffordSymbols`, `PotentialBasis`, `Definitions`, `Pauli`. Original `SU2ColorCrossProbe.lean` then compiled with marker `S1V52L9C1_EXACT_PINNED_PAULI_SOURCE_READY`.
- Unlike Gate #1, the compiler **did reach** `SU2BFSSPhysicalDomainS1V52L9C1OriginalPauliQuaternionTracePolynomialProbe.lean`. The first diagnostic points to **line 53, column 44**: `ring_nf made no progress on the goal` (multiple remaining cases); the theorem subsequently reports `(kernel) declaration has metavariables`. The `#print axioms` on that failed declaration contains `originalPauliQuaternion_trace_polynomial` itself and MUST NOT be accepted.
- No qualified new L9C1 .olean, cache, or theorem result. **0/1 gate accepted**, S1V52 remains **175** accepted roots. This is a tactic proof failure, not evidence of an actual sign discrepancy.

## Independent mathematical check

The exact source definitions are `FCP.BFSSSU2.pauli` with output/input colors `B,A`, original `sourceQuaternionColorMatrix p = [[a+ib,c+id],[-c+id,a-ib]]`, and the L9C1 nine-entry real polynomial `R(p)`. Independent symbolic multiplication of the literal original 2×2 matrices verifies **all nine** `trace(pauli B * (g * pauli A * g†)) = (2*R(p) B A : ℂ)` for unrestricted real a,b,c,d. This external check is NOT itself a Lean theorem and the 175-root count remains unchanged.

## Correction design

Do not change original positive-i signs, actual Pauli matrices, coefficient order, source group, physical interpretation or polynomial theorem statement. Replace the local mixed `simp; ring_nf; norm_num; ring` tactic with **`apply Complex.ext`**, explicit source matrix/trace expansion and `Complex.mul_re`, `Complex.mul_im` reduction; then close each *real-polynomial* goal with `ring`. Keep all nine finite source color pairs and exact source blob preflights. Introduce a **new single-shot workflow path** for Gate #3 rather than rerunning the red immutable Gate #2.

The successful dependency-closure repair is valuable negative knowledge: future L9C2 and native source L9C3 gates need this exact original OAI Pauli import closure; do not repeat the missing `PotentialBasis.olean` Gate #1 failure or bury dependency problems under mathematics.

Canonical `main`, upstream `etblink/math`, and PR #25 remain untouched.
