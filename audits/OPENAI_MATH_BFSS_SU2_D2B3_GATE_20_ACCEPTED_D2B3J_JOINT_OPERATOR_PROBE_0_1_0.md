# BFSS SU2 Physical Domain Gate #20 acceptance and D2B3J exact-source operator smooth-family probe 0.1.0

**Date:** October 9, 2026 Pacific / GitHub Actions UTC October 10.  
**Qualification:** `D2B3_GATE_20_ACCEPTED` (fixed-gauge spatial C∞ and HONEST conditional smooth Haar reduction).  
**New test:** `D2B3J_UNCONDITIONAL_JOINT_JETS_AND_HAAR_SMOOTHNESS_PROSPECTIVE_UNCOMPILED`.  
**Still open:** actual invariant source SmoothCore membership and physical L² density; no physical spectral claim.

## Gate #20 source and proof-object verification

[BFSS SU2 Physical Domain Bridge #20](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38022416650), run `38022416650`, job `114126061037`, successfully compiled exact source SHA `3d3f2ccc3f33b8ad2ce3789ba566442ed61bc16e`. Pinned Lean v4.34.1, original `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Both dependency and G4-K10A accepted proof caches passed. The exact original-source mathematical modules D1, D3A, D3B, D2A, D2B1 and D2B2 were frozen and recompiled with strict axiom checks. The pinned original mathematical-analysis library `OAI.Analysis.VlasovMaxwell.Regularity.SmoothIntegral` compiled. Both D2B3 declarations passed exact permitted-axiom reports with **only** `[propext, Classical.choice, Quot.sound]` and no `sorryAx`:

1. `FCP.BFSSSU2PhysicalDomainD2B3.sourceHaarSpatialSlice_contDiff`: unconditionally proves `ContDiff ℝ ∞ (fun x : Boson 2 => G.fermion g (f (G.boson g⁻¹ x)))` for each **fixed actual** source SU2 element `g`.
2. `FCP.BFSSSU2PhysicalDomainD2B3.sourceHaarAverageRaw_contDiff_of_jointJets`: proves the **original** source Haar average `C∞` conditional on a clearly stated hypothesis `hJets` that **all spatial iterated Fréchet derivatives** of its true integrand are jointly continuous in bosonic position and the source SU2 group element.

The previously failed SecondCountableTopology requirement is now discharged through the exact pinned `TopologicalSpace.Subtype.secondCountableTopology` theorem applied to the real original matrix subtype. This is a standard topological instance, not an invented assumption. **The conditional theorem is NOT yet unconditional source average smoothness.**

## Concrete new mathematical approach: operator-parameter map in source-defined finite dimensions

The pinned Mathlib `Mathlib/Analysis/Normed/Module/FiniteDimension.lean` theorem `continuous_clm_apply` has exactly the source needed:
```lean
theorem continuous_clm_apply {X : Type*} [TopologicalSpace X] [FiniteDimensional 𝕜 E]
    {f : X → E →L[𝕜] F} :
    Continuous f ↔ ∀ y, Continuous (f · y)
```
This converts the already-proved source jointly continuous actions `G.boson_continuous`, `G.fermion_continuous` to continuity in the **operator norm** of the true bounded real-linear boson and real-restricted fermion representations. It uses finite-dimensionality of the ACTUAL original `Boson 2` and `Fermion 2`, without enumerating the enormous fermion coordinate family or inventing different physics.

The existing pinned **proved** `OAI.RVM.SmoothCompactFamily.ofJoint` theorem, from `OAI.Analysis.VlasovMaxwell.Regularity.SmoothIntegral`, establishes joint continuity of every spatial iterated derivative whenever a spatial function is the evaluation of a jointly `C∞` ambient operator-parameter function along a continuous parameter curve. We can take the ambient operator parameter space
```lean
A := (Boson 2 →L[ℝ] Boson 2) × (Fermion 2 →L[ℝ] Fermion 2)
```
and its fixed smooth ambient function
```lean
H : A × Boson 2 → Fermion 2 :=
  fun p => p.1.2 (f (p.1.1 p.2))
```
whose smoothness comes from the actual source `f.contDiff` and smooth continuous-linear-operator evaluation. The real source SU2 curve is `g ↦ (G.boson g⁻¹, G.fermion g)`, with the fermion operator genuinely restricted from complex to real scalars. This architecture does NOT require differentiating SU2 group parameters or formally expanding Faà di Bruno's formula for every order.

The new leaf:
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B3JJointOperatorSmoothHaarProbe.lean`
attempts FIVE named source propositions:
- `sourceBosonOperator_continuous`: continuous true boson representation in real CLM operator norm;
- `sourceFermionOperator_continuous`: continuous true real-restricted fermion representation in real CLM operator norm;
- `sourceHaarIntegrand_smoothFamily`: unconditional **true** `OAI.RVM.SmoothCompactFamily` of the genuine original gauge integrand;
- `sourceHaarAllJets_jointContinuous`: actual explicit prior `hJets` target, now as an unconditional theorem;
- `sourceHaarAverageRaw_contDiff`: directly invokes the now-qualified conditional D2B3 theorem with `hJets` discharged, yielding the full genuine source Haar average `C∞` if the new leaf compiles.

**This new leaf is UNCOMPILED and may reveal a genuine operator-space calculus/typeclass problem, or Lean elaborator resource issue. Do NOT accept or claim any of its five results until the next pinned compiler passes all five proofs and axiom checks.** No unproved `hJets` is introduced as an ambient physics axiom: we propose to prove its exact statement.

## Workflow change / scientific acceptance boundary

The exact Gate #20 tested SHA is now the frozen baseline for ALL accepted D1–D2B3 source files; the dedicated CI permits edits only to the new D2B3J experimental leaf. Accepted D2B3 compilation emits importable `.olean` and is re-guarded with the same exact two approved axiom reports. The new leaf is compiled and must supply FIVE approved explicit standard-axiom reports and no `sorryAx`.

Even unconditional `C∞` source Haar average alone would not yet establish `SmoothCore` membership (original compactly supported TestFunction constructor), source `G.invariantCore` membership, (L²) contraction or density `G.coreNormClosure = G.physicalSpace`. Those require separate exact source mathematical proofs, after which physical Hamiltonian/spectral claims still require their own evidence.

No edits to qualified source, original OpenAI Math source or pinned mathlib, no new axiom, substitute action, main merge, upstream PR or scientific/experimental BFSS claim.
