# BFSS M4F9 H4E1B — original AY ambient charge action from native physical outputs

**Disposition:** STRICT ACCEPTANCE, 3/3 source-only roots; **no ambient surjectivity, no Hamiltonian, no spectral assertion**.

**Date:** October 24, 2026. **Branch:** `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.

## Immutable verification

- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E1BOriginalAYAmbientChargeAction.lean`, commit [`f55758584dc8`](https://github.com/etblink/Foundational-Convergence-Program/commit/f55758584dc89d40ef5f249efc59a224d01ff1b9), blob `74ab69c39111b466154ae5f3cbc5653051a93dc8`.
- Gate workflow `.github/workflows/bfss-m4f9-h4e1b-ambient-charge-action-strict-gate1.yml` committed [`3cdb74da833d`](https://github.com/etblink/Foundational-Convergence-Program/commit/3cdb74da833d8fcf4f629460a9a497a2ccd8afa9).
- [Run #40123558938](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40123558938), job `120960082104`: **completed/success**. Exact pinned source preflight, Mathlib recovery, qualified parent cache restore, fresh Lean 4 compiler, all three exact theorem/axiom validations, child cache save and raw diagnostic artifact preservation succeeded.
- Frozen math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact accepted parent restored: `bfss-fcp-m4f9-h4e1a-inner-47b86049-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- New qualified cache saved: `bfss-fcp-m4f9-h4e1b-action-74ab69c3-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Exact accepted theorem roots

Namespace `FCP.M4F9H4E1BOriginalAYAmbientChargeAction`.

1. `pairedOriginalAmbientCharge_graph_ofNative` — for every original paired physical input in the exact native charge domain, its actual native output embedded by `pairedPhysicalHilbertOutputsToOriginalAmbient` is in the **unchanged original AY ambient** partial operator graph.
2. `pairedOriginalAmbientCharge_domain_ofNative` — native charge-domain membership implies ambient charge-domain membership.
3. `pairedOriginalAmbientCharge_action_ofNative` — on the genuine native domain, the original AY ambient charge applied to the input equals the literal physical-output inclusion of the native charge action.

The **original source graph** from H3B1 and **original native Mathlib LinearPMap** from H3B2 remain unchanged. No `theta`, `hCAR`, `hHermitian`, `hColor`, `hGamma`, `J` or `hJ` witnesses enter these forward source-only proofs. Such assumptions are still needed to establish reverse physicality/domain correspondence and independent-model charge conjugacy.

The exact fresh compiler output showed all three named roots depend only on `propext`, `Classical.choice`, and `Quot.sound`, followed by:

```text
BFSS_M4F9_H4E1B_ORIGINAL_AMBIENT_CHARGE_ACTION_THREE_ROOTS_STRICT_PASS
```

Strict validation additionally excluded compilation warnings, `sorryAx`, missing declarations, and non-whitelisted axioms. The entire job was successful.

## Limits and next discriminating experiment

H4E1A already established `inner (Iv) (Iw) = inner v w`. Compose it with H4E1B on **exact native charge-domain inputs** to prove the polarized equality:

```text
inner (T_ambient u) (T_ambient v) =
  inner (T_native u) (T_native v)
```

Use source literal domain proofs and retain `(1/16 : ℂ)` to compare the normalized quadratic/closed forms. Then independently link the actual corresponding domains and use the requalified D2B26/D2B27 weak-form/adjoint-square source relations to identify exact normalized self-adjoint Hamiltonians. Avoid a false surjective ambient-output unitary. H4E1B alone is **not** full source/independent Hamiltonian conjugacy and proves no Spin(9) eigenvalue statement.

**Bookkeeping:** 3 strictly verified roots of mixed graph/domain/action scope. Reconcile principal versus supporting ledger independently; **do not** mechanically add all three to the historical principal tally 309. Preserve all earlier red audits, even though this candidate went green on Gate #1.

No change to original `etblink/math`, canonical FCP `main`, or draft PR #25.
