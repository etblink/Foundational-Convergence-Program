# BFSS M4F9 H4E3A — native AY normalized weak form to historical SU2 Hamiltonian: Gate #2 acceptance

**Date:** 2026-10-24 Pacific. **Result: STRICT ACCEPTED 2/2 support roots, no principal-root ledger change asserted.**

## Immutable provenance

- `etblink/Foundational-Convergence-Program`, research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`; canonical `main` unchanged.
- Source: `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3AOriginalNativeHistoricalHamiltonianWeakForm.lean`, exact blob `8297bb913b49d5b0fd746ea6bb497a359671b778`, proof revision commit `7d961159274153455cda3c86062e1a183c08f729`.
- Gate #2 workflow commit `ec62546d9a29164ccdb8cd704c880d7a8839db44`; [run #40128748041](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40128748041), job `120975715758`, workflow and job `completed/success`.
- Frozen original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source and exact-candidate preflight passed.
- Two independent cache ancestries restored *with their matching saved-path manifests*: `bfss-fcp-m4f9-h4e2b-full-form-799a3bc9-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` and `bfss-fcp-m4f9-h1-original-source-hamiltonian-ay-bh-05a54077-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Both real qualified ancestor closures, plus actual BH historical operator source SHA `05a540772eb1b0e5c8570fd4eca101be76bbdd9b`, passed verification.
- Fresh Lean compilation, all exact roots' strict axiom reports, no `sorryAx` / Lean errors / unapproved source warnings, new `.olean`, saved compilation cache, and raw logs artifact all passed.
- Saved child cache `bfss-fcp-m4f9-h4e3a-weak-form-8297bb91-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Raw diagnostic artifact `bfss-m4f9-h4e3a-gate2-40128748041` (ID `12574671617`); zip SHA256 `94ee8a2c806e5aaeec79a85e6e0b0b61776e2ee21c62f1e6b1454e78b498d4dc`.

## Two exact accepted roots

Namespace `FCP.M4F9H4E3AOriginalNativeHistoricalHamiltonianWeakForm`:

1. `pairedOriginalNativeWeakForm_iff_ambient`.
2. `pairedOriginalNativeWeakForm_iff_historicalHamiltonian`.

Both printed **only** `[propext, Classical.choice, Quot.sound]`. Exact full-job marker:

```text
BFSS_M4F9_H4E3A_ACTUAL_NATIVE_WEAK_FORM_HISTORICAL_HAMILTONIAN_TWO_ROOTS_STRICT_PASS
```

## Mathematical scope

For actual source-native AY physical Hilbert sixteen-charge column `T_n`, and actual historical D2B28 SU2 Hamiltonian `H_hist`, all source-preserved explicit H3B2 `theta hCAR hHermitian color gamma J hColor hGamma hJ` hypotheses remain visible. For `u` in the exact *entire* native charge domain and any physical `w`, the theorem establishes the equivalence

```text
(∀ v : Dom(T_n), inner w v = (1/16) * inner (T_n u) (T_n v))
  ↔ (∃ hh : u ∈ Dom(H_hist), w = H_hist ⟨u, hh⟩).
```

This is an exact **operator-representing-vector characterization** on the complete natural charge domain, not merely a quadratic form restricted to a smooth core or a redefined/proxy Hamiltonian. Historical source BF/BH actual operator identity is an *accepted premise* requalified in this joint proof environment, not an assumption of the new conclusion.

**Not yet separately proved by H4E3A:** equality of explicitly native `(1/16) T_n†T_n` as a full partial operator with the historical `H_hist`, including exact natural domain/action equivalence; equivalence with the *independent* physical Hamiltonian via H4D4A/B; unconditional representation matching, Spin(9) sectors, spectra or an SU2 BFSS mass gap.

## Preserved failures and the successful correction

[H4E3A Gate #1 run #40128052652](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40128052652), job `120973615688`, compiled the first root whitelist-clean but failed at the second root's `rw [← pairedOriginalPhysicalNormalizedHamiltonian_eq_historical]` with a deterministic `whnf` timeout at 240000 heartbeats. No Gate #1 roots accepted and no cache saved. [Exact red audit](./OPENAI_MATH_BFSS_SU2_M4F9_H4E3A_GATE1_HISTORICAL_OPERATOR_WHN_F_TIMEOUT_RED_2026_10_24.md).

Gate #2 replaced broad rewriting of a dependent partial-operator expression with **typed proposition congruence** on the original strict-qualified BH operator equality:

```lean
congrArg
  (fun T : pairedGaugeData.physicalSpace →ₗ.[ℂ]
      pairedGaugeData.physicalSpace =>
    ∃ h : u ∈ T.domain, w = T ⟨u,h⟩)
  pairedOriginalPhysicalNormalizedHamiltonian_eq_historical
```

Followed by explicit `Eq.mp`/`Eq.mpr` composed with two prior qualified weak-form iff theorems. This strategy changed **only proof architecture**, no theorem statement, operator, source pin, hypotheses, or normalization. The Gate #1 red remains a preserved learning result.

## Successor priorities

1. Prove actual native `(1/16) • naturalComp T_n.adjoint T_n` exact natural domain/action equivalence to historical `H_hist`, first via BF generic `normalizedWeakRepresentative_iff_naturalAdjointSquare` composed with H4E3A, then full-domain equivalence. Use the H4D1 dense native source domain and existing H3B2 matching hypotheses; do not assume all `T_n.domain` is adjoint-square domain.
2. Compose with H4D4A/B's actual independent/native adjoint-square full domain/action and physical-input unitary, with the exact `1/16` scalar.
3. Preserve distinction of the proper physical-output isometric inclusion vs an onto ambient Hilbert unitary. Separately test Spin(9) global and spectral requirements; no eigenvalue or gap assertion is licensed.

**Accounting:** two strictly accepted support roots at H4E3A, no automatic increase to historical 309 principal roots.