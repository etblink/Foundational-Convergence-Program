# FCP BFSS Project Lead — H4E3B2 accepted; H4E3C1 exact historical-domain gate; C2 prospective

**Date:** 2026-10-24 Pacific. **Control:** Seek truth, preserve reds, do not promote root based on source shape or a partial axiom report. Live status may have changed after writing; inspect the run and original logs. Branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Canonical `main`, draft PR #25, and original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` unchanged. Frozen Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, axiom whitelist only `propext`, `Classical.choice`, `Quot.sound`.

## Last accepted roots — H4E3B2 Gate #1 green 2/2

Independently verified the actual completed [Actions run #40132472229](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40132472229), job `120986921193`. Exact source `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3B2GenericAdjointWeakFormHistoricalAction.lean`, git blob `ea73b16cbfbd7dc4d30c21a09320685f20e1346c`; source commit `034804c5234515660f442714685513d6044a3c0a`, workflow commit `7105d93b5386358329ce3a2d7646e0decda0f3ca`. Full source preflight, B1 exact cache restoration and 92-entry saved manifest, actual historic AY/H1/BH `.olean` ancestry, new Lean compile, strict root-exact two-axiom reports and no `sorryAx` or unapproved warnings, child cache and unfiltered artifact all passed.

Accepted **two support roots**:
1. `FCP.M4F9H4E3B2GenericAdjointWeakFormHistoricalAction.genericNormalizedAdjointWeakForm`.
2. `FCP.M4F9H4E3B2GenericAdjointWeakFormHistoricalAction.pairedNativeAdjointSquare_action_eq_historical`.

Both depend only on `[propext, Classical.choice, Quot.sound]`. They establish generic normalized Hilbert-adjoint weak form for a densely defined `T` and the **actual source AY native charge** forward natural adjoint-square domain→ genuine `pairedSU2PhysicalHamiltonian` domain, with exact `H_hist u=(1/16) T_n†(T_nu)` and explicit H3B2 `theta hCAR hHermitian color gamma J hColor hGamma hJ` matching. No global `LinearPMap.comp` sleight of hand; the input must be in charge domain and output in the adjoint domain. No false onto-ambient-output claim.

Saved B2 child cache:

```text
bfss-fcp-m4f9-h4e3b2-adjoint-action-ea73b16c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Unfiltered artifact ID `12576220530`; ZIP SHA256 `32e1b90c7322d9da56b9d82888cb45ce1911fd03291bc95408fbd434f9910750`. [B2 strict acceptance audit](../audits/OPENAI_MATH_BFSS_SU2_M4F9_H4E3B2_GATE1_GENERIC_ADJOINT_HISTORICAL_ACTION_TWO_ROOTS_STRICT_ACCEPTANCE_2026_10_24.md), acceptance audit commit `7a52fccf624021d7e32fa29af239bcd6c3f0bdf9`.

Also previously independently accepted:
- H4E2B +2 support: true source-native/ambient full charge domain iff and exact normalized polarized form.
- H4E3A +2 support: exact native full-domain weak form ↔ actual source historical H represented action.
- H4E3B1 +1 support: actual source-native normalized **BC.naturalComp T_n.adjoint T_n** representing-vector iff genuine historical H (for charge-domain inputs). B1 [run #40131727346](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40131727346).
- Earlier H4D4A/B: strictly qualified actual original/native ↔ independent physical Hilbert adjoint-square natural-domain and action via the physical-input unitary. Future normalized transport must preserve exactly 1/16.

Combined H4E3B Gates #1/#2/#3 remain genuine reds (namespace mismatch; unused binder + `whnf`; full-source normalization `whnf`); no retroactive acceptance.

## H4E3C1 — reverse historical domain into full native charge domain, GATE ACTIVE

New source `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3C1HistoricalDomainNativeCharge.lean`, exact source blob `b41c4a939ec4b999af801ae06e0e846196b43fde`, source commit `56a26f42a63b62c1adc552e7cba2ff4d82ca88c5`. One prospective theorem:

`FCP.M4F9H4E3C1HistoricalDomainNativeCharge.historicalHamiltonian_domain_subset_nativeCharge`

Explicit mathematical route:

1. Reuse qualified BH exact **partial-operator equality** `pairedOriginalPhysicalNormalizedHamiltonian_eq_historical` to transport domain membership from actual historical H to true source AY/BE normalized `(1/16)T_a†T_a` via *typed operator-domain congruence*, avoiding expensive dependent `rw`.
2. Apply accepted BF `pairedOriginalPhysicalNormalizedHamiltonian_domain`, producing membership in real source adjoint square.
3. Apply original source-derived BC `naturalComp_domain_le` to get actual AY ambient source sixteen-charge domain (not claiming the full charge-domain lies in square domain).
4. Apply accepted H4E2B `pairedOriginalAYAmbientNative_fullNaturalDomain_iff` using all H3B2 matching hypotheses to get real AY **native** charge domain.

[H4E3C1 strict Gate #1 run #40133214982](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40133214982), workflow commit `939be1cabc4c0bf722b0131ffdfad68c438411e3`, **in progress at this checkpoint, not yet accepted**. Restores B2 complete **93-entry** saved parent cache path manifest and source pins; one exact root and axiom whitelist; saves new child cache only upon complete green. Job `120989189483` was last checked progressing through disposal disk reclaim; source preflight passed.

## H4E3C2 — staged candidate, DO NOT GATE until C1 accepted

Prospective source `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3C2NativeSquareHistoricalFullDomainAction.lean`, commit `001387fa5cd6dda8d3f650bde57f823258bdd98e`, two proposed roots:

1. `nativeNormalizedSquare_naturalDomain_iff_historical`: true original AY native normalized adjoint-square natural domain ↔ historical D2B28 H domain. Forward direction from B2 genuine action/domain witness; reverse from **C1** domain→native charge and B1 representing-vector iff using `w=H_hist u`.
2. `nativeNormalizedSquare_fullAction_eq_historical`: exact normalized `(1/16) • (BC.naturalComp T_n.adjoint T_n)` action equals historical H on *every* pair of domain witnesses. Use B1 with `w=(1/16) naturalComp...`, then `Subtype.ext rfl` to reconcile dependent historical-domain proofs. No unqualified operator synonym is needed.

Do not promote these until C1 accepted and C2 independently compiles with exact permitted axioms, no source warning, saved `.olean`/cache. If C1 red, preserve first causal diagnostic and adapt minimal source name/normalization correction before launching a C2 gate. If C2 red, consider isolate domain theorem and action theorem into separate roots/gates, as proved fruitful for B1/B2.

## Subsequent independent Hamiltonian boundary

After separately qualified C2 exact source-native ↔ actual historical H domain and action, compose with previously qualified H4D4A/B independent/native `U` unitary adjoint square exact domain/action to establish the genuine independent physical Hilbert Hamiltonian via `(1/16)` adjoint-square, with the actual original source historical H. Explicit matching hypotheses continue to bind; no automatic global independent representation equivalence or spectral gap. Spin(9) spectral-sector constraints, point spectrum, eigenvalue existence and BFSS mass gap are separate future research tasks.

**Accounting:** H4E3B2 +2 strictly accepted **support** roots; C1 0 pending; C2 0 prospective; no automatic increase in historical 309 **principal** theorem-root count. Negative knowledge audits and original source hashes remain preserved.
