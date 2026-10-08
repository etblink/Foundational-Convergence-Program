# BFSS fermions F3-B2 — Gate #62 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Disposition:** `PASS__F3B2_OCCUPATION_BASIS_ACTION_KERNEL_VERIFIED`

## Qualified run and source

- Repository: `etblink/Foundational-Convergence-Program`.
- Branch: `research/openai-math-su2-concrete-potential`.
- Accepted candidate source commit: `73d626b29367c7b227c4ffc0dae9fc3efa01c0ee`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3B2BasisActionProbe.lean`; exact blob `b71912cfbc2a1a9b0e9a7a567da486dbcc85d172`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; blob `5b5e1c6d19103760bb746f0f2b93a9f22dbb52bb`.
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Pinned toolchain: `leanprover/lean4:v4.34.1`.
- BFSS SU2 Concrete Color Gate **#62**: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37743214839
- GitHub Actions run `37743214839`, job `113198535251`.
- Exact run head SHA matches candidate. Run, job, and `Compile concrete SU2 color identity` step completed **success**.
- Log confirms execution of `lake env lean SU2FermionF3B2BasisActionProbe.lean` after predecessor imports, with no Lean errors.

## Exact theorem axiom results

```text
'FCP.BFSSFermionF3B2.occupiedMode_as_fockNumber' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B2.occupiedMode_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B2.vacantMode_occupationKet' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms.

## Proven meaning and exact limits

The accepted F3-B1 `occupiedMode i = creator i * annihilator i` is identified with `onBFSS (fockOperator (number i))` on the exact upstream `OAI.BFSSQuantum.Fermion 2` Hilbert type. The new `occupationKet A` is the authentic `fockBFSSUnitary (fockCoordinates 23 (fockBasis 23 A))`, not a substitute normalization or abstract CAR representation.

Theorems show `occupiedMode i (occupationKet A)` is `occupationKet A` when `i ∈ A` and zero otherwise, and `vacantMode i` has complementary action. This is a genuine 24-mode occupation-basis result with spectator modes, transported from pinned upstream `number_basis`.

**Not yet proved:** arbitrary-vector coordinate selector identities; a finite product that extracts one coordinate; generation of all basis vectors from a single vector; full `theta_irreducible`; complete `AlgebraData 2`; gauge action; BFSS spectral/positivity results or universal String/M claims. FCP T6 model-level classification and K1–K10 stay unchanged.

## Next controlled step

F3-B3 should first establish idempotence and pairwise commutation of the concrete occupied-mode operators, reusing exact pinned upstream `number_idempotent` and `number_commute` from `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardGlobal.lean` and existing Fock/BFSS conjugation transport. These are proof obligations, not assumptions. Subsequent gates can establish finite complementary-selector products and nonzero coordinate isolation using the actual canonical occupation basis.

Maintain source-first correspondence and strict types. Research branch only; no changes to FCP `main`, upstream `openai/math`, independent reviewer scripts, or frozen scientific classifications. No `sorry`, `admit`, custom proof axioms or weakening of theorem statements. After any new compiler-candidate push, wait for the human owner to report GREEN or RED before inspecting that newly triggered workflow.

**Operating maxim:** Protect the quality threshold, not the opportunity.
