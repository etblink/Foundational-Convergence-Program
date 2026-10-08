# BFSS fermions F3-B3 — Gate #63 formal acceptance 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC  
**Disposition:** `PASS__F3B3_EXACT_OCCUPIED_MODE_PROJECTOR_ALGEBRA_KERNEL_VERIFIED`

## Exact source and qualification
- Repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- Accepted candidate HEAD: `dbb1d69f54ffd6efb75e9c22284b42ade9f1b3bf`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3B3ProjectorProbe.lean`; blob `c46623c1a507b2a2340b403cc7b0641af7298742`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; blob `5cb72f41907135071a32bd4aeda16c84d70ca4f8`.
- OpenAI Math pinned at `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean pinned to `leanprover/lean4:v4.34.1`.
- Gate #63 run: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37744177545
- GitHub Actions run ID `37744177545`, job ID `113201626883`. Run, job, and `Compile concrete SU2 color identity` step are completed `success`. Run HEAD matches accepted source commit.
- Logs show `lake env lean SU2FermionF3B3ProjectorProbe.lean` successfully completed after the predecessor modules.

## Exact axiom results
```text
'FCP.BFSSFermionF3B3.occupiedMode_idempotent' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B3.occupiedMode_mul_comm' depends on axioms: [propext, Classical.choice, Quot.sound]
```
No `sorryAx` or custom axiom reported.

## Proven meaning and boundaries

Actual 24-mode BFSS occupied operators, transported unchanged from the pinned upstream Fock construction, satisfy `occupiedMode i * occupiedMode i = occupiedMode i` and `occupiedMode i * occupiedMode j = occupiedMode j * occupiedMode i` for every `i j : Fin 24`. This uses pinned `number_idempotent` and `number_commute`, not postulated projector semantics.

Together with Gate #62 actual basis-action identities, this permits further work on coordinate-selecting products. It does **not** establish that a nonzero invariant submodule contains a canonical occupation vector, nor irreducibility, `theta_irreducible`, the full `AlgebraData 2` witness, BFSS spectral assertions, or universal String/M theory claims.

## Bounded next gate

F3-B4 should construct an explicitly ordered 24-mode occupation selector for each `A : Finset (Fin 24)` and prove its exact action on every actual transported `occupationKet B`, ideally `selector A (occupationKet B) = if A = B then occupationKet B else 0`. This is only a basis-vector identity; arbitrary-vector coordinate extraction and total-span/basis completeness need separate proofs. Ordered `List` multiplication avoids illicit use of `Finset.prod` over a noncommutative operator algebra.

Enforce exact-HEAD compiler qualification and `#print axioms` checks. Keep research branch only; no `sorry`/`admit`/custom axioms, no edits to upstream, FCP `main`, or frozen classifications. After submitting a compiler candidate, **do not poll or inspect the new workflow until the human owner reports GREEN or RED**.

**Operating maxim:** Protect the quality threshold, not the opportunity.
