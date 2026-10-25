# BFSS M4F9 H4G1A — generic nonzero normalizable Hilbert eigenpair iff under exact unitary-domain/action matching

**Date:** 2026-10-24 Pacific (2026-10-25 UTC). **Disposition:** STRICT ACCEPTED — **1/1 new generic support root**, after separately preserved Gate #1 parser-red.

## Independently verified original GitHub/Lean evidence

- [Gate #2 run #40145506296](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40145506296), job `121025846627`, both completed/success. Exact workflow SHA `488f3a8ab2bb9337f5bbd3443e85908be5dba523`.
- Corrected source `experiments/openai-math-su2-physical-domain/FCPM4F9H4G1AGenericUnitaryNormalizableEigenpairTransfer.lean`, exact Git source blob `fe7bffa26d2c38dd4a2bd0dd346122bfd93c817c`, source commit `664b8d85dec4a7b7938b0a8b4fcc5df776df02ec`. The substantive change from Gate #1 was solely renaming reserved Lean lambda token `λ` (twelve occurrences) to ordinary identifier `eigval`, retaining exact same theorem and proof.
- Exact frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source SHA checks, toolchain setup all succeeded.
- Exact qualified H4E3D4C4 parent cache `bfss-fcp-m4f9-h4e3d4c4-actual-graph-map-9ba4d6a1-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` cache hit, **104-path manifest**, exact C4/C3/C2/D4A/B accepted source hash + `.olean` ancestry PASS.
- Fresh strict `lake env lean -DwarningAsError=true` compiled **one expected root**, permitted axioms only, no compiler errors/unauthorized warnings/`sorryAx`:
```text
'FCP.M4F9H4G1AGenericUnitaryNormalizableEigenpairTransfer.genericUnitaryPartialEigenpair_exists_iff'
depends on axioms: [propext, Classical.choice, Quot.sound]
BFSS_M4F9_H4G1A_GENERIC_NONZERO_NORMALIZABLE_EIGENPAIR_ONE_ROOT_STRICT_PASS
```
- New accepted child cache `bfss-fcp-m4f9-h4g1a-eigenpair-fe7bffa2-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original compiler diagnostic artifact `bfss-m4f9-h4g1a-gate2-40145506296`, ID `12580386949`, ZIP SHA256 `5d07ebe5386236fc43341edaa93d459e5ddc5a89d226f15a82f44535bced0b5b`.

## Exact mathematical scope

For complex Hilbert spaces `X,Y`, genuine surjective complex-linear isometry `U : X ≃ₗᵢ[ℂ] Y` and actual `LinearPMap` partial Hilbert endomorphisms `A : X →ₗ.[ℂ] X`, `B : Y →ₗ.[ℂ] Y`, *given* full natural-domain matching `∀x, x∈A.domain ↔ Ux∈B.domain` and witnessed action correspondence `∀x hx, ∃hy, B⟨Ux,hy⟩=U(A⟨x,hx⟩)`, and for **every** complex `eigval : ℂ`, the kernel-qualified theorem states:
```lean
(∃ (x : X) (hx : x ∈ A.domain), x ≠ 0 ∧ A ⟨x,hx⟩ = eigval • x)
  ↔
(∃ (y : Y) (hy : y ∈ B.domain), y ≠ 0 ∧ B ⟨y,hy⟩ = eigval • y).
```
The forward witness is `U x`, reverse is `U.symm y`; unitary injectivity preserves nonzero, complex linearity preserves same eigenvalue. This captures **ordinary normalizable actual Hilbert eigenvectors**, no distributional/generalized eigenfunctions, no implicit smooth-core restriction, no assumption or claim that any eigenpair exists.

Source concrete H4E3D4C4 full physical graph equality and D4A/D4B natural-domain/action under actual original independent-to-historical U are independently already qualified. H4G1A is **generic only**. Next a single concrete original BFSS H4G1B instance may connect the exact conditional eigenpair equivalence to the genuine independent normalized E2 and historical D2B28 Hamiltonians. It still cannot prove positive eigenvector existence.

## Permanent negative knowledge

Gate #1 [run #40145002134](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40145002134) red due to reserved binder `(λ : ℂ)` at source line 33, downstream unknown theorem at line 72; no accepted root/child cache despite original parent cache and source-check success. [Gate #1 audit](OPENAI_MATH_BFSS_SU2_M4F9_H4G1A_GATE1_GREEK_LAMBDA_PARSER_RED_2026_10_24.md). Gate #2 renamed only binder/token occurrences; Gate #1 remains red and cannot be retroactively counted. No mathematical falsification was produced by Gate #1.

**Scientific stop line:** Source preprint claims infinitely many **positive normalizable eigenstates**, NOT a positive full-H mass gap. Transfer of conditional eigenvectors between equivalent operators cannot generate new eigenvectors from nothing. S1–S8 source-first Spin(9) symmetry, branching, oscillator low-level exclusion, coercive closed form, compactness, sector existence and eigenvalue conclusions remain separately qualified research obligations, not accepted kernel proofs.

Root accounting: H4G1A **+1 strictly accepted generic support root**, NOT historical principal-root ledger automatically. Frozen original mathematics, FCP canonical main and draft PR #25 unchanged.
