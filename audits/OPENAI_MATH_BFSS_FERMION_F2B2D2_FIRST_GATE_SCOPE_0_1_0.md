# BFSS fermions F2-B2d2 — exact thetaCandidate / AlgebraData.theta_CAR gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2D2_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Core.lean blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`; **Lean:** `v4.34.1`.

Gate #56 was verified GREEN: run `37736665852`, job `113177641826`, accepted proof commit `ff68998ea384ab2c7b84e192c41fcdfa6a017bfb`; the `#print axioms majoranaCandidate_car` report lists only `[propext, Classical.choice, Quot.sound]`. Formal acceptance is recorded at `audits/OPENAI_MATH_BFSS_FERMION_F2B2D1_GATE_56_FORMAL_ACCEPTANCE_0_1_0.md`.

## Exact source and proof target

New source `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2ThetaProbe.lean` declares:

```lean
theorem thetaCandidate_CAR :
    ∀ (α β : OAI.BFSSQuantum.SpinIndex)
      (A B : OAI.BFSSQuantum.ColorIndex 2),
      thetaCandidate α A * thetaCandidate β B +
        thetaCandidate β B * thetaCandidate α A =
          (if α = β ∧ A = B then (1 : ℂ) else 0) • (1 : BFSSOp)
```

`BFSSOp` definitionally abbreviates the exact `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. This target matches the pinned Core.lean `AlgebraData 2` `theta_CAR` field in quantifier order, predicate, scalar normalization, and operator type. It uses the existing `thetaLabelEquiv` and `thetaCandidate` from F2-A *unchanged*, without inventing or requiring a `theta_irreducible` witness. A bijection transports the exact index equality into `α = β ∧ A = B`, then Gate #56 supplies the 48-index CAR.

**Acceptance standard:** a completed, exact-head successful GitHub Actions gate that actually compiles `SU2FermionF2B2ThetaProbe.lean`, with `#print axioms thetaCandidate_CAR` limited to `[propext, Classical.choice, Quot.sound]` (or subset), no `sorryAx`, `sorry`, `admit`, or custom axioms. Compilation may identify a bounded Lean elaboration issue; this is a candidate, not yet accepted.

**Nonclaims:** No `theta_irreducible` proof, complete `AlgebraData 2` witness, gauge/Spin(9) construction, Hamiltonian spectral positivity or BFSS conjecture proof, and no FCP K1–K10 classification changes. Formal alignment with the upstream CAR field would not establish these other claims.

**Control:** Research branch only; no changes to FCP main or pinned OpenAI repository, reviewer files or public upstream channels. Stop after submitting a new proof gate; inspect/poll it only after the owner reports GREEN/RED.
