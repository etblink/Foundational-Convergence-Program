# S1V37 Gate #2 RED — explicit Fin1 index does not repair rw matching

**Disposition:** `S1V37_G2_TWO_ROOTS_AXIOM_REPORTS__THIRD_ROOT_RWMATCH_RED__SORRYAX__NO_CACHE__FIRST_DIAGNOSIS_NARROWED`.

- [Gate #2 run #39352399902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39352399902), job `118399362279`, workflow commit `5d38e19f90abef9d71899b68da9ce04c723076b4`, source commit `f956a99ece563c46d472fc90e945b774425abbee`, original new source Git blob `40eb2698d67ce4dc490c9b9b0baae5db38684577`.
- Exact frozen original OAI math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact source hashes verified, Lean/Mathlib restored; accepted S1V36 cache hit and original prerequisite `.olean` checks success.
- Compiler failure is exclusively at line 70:4 in third root `source48_rankOneConjugationMatrix_det`:
```
error: Tactic `rewrite` failed: Did not find an occurrence of the pattern
  (1 + replicateCol (Fin 1) ?u * replicateRow (Fin 1) ?v).det
in the target expression
  (-1) ^ Fintype.card Source48Label *
    (1 + replicateCol (Fin 1) a * replicateRow (Fin 1) (-ell)).det = -1
```
- The attempted repair **did** instantiate `(ι := Fin 1)` in the pinned theorem invocation; the target pretty-printed the identical structure. Thus the failure is **not merely** an unsolved singleton-index metavariable. Definitional reduction/rewrite matching across the matrix expression or typeclass-synthesized multiplication requires a structurally different proof; avoid guessing the deeper mechanism without evidence.
- Both unchanged roots `source48_polar_inverse_self` and `source48_clifford_generator_conjugation` printed only `[propext, Classical.choice, Quot.sound]`. The third prints `sorryAx`; **Gate #2 is unqualified, no S1V37 cache was saved.** No math or sign problem has been demonstrated.

**Next bounded, discriminating architecture:** Bind the immutable specialized rank-one theorem into a *separately typed intermediate fact* `hmat : (1 + replicateCol (Fin 1) a * replicateRow (Fin 1) (-ell)).det = 1 + (-ell) ⬝ᵥ a` with `exact Matrix.det_one_add_replicateCol_mul_replicateRow (ι := Fin 1) a (-ell)`. Then build the final determinant proof using a small `calc` chain and `congrArg`, not a generic rewrite search with unresolved implicit arguments. If the explicit `exact` itself fails, inspect the exact synthesized type or instance mismatch rather than launching another blind retry. Preserve the source original 48-real index and all other accepted roots unchanged.
