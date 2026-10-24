# FCP BFSS Project Lead H4E3C2 accepted — H4E3D1 literal normalized native/historical partial operator equality Gate #1

**Date:** 2026-10-24 Pacific. Status is time-indexed. At succession, independently inspect the live Actions run and original Lean logs rather than relying on this checkpoint. Truth and negative knowledge over superficial green counts. Research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Canonical `main`, PR #25, and original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` frozen. Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; permitted axioms exactly `propext`, `Classical.choice`, `Quot.sound`.

## Newly strictly accepted — H4E3C2 two support roots

Independently verified [H4E3C2 Gate #1 run #40134781088](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40134781088), job `120993868968`, completed/success; triggering workflow commit `a2b3617a9d600b5e994f605eedda55ca924af8aa`; exact candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3C2NativeSquareHistoricalFullDomainAction.lean`, blob `a7b2ba6c9a9dbb9bde51ecd8905c787526ad0591`, original authoring commit `001387fa5cd6dda8d3f650bde57f823258bdd98e`.

Original pinned source/Mathlib/Lean preflight, exact qualified H4E3C1 cache restoration, B2/B1/H4E3A/BH/BC source and `.olean` ancestry, fresh `lean -DwarningAsError=true` two-root compilation, both exact reports with whitelisted axioms, no `sorryAx`, child cache save and unfiltered diagnostics artifact all passed.

The two exact roots:
```text
FCP.M4F9H4E3C2NativeSquareHistoricalFullDomainAction.nativeNormalizedSquare_naturalDomain_iff_historical
FCP.M4F9H4E3C2NativeSquareHistoricalFullDomainAction.nativeNormalizedSquare_fullAction_eq_historical
```
Both report `depends on axioms: [propext, Classical.choice, Quot.sound]`. For all physical source inputs, under unchanged and explicit `theta hCAR hHermitian color gamma J hColor hGamma hJ` representation-matching hypotheses, the ACTUAL native Hilbert AY two-stage `BC.naturalComp T_n.adjoint T_n` domain is iff the genuine historical D2B28 source `pairedSU2PhysicalHamiltonian.domain`; for every valid pair of dependent domain witnesses, its normalized `(1/16 : ℂ) • BC.naturalComp T_n.adjoint T_n` action equals the actual historical operator action.

**Qualification boundary:** genuine full mathematical domain-and-action equality established, but a separately named literal `LinearPMap` operator equality root is still unqualified until H4E3D1 green.

Accepted C2 child cache:

```text
bfss-fcp-m4f9-h4e3c2-full-domain-a7b2ba6c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Raw original log artifact `bfss-m4f9-h4e3c2-gate1-40134781088`, ID `12576397794`, ZIP SHA256 `badb9154522743222610c64f1e066ace43060cc88c81e101dbc39ad83f7287d0`.

[Formal H4E3C2 strict two-root acceptance audit](../audits/OPENAI_MATH_BFSS_SU2_M4F9_H4E3C2_GATE1_NATIVE_HISTORICAL_FULL_DOMAIN_ACTION_TWO_ROOTS_STRICT_ACCEPTANCE_2026_10_24.md), commit `0eb62485188a2216c555e2dee12d77e34c8539e3`.

Previous strictly accepted support roots (distinct from historical 309 principal tally): H4E2B +2 source ambient/native full AY charge domain/form; H4E3A +2 native historical weak-form iff; H4E3B1 +1 true native actual natural adjoint-square/historic vector iff; H4E3B2 +2 generic normalized formal adjoint and genuine native historical forward action; H4E3C1 +1 historical-H domain implies native charge domain; now H4E3C2 +2 full natural-domain iff/action. All H4E3B combined Gates 1–3 remain red for identifier/binder/WHNF; C1 Gate #1 red for unknown source BB adjoint symbol plus isDefEq; these are documented with original diagnostic artifacts, **no retrospective credit**.

## Next experiment: H4E3D1 literal operator equality — LIVE, 0/1 until fully green

The **pinned Mathlib source** `leanprover-community/mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/LinearAlgebra/LinearPMap.lean`, explicitly declares:

```lean
LinearPMap.ext (h : f.domain = g.domain)
  (h' : ∀ ⦃x⦄ ⦃hf : x ∈ f.domain⦄ ⦃hg : x ∈ g.domain⦄,
      f ⟨x,hf⟩ = g ⟨x,hg⟩) : f = g
LinearPMap.smul_domain (a : M) (f : E →ₛₗ.[σ] F) :
  (a • f).domain = f.domain
LinearPMap.smul_apply (a : M) (f : E →ₛₗ.[σ] F)
  (x : (a • f).domain) : (a • f) x = a • f x
```

H4E3D1 literal equality candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3D1NativeHistoricalExactPartialOperator.lean`, staged source commit `4b8d745fb1c8fda980d84f76de8195d635cbc1f8`, immutable blob `de0f63e8952f5ce3c349e9325438b6ce98be4ff2`.

One intended exact theorem under H3B2 matching:
```lean
pairedNativeNormalizedAdjointSquare_eq_historical :
  letI : CompleteSpace pairedGaugeData.physicalSpace := ...
  (1 / 16 : ℂ) •
    FCP.BFSSSU2PhysicalDomainL6H5E8BC.naturalComp
      pairedOriginalNativePhysicalHilbertChargeColumn.adjoint
      pairedOriginalNativePhysicalHilbertChargeColumn
  = pairedSU2PhysicalHamiltonian
```

Proof strategy uses C2 `nativeNormalizedSquare_naturalDomain_iff_historical` for `Submodule.ext` domain equality under `LinearPMap.smul_domain`; then pinned Mathlib `LinearPMap.ext` pointwise action with `LinearPMap.smul_apply` and the accepted C2 `nativeNormalizedSquare_fullAction_eq_historical`. This is a **proof-presentation adapter** for already accepted full domain/action results, not an alteration of Hamiltonian, gamma, gauge, normalization, or source.

Qualifying workflow `.github/workflows/bfss-m4f9-h4e3d1-native-historical-exact-partial-operator-strict-gate1.yml`, commit `b75f147da8c021bcc80b4f531f461d2e7d9e0699`.

[H4E3D1 strict Gate #1 run #40135657287](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40135657287) **in progress at handoff, not accepted**. It restores the original saved **95-entry C2 parent cache manifest** with exact cache key and immutable source validation, compiles one exact `LinearPMap` equality root with the three allowed axioms, no sorry/unchecked warnings, saves child cache only upon full green. Original diagnostics artifact always retained. Check live job conclusion and first causal Lean error if red; preserve red audit. Do NOT silently replace source operators or increase heartbeats instead of identifying the first failure.

## After accepted D1: independent realization

Open already strictly accepted `FCPM4F9H4D4AActualNativeAdjointSquareDomain.lean` (source blob `4062f563486088fcfeb47647938bc03a19363639`) and `FCPM4F9H4D4BActualNativeAdjointSquareAction.lean` (blob `67f10232b7b03d33a6ad5a83ab8a65b152bfc391`) and inspect exact signatures. D4A `nativeAdjointSquare_naturalDomain_iff` transports true independent E2 two-stage physical Hilbert square domain to actual AY source-native square domain by `independentPhysicalUnitary theta hCAR hHermitian J hJ` and output unitary (the output map is not the source-native inclusion into ambient). D4B `nativeAdjointSquare_action_intertwine` transports exact unnormalized native adjoint action. Preserve the **(1/16)** coefficient using linearity of the actual physical unitary. Combine with accepted D1 literal historical operator or C2 full domain/action, never assume historic/independent operators identical without unitary conjugation and explicit hypotheses.

Specifically, prove under H3B2 matching for each independent physical `x` in true E2 square domain, historical `H_hist` domain at `U x`, and `H_hist(U x)=U((1/16)T_i†T_i x)`; prove the reverse historic domain via unitary surjectivity and D4A iff. Then literal conjugacy operator equality can be packaged in its own strict lemma. Spectral comparison, Spin(9) sector properties and BFSS mass gap **not implied** by this Hilbert operator comparison alone.

**Accounting:** H4E3C2 +2 strictly accepted **support** roots, D1 +0 until gate qualified. The historical 309 **principal** root ledger remains unchanged without separate reconciliation. Frozen originals, research branch only, canonical `main` and draft PR #25 unchanged.