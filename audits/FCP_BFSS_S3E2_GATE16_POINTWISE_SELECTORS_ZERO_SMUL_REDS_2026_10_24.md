# BFSS S3E2 Gate #16 — genuine pointwise selector indices now normalized, residual exact scalar action on zero

**October 24, 2026 Pacific / October 25 UTC — strict RED 0/3 new roots accepted.** Immutable mathematics, canonical `main`, and draft PR #25 untouched.

## Independently verified original Lean evidence

- [GitHub Actions Gate #16 run #40156795058](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40156795058), job `121059784731`, source workflow commit `8ef492239139f5aaa3befd3cbe4c7cab1b7220d5`, full run and job `completed/failure`.
- Frozen upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, exact Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original S3E2 candidate SHA `d7a784e0679b279e5ca3c71206cd7d1994e70959`, V2 SHA `6f875bd79654815de82ff4967058e7ee730f336e`, and pointwise V3 SHA `18d6beeb68e8db36fbeccbcf0b195816ce8a7aa7` pin-checked. All three source theorem STATEMENTS unchanged; only selector tactics differ.
- Source-qualified S3E1 Gate #13 **117-path cache** `bfss-fcp-s3l-s3e1-forward-smulsub-4b5f4f9e-gate13-v1-adc7f124-lean4341-d13f23b-Linux-X64` HIT/restored, genuine S3C/S3D/S3E1 source proof objects available. Real fresh `lake env lean -DwarningAsError=true` reached all three declarations.
- **Line 47:8**, first `pairedFermionSpinQuadraticColor_delta_beta` false-index branch after `by_cases h: β = γ`, `subst β` in positive branch:
```text
case neg
h : ¬β = γ
⊢ ↑(J α β) • 0 = 0
```
- **Line 78:12**, second `pairedFermionSpinQuadraticColor_delta_alpha` false-index branch:
```text
case neg
h : ¬α = γ
⊢ ↑(J α β) • 0 = 0
```
- The previous varying source matrix application **implicit transparency errors no longer appear**; positive Kronecker-index substitution succeeded in both proof modules. Last `pairedFermionSpinQuadraticColor_comm_same_color_coefficient` had no separate compiler diagnostic, but all **3** axiom reports include `sorryAx` owing to these two unresolved obligations. **0/3 accepted, no S3E2 cache** saved. Actual diagnostic artifact `bfss-s3l-s3e2-pointwise-gate16-40156795058`, ID `12585061608`, ZIP SHA256 `9ee6a89af150fe844ad451510e32a0745d74e58b9087fecee21416f440cf43ec`.

## Correct response

This is NOT a disproof of original-source CAR delta contraction. It is precisely the module identity `c • 0 = 0` missing from the false branch after `simp [h]` normalized the `if`. Next strictly scoped proof-only adapter should keep the `by_cases` structure and add `exact smul_zero _` after `simp [h]` for each of the two false branches, retaining unchanged three theorem statements and previously accepted genuine original operator/coefficients. Preserve S3E2 original, V2 and V3 sources and hashes; pin a new V4 Git blob and deterministic exactly-two-occurrence tactic diff. This is a local proof step, not grounds to disable warnings, change original CAR, alter coefficient sign, or introduce axioms/sorry. Qualify only after new source compiled under frozen toolchain with actual three allowed-axiom reports and child cache save.

Previous reds preserved separately: [Gate14](FCP_BFSS_S3L_S3E2_GATE14_THREE_SOURCE_FINITE_SUM_PROOF_RESIDUALS_RED_2026_10_24.md) (selector matrix under global simp and matching of sub_smul); [Gate15 run1](FCP_BFSS_S3L_S3E2_GATE15_RUN1_DOUBLE_ESCAPED_DIFF_VALIDATOR_RED_2026_10_24.md) (pre-Lean Python escaped string false red); [Gate15 run2](FCP_BFSS_S3L_S3E2_GATE15_RUN2_IMPLICIT_TRANSPARENCY_SIMP_NO_PROGRESS_RED_2026_10_24.md) (true Lean matrix application implicit-transparency failure). Accepted Gate13 one novel S3E1 CAR theorem and 28 historical source requalifications remain intact. No new global Spin9 or positive BFSS eigenvector existence claim.