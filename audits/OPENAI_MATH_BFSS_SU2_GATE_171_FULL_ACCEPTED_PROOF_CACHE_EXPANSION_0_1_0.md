# BFSS SU2 — Gate #171 accepted-chain compiled-cache expansion 0.1.0

**Date:** 2026-10-09 Pacific. **Status:** `PROSPECTIVE_CI_CACHE_CHANGE`; must be confirmed by a subsequent Actions gate. No mathematical theorem source changed.

## Intent and exact accepted boundary

The user requested including the newly kernel-qualified G4-K8E4 through G4-K10A modules in the precompiled Lean artifact cache, rather than re-elaborating them in every warm gate.

Source acceptance is Gate #171: run `38012405367`, job `114095110458`, tested source commit `6eeb4293abcc1cf3a111ff5c511f708cb5ed320a`, accepted tree `1833d2aa975a53d4d14f226da98276833e794768`. G4-K10A's five theorems proved original source closed joint-charge graph equality and its projected L² domain equality with exactly three permitted axioms. The original G4-K8E3 immutable cache is retained as the fallback.

## New cache contract

1. **Exact-source freeze:** Fetch the accepted `6eeb4293abcc1cf3a111ff5c511f708cb5ed320a` and require no differences to ANY `experiments/openai-math-su2-concrete-potential/` source. This prevents new research-source edits from silently borrowing stale proof objects. No prospective theorem leaf is allowed in this workflow version.
2. **Content-bound identity:** Separate immutable key `bfss-su2-accepted-g4k10a-v1` incorporates exact accepted source commit, runner OS/architecture, the hash of ALL experiment Lean files, the pinned upstream `lean-toolchain` and `lake-manifest.json`. The upstream Git checkout itself remains pinned at `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean remains 4.34.1; no source pin changes.
3. **Warm-path priority:** Restore complete G4-K10A cache first. If absent, restore the previous immutable G4-K8E3 cache. If both absent, preserve the existing full pinned cold compilation. The manual `workflow_dispatch.clean_build=true` path bypasses both caches and uses the full cold source-build chain.
4. **New qualified modules:** Emit and verify the `.olean` files for `SU2BFSSG4K8E4L2BridgeProbe`, `SU2BFSSG4K9ASourceChargeCoefficientCrosswalkProbe`, `SU2BFSSG4K9BSourcePairAndChargeReductionProbe`, `SU2BFSSG4K9COrderedPairCoefficientProbe`, `SU2BFSSG4K9DSourcePotentialMultiplierProbe`, and `SU2BFSSG4K10ASourceClosedJointChargeGraphProbe`, in this order.
5. **No silent acceptance:** Test all six `.olean` files are nonempty, then import accepted K8E4 + K10A modules into an ephemeral Lean smoke proof and print representative kernel axiom reports from ALL six stages; require nine reports and no `sorryAx` or errors. The existing full G4-K8E3 prerequisite-object tests remain in place for either cache-hit path. A new full-chain cache is saved ONLY after source compilation, module validation, and axiom smoke checks all pass, and only when `clean_build != true`.
6. **Integrity & access:** GitHub Actions cache is a performance artifact rather than a proof-authority substitute. The accepted Lean sources and witnessed #171 compiler results remain the authority; no new theorem, axiom, upstream source, framework claim, main-branch merge or upstream PR. Cache restore is OS/architecture/toolchain/manifest/source scoped. No untrusted pull-request restore introduced.

## Verification required

First following successful gate: confirm new key is saved and all source/axiom guards passed (a new cache hit is not expected on its creation run). A separate subsequent run with the same source lineage should show a hit for the new `full_proof_cache` step, skip redundant G4-K8E4→K10A compilation, and successfully import/inspect the cached sources. If either gate fails, inspect the exact Actions logs, repair the workflow only, and do not change mathematics to satisfy caching.

After successful cache qualification: STOP automatic proof-gate expansion. Make the next decision with a read-only 2026 manuscript-to-source closed-form/operator-domain crosswalk, respecting the original FCP source register and T6 adjudication.
