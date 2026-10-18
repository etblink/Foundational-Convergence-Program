# BFSS SU2 — H5E8BF Gate #11 first-causal failure and source-preserving repair

**Date:** 2026-10-17 Pacific (2026-10-18 03:00 UTC). **Disposition:** `RED__TWO_MISSING_LEAN_NAMESPACE_OPENS__NOT_MATHEMATICAL_DISPROOF__NINE_ROOTS_NOT_QUALIFIED`.

## Evidence and boundary

- [Original Paired Hamiltonian Source Graph #11](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39090658923), job `117566508204`, head `cb203864f777a82845994417fc23b2562868ceb8`; job `failure`.
- The first failure was in the final **BF** source only. All prior strict steps passed: pinned upstream/dependency provenance, frozen G4K source reconstruction, source Haar 22 modules, BA density, BB true adjoint, BC natural-domain square, BD self-adjointness, BE normalized associated Hamiltonian.
- Lean `SU2BFSSPhysicalDomainL6H5E8BFOriginalSourceGraphAndPairedHamiltonianProbe.lean:110:6` and `:113:4`: `Unknown identifier originalPhysicalHilbertComplete`. Lean `:121:7`: `Unknown identifier originalMinimalPhysicalHilbertChargeAdjointSquare`. With `set_option autoImplicit false`, these unqualified names are not resolved.
- Root locations: `FCP.BFSSSU2PhysicalDomainL6H5E8BB.originalPhysicalHilbertComplete` and `FCP.BFSSSU2PhysicalDomainL6H5E8BC.originalMinimalPhysicalHilbertChargeAdjointSquare`. BE's implicit import of BB and BC makes definitions available but does **not** bring those namespace members into BF's short-name scope.
- Lean proceeded with error recovery and reported `sorryAx` on BF's `pairedOriginalPhysicalNormalizedHamiltonian_selfAdjoint` and `pairedOriginalPhysicalNormalizedHamiltonian_domain`; **these reported roots are NOT axiom-clean accepted proofs**. The six earlier `#print axioms` declarations in the RED compilation are not individually promoted; none of BF's nine claims are accepted until an entire strict gate passes.
- First source and workflow blob at failing gate: `fc217320320afb59dd9d1b999f1e5ca7092cb34b` and `d49b3abe7ce67292cfd1efe44f25664a65325cd3`. Artifact [#11](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39090658923/artifacts/12122883928) preserved build evidence.

## Focused correction and falsifiable next test

Add **only** two `open FCP.BFSSSU2PhysicalDomainL6H5E8BB` and `open FCP.BFSSSU2PhysicalDomainL6H5E8BC` directives to BF, keeping all nine declarations, proofs, original source definitions, gamma/color signs and source topology untouched. Update the strict CI **content-hash pin** for BF to its new blob. Run the exact PR-scoped original pinned gate; require nine complete BF axiom reports, no `sorryAx` and no Lean `error:`. If red again, inspect first causal diagnostic before further attempts.

There is no change to the already qualified mathematical evidence from BA–BE and no theorem about the independent manuscript, positive eigenvalues or mass gap.

**Governance:** Only the active S3L research branch; PR #25 remains draft/unmerged on S3K base, main/upstream unchanged. This audit is committed atomically with the source and strict gate pin to avoid an extra audit-only CI run.
