# S1V52L9C1 — original positive-i Pauli quaternion conjugation & trace Gate #6 ACCEPTED

**Project Lead independent verdict:** `L9C1_GATE6_PASS__TWO_EXACT_ORIGINAL_PAULI_MATRIX_AND_TRACE_ROOTS__L9B4_CACHE_HIT__ONLY_THREE_PERMITTED_AXIOMS__PAULI_NORMALIZATION_NEXT`.

## Strict evidence and provenance

- [GitHub Actions run #39523271718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39523271718), job `118971925522`, run attempt 1, COMPLETED SUCCESS at immutable research workflow commit `98fe64cf48287377fd567535c3b7d4b876426ab3`.
- Exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9C1OriginalPauliQuaternionTracePolynomialProbe.lean`, Git blob `ebcc4f090b6a0a9a30fbb63b69447f0f4836241c`.
- Actual original FCP Pauli module `SU2ColorCrossProbe.lean`, Git blob `399e9380ba1c679dc173a9dec0ac21e09d7757fd`, compiled along with the original seven pinned upstream OAI dependencies (not approximated or replaced).
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS Core original blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Qualified parent cache HIT: `bfss-s1v52l9b4-source-same-block-quaternion-conjugation-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Original source pins, imported dependency closure, and compiler all passed.
- Two source declarations under `FCP.BFSSS1V52L9C1`: `originalPauliQuaternion_matrix_conjugation` and `originalPauliQuaternion_trace_polynomial`, each with **exactly** `[propext, Classical.choice, Quot.sound]`; no `sorryAx`, no Lean errors, strict final marker `S1V52L9C1_ORIGINAL_PAULI_MATRIX_CONJUGATION_AND_TRACE_2_ROOTS_KERNEL_PASS`.
- Qualified cache SAVED: `bfss-s1v52l9c1-original-pauli-matrix-conjugation-trace-v1-adc7f124-lean4341-d13f23b-Linux-X64`; diagnostics artifact `bfss-s1v52l9c1-pauli-trace-39523271718`, ID `12312483442`.
- Previous accepted ledger **175 + 2 = 177** distinct source-qualified S1V52 roots.

## Exact mathematical content

Let original `G(p) = sourceQuaternionColorMatrix p`, for any real source quaternion coordinates `p=(a,b,c,d)`, and `σ_A = FCP.BFSSSU2.pauli A`, ordered literally `σ_x,σ_y,σ_z`. Define original coordinate polynomial `R(p) B A` with output color B as row and input A as column.

The kernel verifies the exact finite source algebra identities:

```
G(p) * σ_A * (G(p)).conjTranspose
    = ∑ B : Fin 3, (R(p) B A : ℂ) • σ_B

Matrix.trace (σ_B * (G(p) * σ_A * (G(p)).conjTranspose))
    = ((2 : ℝ) * R(p) B A : ℂ)
```

This is **not yet the original normalized Pauli basis** or the original native BFSS `pairedAlgebraData.adjointCoefficient` theorem. Both remain separate.

## Negative knowledge and why Gate #6 succeeded

Previous L9C1 gates #1–#5 are retained as permanent failure audits, each with a distinct first causal defect:

- Gate #1: missing original pinned `PotentialBasis.olean` transitive source closure.
- Gate #2: mixed finite 2×2 trace `ring_nf` did not solve complex expression.
- Gate #3: unsimplified matrix-vector `ᵥ*` operator under nested trace.
- Gate #4: residual `vecHead`, `vecTail`, `starRingEnd` vector access.
- Gate #5: invalid `Matrix.dotProduct` identifier and simplifier maximum recursion.

**Accepted architectural correction:** prove the genuine original 2×2 **matrix conjugation** by `ext i j; fin_cases A i j` and small finite entry arithmetic, then derive the trace coefficient with the existing source `pauli_trace_pair`, matrix sum linearity, and no nested 4-factor trace unfolding.

## Next strict dependency boundary

L9C2 was staged at `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9C2OriginalNormalizedPauliQuaternionTraceProbe.lean`, Git blob `53bee67c2fdcc0b12a9d198bb13d061c9f898172`, **unqualified**. L9C2 must restore the precise L9C1 qualified cache, retain the actual source `normalizedPauli = pauliScale • pauli` and accepted `pauliScale_sq=1/2`, compile all L9C2 roots to new .olean and check individual permitted axioms. No approximation of original basis and no leap to SU2 gauge/Fock action.

L9C3 native `GaugeGroup 2` real-adjoint equality, full 16-block Spin(48) action, source label transport, continuity, original Fock and Hamiltonian/spectral obligations remain separate and OPEN. No writes to canonical `main`, pinned `etblink/math`, or draft PR #25.
