# BFSS fermions F3-C1 — Gate #77 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__F3C1_CONCRETE_THETA_INVARIANT_SUBMODULE_IRREDUCIBILITY_CRITERION_KERNEL_VERIFIED`

## Exact compiler qualification

- Research branch `research/openai-math-su2-concrete-potential`.
- Successful source HEAD `32fd8be203d75a83c86a8f6834800580bf82b166`.
- Source `experiments/openai-math-su2-concrete-potential/SU2FermionF3C1SubmoduleDichotomyProbe.lean`, Git blob `5900cec03dd0eb35688647270fa8809ce3ef2ea3`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `48a6a5290585c766c8f67ce7e39cca2571081253`.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1.
- Gate #77 https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37762018293
- Run `37762018293`, job `113260483045`; run head matches, run/job and `Compile concrete SU2 color identity` step successful, log shows successful `lake env lean SU2FermionF3C1SubmoduleDichotomyProbe.lean`.

## Exact kernel axiom reports

```text
'FCP.BFSSFermionF3C1.thetaInvariant_eq_top_of_nonzero' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3C1.thetaInvariant_bot_or_top' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms; one nonblocking simplify-style warning.

## Actual accepted mathematics

For each complex submodule `W` of exact `OAI.BFSSQuantum.Fermion 2` invariant under all genuine `FCP.BFSSFermionF2.thetaCandidate α A`, either `W = ⊥` or `W = ⊤`. Proof does not assume irreducibility; it combines F3-B6 extraction of one ket from a nonzero invariant vector, F3-B9 all-ket generation from one ket, and F3-B5 full genuine 24-mode basis expansion to span every vector.

## Pinned upstream interface checked

In `lean/OAI/MathematicalPhysics/BFSS/Core.lean` at exact upstream commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Git blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, lines 35–40, `AlgebraData (N : ℕ)` has:
```lean
theta : SpinIndex → ColorIndex N → (Fermion N →L[ℂ] Fermion N)
theta_selfAdjoint : ∀ α A, IsSelfAdjoint (theta α A)
theta_CAR : ∀ α β A B, theta α A * theta β B + theta β B * theta α A =
  (if α = β ∧ A = B then 1 else 0) • (1 : Fermion N →L[ℂ] Fermion N)
theta_irreducible : ∀ W : Submodule ℂ (Fermion N),
  (∀ α A, ∀ w ∈ W, theta α A w ∈ W) → W = ⊥ ∨ W = ⊤
```
For `N = 2` and `theta := FCP.BFSSFermionF2.thetaCandidate`, the field signature matches the accepted F3-C1 proposition. **Field-level explicit compilation is not yet certified**: next F3-C2 gate will present precisely the upstream field type and prove it from F3-C1, plus a joint theta-fields compatibility theorem using accepted F2 self-adjointness and CAR. Existing verified F2-CAR and self-adjoint theorems remain unchanged.

## Scope boundaries

F3-C1 does not by itself instantiate complete `AlgebraData 2`: color and gamma witnesses and their law fields are separate. No BFSS spectral gaps, positivity, model completeness, or universal theory of physics is established. FCP T6/K1–K10 program classifications stay frozen. No mutations to upstream `openai/math` or FCP `main`. No new axioms, `sorry`, `admit`, weakening, or unsupported cross-repo claims.

Submit any next compiler gate once; do not inspect it until the human owner reports GREEN/RED.
