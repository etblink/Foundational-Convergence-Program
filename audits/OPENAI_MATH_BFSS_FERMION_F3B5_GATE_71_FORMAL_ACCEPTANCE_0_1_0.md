# BFSS fermions F3-B5 — Gate #71 formal acceptance 0.1.0

**Date:** 2026-10-08  
**Disposition:** `PASS__F3B5_FULL_FINITE_BASIS_EXPANSION_AND_SELECTOR_EXTRACTION_KERNEL_VERIFIED`

## Qualified source and run

- Repository: `etblink/Foundational-Convergence-Program`.
- Research branch: `research/openai-math-su2-concrete-potential`.
- Accepted compiler candidate HEAD: `da10e052ac425a79b25167bea736ca063d230b9c`.
- Source: `experiments/openai-math-su2-concrete-potential/SU2FermionF3B5CoordinateProbe.lean`; exact blob `594b8f2b95b190d6e0084f04094120c05ac140a6`.
- Workflow: `.github/workflows/openai-math-su2-concrete-potential.yml`; blob `8a2966e3777a769592ec6f0f8365797b34918123`.
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `leanprover/lean4:v4.34.1`.
- BFSS SU2 Concrete Color Gate **#71**: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37754565942
- GitHub Actions run `37754565942`; job `113235810039`. The run's `head_sha` matches the accepted candidate. Run, job, and `Compile concrete SU2 color identity` step were `success`.
- Log verifies `lake env lean SU2FermionF3B5CoordinateProbe.lean` completed, after rechecking accepted preceding proof modules.

## Exact kernel axiom results

```text
'FCP.BFSSFermionF3B5.occupationExpansion' depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSFermionF3B5.occupationSelector_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or custom axioms were reported.

## Mathematical meaning

Using the actual upstream 24-mode exterior Fock basis, the exact accepted F1 coordinate equivalence and `fockBFSSUnitary`, every vector `x : OAI.BFSSQuantum.Fermion 2` is a finite sum of `occupationCoeff x B • occupationKet B` over all `Finset (Fin 24)`. The genuine ordered selector constructed and verified by Gate #65 satisfies

```lean
occupationSelector A x = occupationCoeff x A • occupationKet A
```

for **every** vector, not merely for basis vectors.

The successful proof replaces the previous kernel-heavy explicit specialized `Basis.sum_repr` transport with a generic `Module.Basis`-linear-map expansion lemma and then specializes it to the actual BFSS space. No increase of `maxRecDepth` and no assumption of finite basis completeness was introduced.

## Scientific and formal limits

This gate does **not** yet establish existence of a nonzero occupation coordinate of a nonzero invariant vector, preservation of ordered selectors by theta-invariant submodules, existence of a nonzero occupation ket inside a nonzero theta-invariant submodule, generation of all kets by the transported creators/annihilators, `theta_irreducible`, the complete `AlgebraData 2` instance, BFSS spectral/positivity bounds, or a broad String/M conclusion. FCP T6 model-level classification and K1–K10 assignments stay unchanged.

## Next proof boundary

F3-B6: derive nonzero occupation coordinate existence from `occupationExpansion`, derive `occupationSelector` invariance from accepted mode-stability, and conclude that any theta-invariant submodule containing a nonzero vector contains an actual occupation ket. Keep exact theorem types and proof axioms. Proceed by separate named lemmas, avoiding destructive expansion of the `2^24` index in kernel conversion.

Branch-only research, no upstream or main changes, no `sorry`/`admit`/custom axioms/target weakening. After submitting the next candidate, **do not inspect its workflow until the owner reports GREEN/RED**.

**Research maxim:** Discover what is true; never mistake a green gate for a universal physical claim.
