# BFSS fermions F3-A1 — Gate #58 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Disposition:** `PASS__F3A1_THETA_MAJORANA_INVARIANCE_TRANSPORT_KERNEL_VERIFIED`

## Source and kernel verification

- Repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- Exact accepted candidate HEAD: `d88ad728dc1b35ce4838c4ec35b4fcdfca083870`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3InvariantProbe.lean`, blob `5d79bd350ba92e7485153bc36aaeca45489074a2`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `5e12820f327871c005be77313ae48ff778f06494`.
- Upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Lean: pinned `leanprover/lean4:v4.34.1`.
- Gate: BFSS SU2 Concrete Color Gate **#58**, run `37738488990`, job `113183419389`: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37738488990
- Exact run HEAD matched candidate; run, job and `Compile concrete SU2 color identity` step all completed with **success**.
- In this run, previous accepted color/gamma/F1/F2-B2d2 sources recompiled. The command `lake env lean SU2FermionF3InvariantProbe.lean` executed successfully.

## Exact Lean axiom evidence (verbatim)

```text
'FCP.BFSSFermionF3.thetaInvariant_majoranaCandidate' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3.thetaInvariant_iff_majoranaCandidate' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3.thetaInvariant_majoranaComponents' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axiom appears in the new theorem axiom reports.

## Precisely established

On the exact pinned complex Hilbert space `OAI.BFSSQuantum.Fermion 2`, for every complex submodule `W`:

1. `thetaInvariant_majoranaCandidate`: invariance of `W` under every `thetaCandidate α A` implies invariance under any indexed `majoranaCandidate p`.
2. `thetaInvariant_iff_majoranaCandidate`: invariance under all spin/color labels is **equivalent** to invariance under all `Fin 24 × Fin 2` Majorana labels, by the existing `thetaLabelEquiv` bijection.
3. `thetaInvariant_majoranaComponents`: theta invariance implies invariance under both `majorana0 i` and `majorana1 i` for every `i : Fin 24`.

These are genuine kernel-checked **invariance transport** theorems, not a proof of irreducibility.

## Accepted fermionic predecessor

Gate #57 established `thetaCandidate_CAR` in the *exact* pinned upstream `AlgebraData 2.theta_CAR` field shape (run `37737545794`, job `113180428725`, commit `e5b67dd87382089018ba3e8b5885b6e199af32f7`) with only standard axioms. Its separate acceptance record is `audits/OPENAI_MATH_BFSS_FERMION_F2B2D2_GATE_57_FORMAL_ACCEPTANCE_0_1_0.md`. Gate #39 independently accepted `thetaCandidate_selfAdjoint`. Gate #56 accepted complete 48-Majorana CAR.

## Remaining mathematically substantive obligations

**Not proved:** `theta_irreducible`, i.e. for every `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)`, if all theta operators preserve `W`, then `W = ⊥ ∨ W = ⊤`.

Suggested bounded F3 next steps, not yet submitted or compiler accepted:

1. F3-A2: derive invariance under both transported `creator i` and `annihilator i` from accepted F3-A1 component invariance using exact normalized complex combinations. Check scalar normalizations against accepted F1/F2 definitions.
2. F3-B: prove occupation-basis generation from any nonzero invariant vector, using the exact 24-mode Fock realization; suitable approaches include finite-mode number-operator projections onto a nonzero occupation coordinate and creator/annihilator reachability. All projection and basis-action identities must be proved.
3. F3-C: combine into the full upstream `theta_irreducible` field-shaped theorem and independently qualify its axiom report.
4. Only then consider assembling the full `AlgebraData 2` witness, with each field mapped to independently verified theorems.

F3-A1 is not an irreducibility result. CAR and self-adjointness alone are insufficient to infer irreducibility in an arbitrary representation. No BFSS spectral/positivity theorem, gauge or Spin(9) construction, universal theory result, or FCP K1–K10 classification change is licensed.

## Governance and CI discipline

Operate only on the designated research branch. Preserve FCP `main`, the pinned upstream OpenAI checkout, independent reviewer scripts, prior accepted classifications and historical source records. No public OpenAI issue/PR without explicit human authorization. Never introduce `sorry`, `admit`, `sorryAx`, custom proof axioms or theorem weakening. Only standard Lean axioms `[propext, Classical.choice, Quot.sound]` are acceptable.

For every **new** compilation candidate: submit once, then stop and do not poll/inspect that newly triggered gate until the human owner reports GREEN/RED. This acceptance record is documentation-only, not a new proof candidate.

**Operating principle:** Protect the quality threshold, not the opportunity.
