# BFSS M4F9 H4E3C1 — Gate #1 source adjoint name and expensive definitional equality RED

**Date:** 2026-10-24 Pacific. **Disposition:** STRICT RED; 0/1 new roots accepted. This is not a demonstrated mathematical counterexample.

## Immutable evidence

- [Actions run #40133214982](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40133214982), job `120989189483`, `completed/failure`, trigger workflow commit `939be1cabc4c0bf722b0131ffdfad68c438411e3`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3C1HistoricalDomainNativeCharge.lean`, Gate #1 exact blob `b41c4a939ec4b999af801ae06e0e846196b43fde`.
- Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed preflight and restoration.
- Exact qualified B2 cache `bfss-fcp-m4f9-h4e3b2-adjoint-action-ea73b16c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` **hit**, with its 93-entry saved manifest, all B2/B1/H4E3A/H4E2B/BC/BF/BH checked `.olean` and historic source pins. Failure was not missing ancestry or cache.
- Original Lean errors in order: line 79:7 `Unknown identifier originalMinimalPhysicalHilbertChargeAdjoint` (defined in `FCP.BFSSSU2PhysicalDomainL6H5E8BB`, but C1 did not open BB); line 78:4 deterministic `isDefEq` timeout at 240000 heartbeats in `change u ∈ (naturalComp ...).domain at hSourceSquare`; line 51:0 deterministic `whnf` timeout at 240000 for the failed theorem declaration. The final axiom print `does not depend on any axioms` is **not** an accepted proof, since elaboration failed. 0/1 roots, no child cache.
- Unfiltered original diagnostics artifact `bfss-m4f9-h4e3c1-gate1-40133214982` ID `12576685479`, ZIP SHA256 `7edeb5bccfda8aa7f361b01cd1a39937c95a8534292911a6015335a90d1d3b6d`.

## Source-specific correction, not a mathematical relaxation

The already imported accepted `FCP.BFSSSU2PhysicalDomainL6H5E8BC` source module, exact historical source `SU2BFSSPhysicalDomainL6H5E8BCOriginalPhysicalChargeNaturalAdjointSquareProbe.lean`, contains the theorem `originalMinimalPhysicalHilbertChargeAdjointSquare_domain (ψ)`:

```text
ψ ∈ (originalMinimalPhysicalHilbertChargeAdjointSquare M G).domain ↔
∃ hψ : ψ ∈ (originalMinimalPhysicalHilbertChargeColumn M G).domain,
  originalMinimalPhysicalHilbertChargeColumn M G ⟨ψ,hψ⟩ ∈
  (originalMinimalPhysicalHilbertChargeAdjoint M G).domain
```

Instead of the uncontrolled `change` through the entire source adjoint-square definition followed by `naturalComp_domain_le`, apply the left-to-right half of **that exact qualified source theorem** and extract its first witness. This avoids both the missing `BB` open and dependent definitional equality expansion. Keep the genuine historical BH partial-operator equality, BF normalized exact square-domain equality, H4E2B native/ambient full charge-domain iff, all matching hypotheses and exact operators unchanged. Qualify corrected blob under an immutable Gate #2. Preserve any new red separately.

## Scope and root accounting

H4E3B2 +2 strictly accepted **support** roots and H4E3B1 +1 support root remain intact. H4E3C1 0 newly accepted until a full green. H4E3C2 prospective and MUST NOT be qualified on an unaccepted C1 dependency. No Spin(9) spectral or BFSS mass-gap assertion follows. Canonical `main`, original math, draft PR #25 unmodified.