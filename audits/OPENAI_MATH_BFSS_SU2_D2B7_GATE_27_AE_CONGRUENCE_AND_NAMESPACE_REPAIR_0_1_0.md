# BFSS SU2 Physical Domain Gate #27 — D2B7 a.e. equality transport and namespace repair 0.1.0

**Date:** 2026-10-09 America/Los_Angeles (GitHub Actions UTC 2026-10-10).  
**Status:** `GATE_27_RED__D2B7_NOT_QUALIFIED`, next source repair **PROSPECTIVE / UNCOMPILED**.

## Compiler evidence and frozen acceptance boundary

[BFSS SU2 Physical Domain Bridge #27](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38025217816), run `38025217816`, job `114134517962`, tested SHA `b949eb3004cfdb395d9a63457e686896c0d0cc37`; previous D2B7 leaf blob `4560d4136cec10cfcb554cdad88b9b7321d0dff9`. The original pinned toolchain, source, dependency caches, frozen sources and **all accepted D1/D3A/D3B/D2A/D2B1/D2B2/D2B3/D2B3J/D2B4/D2B5/D2B6 recompilations and strict standard-axiom checks passed**. The only failing job step compiled new D2B7.

The new leaf returned three root classes of errors:

1. **Line 42:** `rw [hy]` attempted to rewrite the RHS from `ContinuousLinearMap.coeFn_compLp` expressed through `(G.fermion g⁻¹).toContinuousLinearEquiv...` inside the L² `G.fiberAction g⁻¹` application. These expressions are *definitionally* the same but rewrite matching did not unfold the source wrapper; Lean reported `Did not find an occurrence`.
2. **Line 65:** the expected qualified D2B5 theorem `sourceBosonPullback_norm` was out of namespace scope in D2B7; the original D2B6 leaf opened the D2B5 namespace, but a child import does not inherit the previous file's `open` command. The resulting source `L²` bosonic norm goal was therefore left unsolved.
3. **Lines 110–111:** the same syntactic mismatch caused `rw [hbx]` and `rw [hax]` to fail, when converting almost-everywhere equal source `coreToL2` representatives through the genuine fermion action.

Because `sourceFermionFiberAction_left_inv` was not compiled, all its successor inverse/norm/fixedness reports inherited `sorryAx`. All SIX new D2B7 declarations remain **UNQUALIFIED**; no green gate or mathematical proof result is claimed from Gate #27.

## Proof-only repair

Modify only the new D2B7 leaf. Explicitly `open FCP.BFSSSU2PhysicalDomainD2B5` so the previously accepted real source `sourceBosonPullback_norm` theorem resolves. For the three mismatched rewrites, use typed congruence through the **same actual source fermion action**:
```lean
    _ = G.fermion g (G.fermion g⁻¹ (v x)) :=
      congrArg (G.fermion g) hy
```
and
```lean
    _ = G.fermion g ((coreToL2 f) (G.boson g⁻¹ x)) :=
      congrArg (G.fermion g) hbx
    _ = G.fermion g (f (G.boson g⁻¹ x)) :=
      congrArg (G.fermion g) hax
```
The original a.e. facts `hy`, `hbx`, `hax` were generated from actual pinned `ContinuousLinearMap.coeFn_compLp`, `Lp.coeFn_compMeasurePreserving` and `coreToL2_ae`. The transport is ordinary equality congruence, not a new mathematical premise or physics constraint. This also matches the source-preserving technique used successfully in D2B4's physical-space membership proof.

The candidate MUST compile in the exact next pinned CI gate before acceptance. These changes **do not** modify any accepted D1–D2B6 source, source mathlib/OAI, SU2 gauge action, original physical-space definition, the target theorem statements or Haar probability.

## Remaining scientific horizon

If D2B7 qualifies, it will establish actual full-L² fermion and combined gauge **isometries**, genuine source physical-vector fixedness, and almost-everywhere consistency with the already accepted smooth-core Haar integrand. It still will **not** prove strong continuity in group parameter for all full-L² vectors, full-Hilbert Haar Bochner integrability, the norm-contractive projection, or the desired original `G.coreNormClosure = G.physicalSpace` equality. Those require separate source-faithful proofs. No BFSS spectrum, self-adjointness or experimentally validated physics claim is licensed.
