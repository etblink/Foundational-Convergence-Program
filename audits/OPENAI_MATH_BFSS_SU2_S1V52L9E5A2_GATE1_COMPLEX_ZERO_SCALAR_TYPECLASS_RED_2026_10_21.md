# S1V52L9E5A2 Gate #1 — complex finite CAR contraction: RED

**Independent PL verdict:** `L9E5A2_GATE1_RED__0_OF_1__L9E4_QUALIFIED_CACHE_HIT__SINGLE_COMPLEX_SMUL_ZERO_TYPECLASS_META__203_ACCEPTED`.

- [Strict Actions run #39556011139](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39556011139), job `119075825172`, completed **FAILURE** at isolated workflow/source SHA `78f615541e1edc64e465a9f6fe498a9b50b9538a`, exact candidate source Git blob `df0d40702fc316ae6793b51ff9e7101f5eb458de`.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source preflight, original Pauli, original Spin48 source closure and qualified L9E4 real-linear original Fock cache all passed.
- The candidate used complex weights `c : ι → ℂ` on the *actual original* `FockOp := Fermion 2 →L[ℂ] Fermion 2`. No missing direct `ℝ`-scalar multiplications, `SMulCommClass` or `IsScalarTower` errors remain. Abstract hdiag/hcross algebra and inductive structure reached the targeted theorem. **One** compiler error at line 58: `exact smul_zero (c i * c j)` left `SMulZeroClass ℂ ?m.323` stuck because the zero operator type was not made explicit to instance synthesis.
- `#print axioms` includes `sorryAx` due to the unresolved goal. **0/1 roots accepted**, cumulative remains **203**, no qualified A2 cache. Diagnostics artifact `bfss-s1v52l9e5a2-fock-real-linear-gamma-39556011139`, id `12325617698`.
- This is a strictly localized **Lean elaboration issue**, not a contradiction of the complex CAR contraction, not a certified original real-source square, and not evidence of a mass gap.

## Narrow Gate #2

Keep the mathematical theorem, exact original complex Fock algebra, complex coefficients and every hypothesis unchanged. In the off-diagonal cancellation, after rewriting `hanti i j hij`, explicitly ascribe

```lean
(smul_zero (c i * c j) :
  (c i * c j) • (0 : FockOp) = 0)
```

so the exact complex scalar-to-original-continuous-linear-operator module is known. Do not add an axiom, invent a typeclass instance, change the Clifford convention or reuse the prior failed real scalar architecture. Run only one isolated source-pinned Gate #2 with the same L9E4 qualified cache, new candidate SHA, strict `#print axioms` and `.olean` checks.

**Boundary:** Even a green complex finite helper does not discharge the real/complex operator coefficient correspondence (L9E5B0) or the original 48-vector quadratic square (L9E5B). Canonical main, immutable upstream and draft PR #25 remain untouched.
