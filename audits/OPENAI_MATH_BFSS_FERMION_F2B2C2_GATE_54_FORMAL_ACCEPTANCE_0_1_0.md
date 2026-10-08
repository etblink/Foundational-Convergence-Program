# BFSS fermions F2-B2c2 — Gate #54 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F2B2C2_SAME_MODE_REAL_IMAGINARY_MAJORANA_CAR_KERNEL_VERIFIED`

## Reproducible provenance

- FCP repository `etblink/Foundational-Convergence-Program`, research branch `research/openai-math-su2-concrete-potential`
- Exact accepted source/workflow commit `435ea5df036c36b2b168c2272090ada195fc4493`
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2MixedDiagProbe.lean`, blob `5268e6e81614e12a98a19090c563be39db224ea8`
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `e620f0981da679b2311e11a4ee7259550542c508`
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
- Lean `leanprover/lean4:v4.34.1`
- **BFSS SU2 Concrete Color Gate #54**, run `37735038600`, job `113172545971`, exact head commit, workflow/job/build `completed/success`: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37735038600
- Pinned color/gamma/F1/F2-A/F2-B1/F2-B2a/F2-B2b/F2-B2c1 recompilation succeeded, followed by successful `lake env lean SU2FermionF2B2MixedDiagProbe.lean`.

## Decisive axiom evidence

Verbatim Lean compiler output:

```text
'FCP.BFSSFermionF2B2MixedDiag.majorana01_car_self' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom.

## Verified theorem

```lean
theorem majorana01_car_self (i : Fin 24) :
    majorana0 i * majorana1 i + majorana1 i * majorana0 i =
      (0 : BFSSOp)
```

`BFSSOp` abbreviates the pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The proof uses the exact phase identity `majorana1 i = (√2 / 2) • (I • (creator i - annihilator i))` and the already accepted `creator_sq` / `annihilator_sq`. The operator ring expansion and phase transport are proved explicitly, and the scalar phase equality is proved pointwise. No hypothesis of the desired CAR was added.

## Gate #52–54 repair trail

- Gate #52 RED: unresolved imaginary phase lemma and noncommutative subtraction simplification.
- Gate #53 RED: subtraction expansion fixed, but operator phase rewrite `neg_smul` did not match.
- Gate #54 GREEN: pointwise operator extensionality completed the phase lemma. The exact statement remained unchanged throughout.

## Forward-looking separation of claims

Gate #51 already proved the mixed real/imaginary anticommutator for `i ≠ j`. Gate #54 proves the remaining `i = j` case. Along with Gates #49 and #50, the four families of Majorana pair relations are established in separately verified theorems.

**Not yet kernel-accepted as a single theorem:** `majorana01_car_all`, the complete `Fin 24 × Fin 2` delta-indexed `majoranaCandidate` CAR and its pullback to the precise upstream `AlgebraData.theta_CAR` field. The next research gate should compose these relations, without importing any hypotheses as a substitute for proofs.

**Still unproved:** F3 `theta_irreducible` for *every* invariant complex submodule, a complete `AlgebraData 2` witness, gauge action, spectral positivity, BFSS conjecture, or a FCP program-level K1–K10 classification upgrade.

Maintain the research branch scope, source register, BFSS source-first crosswalk and pinned upstream. Never edit main or upstream without authorization. Stop after submitting each new proof gate; inspect the newly triggered run only after the human owner reports GREEN or RED.

**Operating principle:** Protect the quality threshold, not the opportunity.
