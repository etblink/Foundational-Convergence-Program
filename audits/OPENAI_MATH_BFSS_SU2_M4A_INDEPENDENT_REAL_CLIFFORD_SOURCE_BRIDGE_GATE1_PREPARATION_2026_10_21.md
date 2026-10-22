# FCP — M4A independent real Clifford original-source bridge, strict Gate #1 PREPARATION

**Date:** 2026-10-21 PDT. **Branch base:** `30365446f0b69e53a98bd467bb4a9ef1eb64c87c`. **Status:** candidate staging only; **272 accepted theorem roots**, unchanged until an independently reviewed strict pass.

## Research source and immutable mathematical ancestry

The four new source candidates were supplied in `FCP_Independent_Spin48_Research_2026-10-21(1).zip`; no source file was modified during staging. Exact Git blob SHAs:
- `FCPIndependentCliffordIntertwining.lean`: `b06e0960f2c4a8b951309628add98469de094351`
- `FCPIndependentSpinRealization.lean`: `bbec62113f1c8d9576be1787a80b1dca1526b085`
- `FCPIndependentMajoranaAction.lean`: `79f0fec88784d8b88f22d43abc69c4d4a30c2686`
- `FCPIndependentOriginalCliffordBridge.lean`: `7574abb3e242fa5da747d740ea364c753140958b`

Previously strictly accepted source interfaces are kept unchanged: M3J `independent_original_generator_unitary`, Git blob `1cd42b286a18abf6e7f8c2348949f8de3748151c`; existing action helper Git blob `6f9312093df1fa155203ca2c4371237932298e20`; C1 original Fock real Clifford universal lift Git blob `91313c5e622577fd12fa4ce7ec59f457a816ae3a`. Math is pinned to `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

M3J qualified cache: `bfss-fcp-m3j-independent-original-unitary-v3-adc7f124-lean4341-d13f23b-Linux-X64`; C1 qualified cache: `bfss-s1v52l9e5c1-original-fock-clifford-algebra-lift-v3-adc7f124-lean4341-d13f23b-Linux-X64`.

## Gate objective and acceptance boundary

Strictly compile exactly one source-specific theorem root, `FCP.IndependentOriginalCliffordBridge.independent_original_clifford_intertwining`, establishing for any suitable labeled independent Majorana representation and any generator-preserving unitary `J` that `J (rho_theta x w) = originalFockCliffordAlgHom x (J w)` for every ORIGINAL real 48-dimensional Clifford algebra element `x`.

Freshly compile the generic Clifford intertwining, independent Spin realization, and Majorana CAR normalization modules under the real pinned Mathlib. Restore BOTH qualified accepted C1 and M3J source cache layers and reject missing parent .oleans before any new proof attempts. Verify the original source hash pins, candidate SHA-256 checks, exactly declared `#print axioms` reports, exclusion of `sorryAx` and compiler errors, and a newly saved qualified cache. Permitted axioms: `propext`, `Classical.choice`, `Quot.sound`.

One GitHub Actions workflow only, triggered by changing its OWN YAML on this research branch. No `workflow_dispatch` or broad source push trigger; main, pinned upstream math and PR #25 remain unchanged. The **separate** source gauge adapter `FCPIndependentOriginalGaugeBridge.lean` is intentionally NOT added: reserve `exists_independent_original_gauge_unitary` for a later discriminating source gate after M4A.

Local generic proofs were reported compiled with allowed axioms by Astra; neither `FCPIndependentOriginalCliffordBridge.lean` nor the source gauge adapter was compiled against the original source .olean closure before Gate #1. A red gate must preserve the exact first compiler failure, diagnose type/normalization and cache state, and **not** change the mathematical theorem to force green. A green gate would count **only one** new root, advancing 272 to 273 subject to independent source exact acceptance audit. It does **not** prove manuscript gauge-action transport, closed supercharge/Hamiltonian domains, or any BFSS positive spectrum theorem.
