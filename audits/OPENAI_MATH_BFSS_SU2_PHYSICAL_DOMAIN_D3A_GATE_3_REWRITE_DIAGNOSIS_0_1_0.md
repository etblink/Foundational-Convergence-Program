# BFSS Physical Domain D3A — Gate #3 exact duplicate-rewrite repair 0.1.0

**Date:** 2026-10-09 Pacific (GitHub UTC 2026-10-10). **Status:** `FAILED_COMPILATION__DUPLICATE_CONV_REWRITE`; new patch `UNCOMPILED`, awaiting next dedicated Physical Domain Bridge gate.

## Compiler evidence

[Physical Domain Bridge #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38015284628), GitHub run `38015284628`, job `114104073915`, tested commit `14a4465766bf94919da8750e79e3e333227ddc0a`, source blob `a579711e3392099655a57dd909bcb7433ca13fa9`. Accepted K10A cache successfully restored and checked. Qualified unchanged D1 file recompiled, passed all five prior axiom checks. Prospective D3A compile FAILED exactly at `SU2BFSSPhysicalDomainD3AKineticGaugeContractionProbe.lean:64:28` with `rewrite failed: Did not find an occurrence of ... U (b i)`; target expression already had `K (∑j c i j • b j) (D (∑j c i j • b j))` on its LHS.

The first `conv_lhs => rw [hexpand i]` had replaced BOTH occurrences of `U (b i)`. The immediately repeated second `conv_lhs => rw [hexpand i]` was therefore invalid and blocked the later distributivity simplifier. Both public D3A theorem axiom reports contained `sorryAx`, so **NEITHER is accepted**. No contradictory mathematical fact or gauge-covariance defect was reported.

## Bounded candidate repair

Delete ONLY the redundant second rewrite, document why the first rewrite already covers both arguments, and preserve exact theorem statements and all remaining steps. The *underlying fully typed* source-specific orthogonal-basis contraction proof is unchanged. The next gate must compile both D3A public theorems with precisely `[propext, Classical.choice, Quot.sound]` and no `sorryAx`. If a deeper `simp only` goal remains, inspect the exact new diagnostic and repair algebraic normalization only.

**No** original G4-K10A source or cache-key modification; **no** changes to accepted D1, source pins, physics, theorem goals, or full BFSS workflow. D3B charge-image preservation and D2 physical-core density remain unproved. No main merge, upstream PR, or spectral/empirical promotion.
