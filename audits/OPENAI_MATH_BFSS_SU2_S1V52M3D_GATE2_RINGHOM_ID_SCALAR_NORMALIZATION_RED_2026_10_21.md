# S1V52M3D — full source Clifford/Fock image Gate #2 RED: RingHom.id scalar normalization

**Disposition:** `M3D_GATE2_RED__ONE_LOCAL_SCALAR_REWRITE_OBSTRUCTION__0_NEW_ROOTS__262_CUMULATIVE_UNCHANGED`.

## Primary evidence

- [Strict M3D Gate #2 run #39690914920](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39690914920), job `119536585180`, workflow commit `9dbeb860ef1c5f1c8669614fe085d94d9cdfb07a`.
- Exact source commit `159de0dd364ce137eff976c90d94c5b6592fa7ec` on `research/fcp-m3d-full-image-gate2-20261021`, blob `f2ea9a76299c7b4145a749f2141e51fe0f12f7e2`. Exact M3C cache HIT; Lean 4.34.1, frozen original upstream, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 and source parent checks all passed.
- Previous Gate #1 failures (premature `private abbrev B := Module.End A V` before `Module A V`) are gone after installing exact M3B module and scalar-tower instances **before** the `B` abbreviation. Jacobson `Module.Finite` inference reached the intended theorem.
- Exactly **one** Lean error at line 57, inside the construction of the `B`-linear map from an arbitrary complex-linear Fock operator:
```text
Type mismatch: After simplification,
  ContinuousLinearMap.map_smul f c v
has type
  f (c • v) = c • f v
but is expected to have type
  f (c • v) =
    (RingHom.id B) ((algebraMap ℂ (Module.End A V)) c) • f v
```
- As compilation failed, the resulting theorem printout contains `sorryAx`. **M3D root is unaccepted**; no M3D qualified cache saved. The source, logs and diagnostic artifacts were preserved.

## Next narrowly scoped correction

In `map_smul'`, following accepted Schur surjectivity `obtain ⟨c, rfl⟩ := originalComplexCliffordFock_scalarCommutant.2 b`, reduce the explicit identity hom first. Replace
```lean
simpa only [algebraMap_smul] using f.map_smul c v
```
with
```lean
simpa only [RingHom.id_apply, algebraMap_smul] using f.map_smul c v
```

Pinned Mathlib contains `RingHom.id_apply`. This is a scalar elaboration normal form, not a change to the original Jacobson argument or an added assumption. Do not retry unchanged Gate #2; run a distinct source-pinned Gate #3 preserving exact theorem statement.

**Scientific ceiling remains:** No source algebra-image surjectivity accepted, and no manuscript intertwiner/physical domain/spectral conclusions established. S1V52 accepted roots stay **262**.
