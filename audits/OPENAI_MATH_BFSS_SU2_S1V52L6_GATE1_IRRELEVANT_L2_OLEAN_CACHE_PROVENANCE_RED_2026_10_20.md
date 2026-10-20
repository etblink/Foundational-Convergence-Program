# S1V52L6 Gate #1 — RED: unrelated L2 Olean requirement in otherwise qualified L5 cache

**Disposition:** `L6_GATE1_RED__L5_CACHE_HIT__UNRELATED_L2_OLEAN_REQUIRED__FAILED_BEFORE_LEAN__ZERO_ROOTS_ACCEPTED`.

- [GitHub Actions run #39465858226](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39465858226), job `118776950284`, completed FAILURE on source/workflow checkout `f9810cfc2cc40b13e090778b0e1050b099f3b94f`.
- Exact L6 source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L6OriginalYPlaneSpinMembershipProbe.lean` Git blob `55858cbcedfa4ad98d67e20be42a86316906ad50`. Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core source blob, Lean 4.34.1, Mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612` preflight PASS.
- Accepted L5 original Y-plane cache `bfss-s1v52l5-original-yplane-lipschitz-v1-adc7f124-lean4341-d13f23b-Linux-X64` **restored successfully**.
- First and only failure marker from `Fail closed without accepted original source dependencies`: `S1V52L6_REQUIRED_QUALIFIED_OLEAN_MISSING=SU2BFSSPhysicalDomainS1V52L2OriginalZPlaneLipschitzMembershipProbe`. The old L3 Z-only workflow's L2 prerequisite was copied into new L6; L6 imports L5 and S1 directly, NOT L2. L5 was built independently from L4 and L1D; its valid cache need not contain L2.
- **No L6 Lean compiler invocation occurred.** No theorem diagnostic, `#print axioms`, acceptance or newly qualified `.olean`. Local S1V52 accepted count **76** unchanged.

## Exact repair

Remove only the unrelated L2 name from L6's required-import `.olean` loop, retain the actual qualified parent L5 and all true imported source prerequisite checks, immutable source hashes and parent cache key. Use a new v2 L6 save cache key. Rerun a single isolated Gate #2; do not retry the same stale imported loop or mix unrelated Z/L2 cache artifacts. Do not alter L6 theorem statements, genuine original 48-Majorana labels, positive-i Y sign or permitted axioms.

The failure is a correct fail-closed infrastructure result, not evidence for or against Spin membership. No modifications to canonical main, original upstream or draft PR #25.
