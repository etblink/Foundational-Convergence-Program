# S1I Gate #1 — conditional independent-module transport: precise red evidence

**Date:** 2026-10-18 PDT. **Disposition:** Gate #1 **RED**; corrected candidate at Gate #2 awaiting strict qualification. Do not treat S1I as accepted yet.

- Frozen first run: [Independent Module Gauge Transport #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39146108969), run `39146108969`, job `117730167320`, `failure`, HEAD `9d5763f03835f8506361cbaaf08e02b40b49160e`.
- Failing original candidate source blob: `49f40a75d16f7fcaa32bdc2d07abbf047eb0c87c` (`SU2BFSSPhysicalDomainS1IConditionalCliffordModuleGaugeTransportProbe.lean`).
- Source-pinned upstream Lean 4.34.1, Mathlib and original Fock/gauge dependencies checked successfully; S1D/S1E/S1F/S1G/S1H all compiled with permitted-axiom checks before the new S1I step.

## First causal errors

1. `S1I...lean:89:65: error: unsolved goals`. Original `transportedGaugeHom_covariant` final step normalized the left finite sum by `simp only [map_sum, map_smul, hT, transportedGaugeHom, LinearEquiv.trans_apply, T.symm_apply_apply]`, but Lean retained `(transportedGaugeHom T W g) (T x)` inside the right finite sum. The residual goal was equal sums whose arguments differed only by explicit conjugated-action evaluation.
2. `S1I...lean:136:2: error: Type mismatch: After simplification...`. In `independent_gauge_intertwines_source`, `simpa` did not identify a source-level bundled function application with `T (W g v)`. The needed equality is `transportedGaugeHom T W g (T v) = T (W g v)`.
3. `#print axioms` included `sorryAx` for failed dependent declarations. **This is a red Lean proof, not a permitted kernel result**. The definition `transportedGaugeHom` itself compiled cleanly.

## Exact correction under strict test

Source edit `b1caacef42a3ae143f8bb1ccc712da885f106dc1`, repaired immutable blob `8fb5e258df5862c111a93241befe3da21f58dde6`: inserts small **proved** local lemmas `htransport` with the definitional equality `T (W g (T.symm (T x))) = T (W g x)`, discharged solely by `T.symm_apply_apply`; rewrites using the proved identity instead of implicit simplifier unfolding, and uses `htransport.symm.trans hv` in the final intertwining conclusion.

No original sign, source 48-theta generator action, exact source SU2 group, theorem conclusion, hypothesis `T`, `theta`, `W`, `hT`, `hW`, or accepted S1G/S1H file was changed. No unproved assumption, `sorry`, or external module construction inserted.

Strict requalification: [Independent Module Gauge Transport #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39147425965), source and workflow HEAD `a2134538bcc0940e21bce0bbaf06b7b711036170`, pin matches repaired source hash; workflow subsequently restored to manual-only. **Gate #2 must be observed to complete SUCCESS and print exactly four permitted-axiom roots before S1I becomes accepted.**

Scientific scope remains conditional on the **independent existence** of a Clifford module, its 48 exact Majoranas, a genuine Spin48-descended gauge representation, and a unitary generator-preserving identification. This transport test does not create these objects or establish spectrum, positive eigenvalues or a mass gap.

Governance: research S3L branch, draft PR #25, no merge into main or upstream math.
