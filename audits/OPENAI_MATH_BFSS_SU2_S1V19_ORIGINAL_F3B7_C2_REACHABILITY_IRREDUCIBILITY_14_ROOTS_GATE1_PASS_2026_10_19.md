# BFSS SU(2) S1V19 — ORIGINAL F3B7–F3C2 signed reachability and theta irreducibility ACCEPTED

**Research date:** 2026-10-19 PDT. **Evidence status:** strict, source-pinned Lean kernel pass; original Fock source only. This audit was independently cross-checked against the completed job's actual Lean `#print axioms` log and compile/cache-save output.

## Immutable acceptance evidence

- [Original F3 Signed Reachability And Irreducibility Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39289623155): **SUCCESS**, job `118186562467`, exact checkout `3cc46d8a5d5e8186d39efd9030d6a98ffe92c298`.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean **4.34.1**; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Runner verified unchanged source blobs, original toolchain, original source imports, restored previously accepted F3B6 cache, and fresh nonempty compiled `.olean` outputs.
- The complete job emitted the strict terminal marker `ORIGINAL_FOCK_F3_B7_C2_REACHABILITY_IRREDUCIBILITY_14_ROOTS_KERNEL_PASS` and saved the accepted cache `bfss-s1v19-isolated-f3c2-irreducible-v1-adc7f124-lean4341-d13f23b-Linux-X64`. This is an actually saved cache, not an assumed cross-branch cache.
- Every exact named root below printed ONLY `[propext, Classical.choice, Quot.sound]`; the validator checked the exact 4/2/3/2/3 source-specific root counts with no `sorryAx`, Lean `error:`, or missing identifiers. Nonfatal Lean style warnings were present in B7/C1 and are not mathematical errors.

| Actual original Lean source | Frozen Git blob | Strictly qualified root names |
|---|---|---|
| `SU2FermionF3B7SignedModeProbe.lean` | `a73bfda89554c428a9714cc372a857f11eb7475b` | `creator_occupationKet`; `annihilator_occupationKet_of_mem`; `creationCoefficient_ne_zero_of_not_mem`; `annihilationCoefficient_ne_zero_of_mem` |
| `SU2FermionF3B8LocalReachabilityProbe.lean` | `0ee55f31b51e7fbe3074a4278a1addefb6f48a3c` | `thetaInvariant_insert_occupationKet`; `thetaInvariant_erase_occupationKet` |
| `SU2FermionF3B9FiniteReachabilityProbe.lean` | `c5c996c2e7a98ab952900c44c3745efa00faa57b` | `thetaInvariant_vacuum_of_occupationKet`; `thetaInvariant_all_from_vacuum`; `thetaInvariant_all_occupationKet_of_one` |
| `SU2FermionF3C1SubmoduleDichotomyProbe.lean` | `5900cec03dd0eb35688647270fa8809ce3ef2ea3` | `thetaInvariant_eq_top_of_nonzero`; `thetaInvariant_bot_or_top` |
| `SU2FermionF3C2ThetaFieldsProbe.lean` | `95cf7e3e59990cd4155bc861fef82b13c0b36150` | `thetaCandidate_upstream_selfAdjoint`; `thetaCandidate_upstream_CAR`; `thetaCandidate_upstream_irreducible` |

## Mathematical statement and limits

The exact ORIGINAL source fermionic `thetaCandidate` on `OAI.BFSSQuantum.Fermion 2` now has, through the pinned original source and accepted predecessor Fock stages, the genuine upstream `AlgebraData 2` self-adjointness, CAR normalization, and **irreducibility field type**:

```lean
∀ W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2),
  (∀ α A, ∀ w ∈ W, thetaCandidate α A w ∈ W) →
    W = ⊥ ∨ W = ⊤
```

The original proof path is **not** merely an abstract irreducibility assumption: F3B7 gives signed creator/annihilator transitions, F3B8–B9 reachability, F3C1 invariant-submodule dichotomy, and F3C2 the exact upstream field declaration. This resolves the original F3B7–F3C2 import/axiom dependency on this isolated branch.

It does **NOT** automatically qualify the later exact ORIGINAL `SU2BFSSFullAlgebraDataProbe`, G1A/G1B/G2A/G2B/G3A/G3B, S1G/S1J, S1V19 or S1V20, until those files are compiled in the same correctly pinned source closure. In particular S1V21's original upstream `adjointCoefficient` z-quarter theorem is accepted only with explicit `hcolor` and `hg` premises; the genuine original G1A/S1G discharge is still to be verified. No global continuous SU(2)→Spin(48) group lift or manuscript physical operator-domain/unitary/spectral theorem has been proved by this gate.

## Next bounded scientific proof decision

Reuse the exact accepted F3C2 cache and original OAI CovariantFields cache. Stage the smallest **strict original full-AlgebraData/G1A** gate first, without recompiling F3B7–C2. Then qualify, in source-sized bounded groups, G1B/G2A/G2B and G3A/G3B plus the already accepted original S1G/S1J import closure; only then attempt S1V19 exact original `sourceZ sourceQuarterTurnTime` coefficient bridge and S1V20 exact original `sourceRealMajoranaMatrix` equality with the accepted standalone 16-block Spin(48) quarter action. Check source normalizations, output-row/input-column convention, full import closure, and only allowed axioms.

Preserve the negative lessons: historical absent cross-branch `.olean` caches were infrastructure obstacles rather than mathematical counterexamples; the isolated branch's staged pin-qualified caches now remove this particular prerequisite. Failed whole-file Lean probes never become qualified merely because earlier roots printed axioms. Each future red must be classified by its first causal diagnostic before redesign. Do not start broad PR25 workflows or merge this research-only branch.

**Repository boundary:** `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` only; original upstream, PR #25, and canonical main unchanged.
