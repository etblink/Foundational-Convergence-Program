# BFSS M4F9 H4E3B Gate #2 — unused theorem binder + WHNF resource red

**Date:** 2026-10-24 Pacific. **Disposition:** STRICT RED, **0/2 newly accepted roots**.

- [GitHub Actions run #40130410163](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40130410163), job `120980733723`, `completed/failure`; immutable gate commit `8bfae313a1500e1d73a08d15b21e18d78ec16b05`.
- Exact candidate source blob `1c79a6e62c0c16e41e94bec7070323bf22aad75a`; corrected source `open FCP.BFSSSU2PhysicalDomainL6H5E8BC` and preserved original theorem statements, 1/16 normalization, true `naturalComp T_n.adjoint T_n` natural domain.
- Original pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all preflight and toolchain checks passed.
- Qualified exact H4E3A parent cache `bfss-fcp-m4f9-h4e3a-weak-form-8297bb91-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` **hit and restored** with matching saved path manifest; old BH/BE and H4D1 ancestors presence verified. This red is **not** cache failure.
- **First compiler error:** `FCPM4F9H4E3BNativeActualAdjointSquareHistoricalAction.lean:56:7: error: Variable name hu is not explicitly referenced.` The source's first theorem has a domain membership binder needed by proof construction but not explicitly referenced in the *statement*. In strict warnings-as-errors mode name it `_hu`, without deleting the mathematical input.
- **Second compiler error:** `FCPM4F9H4E3BNativeActualAdjointSquareHistoricalAction.lean:88:0: error: (deterministic) timeout at whnf, maximum number of heartbeats (240000)`. The second theorem's proof elaborates the source-generated nested partial Hilbert adjoint-square and rewrites `naturalComp_apply`. It did not complete.
- **First** `pairedNativeNormalizedAdjointSquare_iff_historicalRepresentingVector` printed whitelist-only `propext, Classical.choice, Quot.sound`, but compilation had errors and strict gate failed, so do **not** count as accepted. **Second** `pairedNativeAdjointSquare_action_eq_historical` printed `does not depend on any axioms` because declaration did **not** compile. Do not interpret this as a proved axioms-free result.
- No H4E3B child cache was saved. Original diagnostic artifact ID `12574224868`; sha256 zip `5a0126d8bdc073903ceb41e83e082b0eb3960284adf666da808d1e3c518d90d8`.

## Targeted mathematical proof engineering adaptation

Keep all original theorem statements and source H. To prove the second **one-way action** avoid elaborating `naturalComp_apply` and the huge double-subtype `hAction/hRep` equality entirely. The genuinely densely defined native AY charge has a Hilbert adjoint; `LinearPMap.adjoint_isFormalAdjoint hd ⟨T_n u,hOut⟩ v` directly gives

```text
inner (T_n.adjoint (T_n u)) v = inner (T_n u) (T_n v).
```

Then `one_sixteenth_inner_smul` supplies **exactly** the paper's normalized `1/16` weak representation. Apply **accepted H4E3A** `pairedOriginalNativeWeakForm_iff_historicalHamiltonian` to obtain the authentic historical H domain witness and identical representing vector. This is a source-original theorem application, **not** a new operator definition or loophole. It minimizes reducibility and preserves two-stage natural domain from the theorem's explicit `hu` and `hOut`. The first `normalizedWeakRepresentative_iff_naturalAdjointSquare` theorem remains unchanged except rename unused statement binder to `_hu`.

Launch a new pinned Gate #3 only for the revised exact source blob; restore previous accepted H4E3A cache with its exact saved path manifest, preserve strict exact root set, no `sorryAx`, immutable original source. Record any new compile issues verbatim.

## Scientific status

H4E3A remains accepted 2 support roots; H4E3B remains 0/2. Gate #1 failure was a missing BC namespace, now fixed; Gate #2 exhibits the two independently observed linter/resource errors. No source→independent historical Hamiltonian full-domain equality and no spectral claims are accepted. Canonical `main`, draft PR #25 and original math unchanged.