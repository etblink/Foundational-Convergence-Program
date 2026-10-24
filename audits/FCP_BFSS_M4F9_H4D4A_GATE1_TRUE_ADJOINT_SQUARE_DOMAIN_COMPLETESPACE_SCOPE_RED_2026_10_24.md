# BFSS M4F9 H4D4A — Gate #1 RED: true two-stage native adjoint-square domain, missing proof-body Hilbert completeness

**Disposition:** `M4F9_H4D4A_GATE1_RED__EXACT_H4D3D_PARENT_CACHE_HIT__TWO_ADJOINT_PROOF_BODY_COMPLETESPACE_INSTANCES_MISSING__UNSOLVED_GOAL__SORRYAX__ZERO_ROOTS_ACCEPTED__GATE2_TERM_SCOPED_COMPLETENESS`.

## Immutable original run evidence

[GitHub Actions run #40117039101](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40117039101), job **120940351564**, workflow/job `completed/failure`, event research HEAD **62c36eab5fcd7fd041f52e54377cf57a86db915c**.

Original H4D4A mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F9H4D4AActualNativeAdjointSquareDomain.lean`, immutable Git blob **4947973abcc7fe1102888ad7611018f8f6d1e4c5**. Original unique strict workflow `.github/workflows/bfss-m4f9-h4d4a-actual-native-adjoint-square-natural-domain-strict-gate1.yml`, Git blob **3cf3887b451ef0a4a66423dae5e5613f3ff1a02c**.

Original immutable BFSS source pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Exact root count, namespace, source Git hash and frozen original source preflights passed. Complete qualified actual-native adjoint-domain iff H4D3D ancestry cache **exact HIT**, no fallback:
```
bfss-fcp-m4f9-h4d3d-adjoint-domain-8ecc1bf3-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

Original Lean diagnostic:
```
FCPM4F9H4D4AActualNativeAdjointSquareDomain.lean:79:10:
  error(lean.synthInstanceFailed):
    CompleteSpace ↥(independentPhysicalSpace theta hCAR hHermitian)
...:79:35:
  error(lean.synthInstanceFailed):
    CompleteSpace ↥pairedGaugeData.physicalSpace
...:66:81: error: unsolved goals
'FCP.M4F9H4D4AActualNativeAdjointSquareDomain.nativeAdjointSquare_naturalDomain_iff'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```

**0/1 accepted roots, RED**, no reusable qualified H4D4A child cache. Original diagnostic [artifact #12569886547](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40117039101/artifacts/12569886547), ZIP SHA256 **6300fcbebb5d109e11e1b216efc22d45bf3e918b5502001889f9cad54ee186e9**.

## Mathematical scope and diagnostic classification

The exact target is **natural** `T†T` domain equality, without constructing a transported surrogate operator: at each actual independent physical input `x` it asserts
```
(∃ hx : x ∈ T_ind.domain, T_ind ⟨x,hx⟩ ∈ T_ind.adjoint.domain)
 ↔
(∃ hz : U x ∈ T_AY_native.domain, T_AY_native ⟨U x,hz⟩ ∈ T_AY_native.adjoint.domain).
```
The theorem's *type* already has `letI` bindings proven from H4D3A independent and source AY completeness, as done successfully for accepted H4D3D. The *proof body* introduces `have hAdjDomain` whose **type** mentions both `.adjoint.domain` expressions. Without the local instances, Lean cannot elaborate this intermediate type; the residual proposition was not discharged. Gate1 does **not** prove a counterexample or independently establish the downstream hChargeAction, hVOut or converse proof obligations. No weakening to `LinearPMap.comp`: frozen Mathlib's `LinearPMap.comp` expects an entire-domain inclusion and is not the exact natural maximal composite here.

## Next gate plan

Supply *both accepted* Hilbert-completeness instance dictionaries within term syntax enclosing the **entire proof body**, rather than unqualified `letI` or `haveI` in a proposition-goal tactic block (H4D3B earlier strict style-linter red). Candidate:
```lean
  refine
    (letI : CompleteSpace (independentPhysicalSpace theta hCAR hHermitian) :=
       FCP.M4F9H4D3AIndependentPhysicalHilbertComplete.independentPhysicalSpace_complete
         theta hCAR hHermitian J hJ;
     letI : CompleteSpace pairedGaugeData.physicalSpace :=
       FCP.BFSSSU2PhysicalDomainL6H5E8BB.originalPhysicalHilbertComplete
         pairedAlgebraData pairedGaugeData;
     ?_)
```
then the original `intro x` and proof untouched. This tactic metavariable may need an explicit `show` if the term-local instance context does not persist; rely on fresh strict compiler evidence, not conjecture. Keep exact two-stage natural-domain theorem statement, actual original AY and independent E2 charges, and U/V unchanged. Distinct Gate2 workflow, source hash, child cache, exact H4D3D parent, frozen original mathematics and strict three-axiom validator. Preserve any resulting red as negative knowledge.

Original/source AMBIENT FullL2-output AY adjoint square and normalized 1/16 Hamiltonian still **not** identified with native-output adjoint square. No operator action equivalence, self-adjoint spectral equivalence or mass gap follows from this rejected gate. Historical working principal accepted theorem-root tally 309 unreconciled; support roots separately tracked. Canonical `main`, frozen `etblink/math` source, draft PR #25 remain unchanged.
