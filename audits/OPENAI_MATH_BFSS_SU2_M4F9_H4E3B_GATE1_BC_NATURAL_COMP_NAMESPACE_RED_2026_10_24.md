# BFSS M4F9 H4E3B Gate #1 — true native adjoint-square source namespace red

**Disposition:** STRICT RED, 0/2 accepted theorem roots. **Date:** 2026-10-24 Pacific.

- Repository `etblink/Foundational-Convergence-Program`; research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- [Actions run #40129584028](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40129584028), job `120978234844`, trigger commit `7c853e84057c3fcd17295e0ad4c6cbdee446ff20`: `completed/failure`. Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` verified.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3BNativeActualAdjointSquareHistoricalAction.lean`, exact Gate #1 blob `3a6bc946cac08302126d6fb7dc53d8b0f1f41b3c`.
- Qualified H4E3A cache `bfss-fcp-m4f9-h4e3a-weak-form-8297bb91-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` **hit and restored**, full ancestor checks `BFSS_H4E3B_NATIVE_HISTORICAL_ACCEPTED_ANCESTRY_PASS`. Failure is **not** provenance or missing `.olean`.
- Exact first compiler failures: `FCPM4F9H4E3BNativeActualAdjointSquareHistoricalAction.lean:57:17` and `:61:9` **unknown identifier `naturalComp`**; same issue lines 79/80/109 and `naturalComp_mem_domain` line 110. Second-root unsolved goal, unknown first-root constant and `sorryAx` are downstream. Strict compilation failed; no valid axiom-qualified roots and no child cache.
- Raw diagnostic artifact `bfss-m4f9-h4e3b-gate1-40129584028`, ID `12574981822`, zip SHA-256 `674490d6cd8efefc8870d90ff2ae4502e202d9b1d779c4c126f5a60c8fdaf2e0`.

## Exact mathematical source diagnosis

The original, formerly strict-qualified source module `SU2BFSSPhysicalDomainL6H5E8BCOriginalPhysicalChargeNaturalAdjointSquareProbe.lean` has blob `18d96cda9bb8e57665cf963455c5ceb305d3a109`; at lines 34/53/63/73/91, in namespace `FCP.BFSSSU2PhysicalDomainL6H5E8BC`, it **defines the actual local source-derived** `naturalCompDomain`, `naturalComp`, `naturalComp_mem_domain` and `naturalComp_apply`. They are not Mathlib-global `LinearPMap.naturalComp` names. The Gate #1 source imports that ancestor but only opened `LinearPMap` and `FCP.BFSSSU2PhysicalDomainL6H5E8BE`, not the defining `BC` namespace. The source-normalized BE theorem used `naturalComp` because BE expressly `open FCP.BFSSSU2PhysicalDomainL6H5E8BC`.

**Targeted Gate #2 correction:** Add `open FCP.BFSSSU2PhysicalDomainL6H5E8BC` in H4E3B, leaving both theorem statements and genuine BC natural two-stage partial composition unchanged. Re-pin exact source SHA in strict Gate #2 and reuse verified H4E3A parent cache with *identical* saved-path manifest. If further elaboration errors emerge, preserve them rather than raising heartbeat blindly.

## Scientific boundary

H4E3A Gate #2 remains accepted +2 **support** roots, full historical weak-form iff. H4E3B remains 0 accepted. The candidate uses exactly `(naturalComp T_n.adjoint T_n).domain`, not an illegal full-domain `LinearPMap.comp`. Neither the native normalized adjoint-square/historical-H exact equivalence nor any Spin(9) spectral claim is yet accepted. No change to frozen original math or canonical `main`.