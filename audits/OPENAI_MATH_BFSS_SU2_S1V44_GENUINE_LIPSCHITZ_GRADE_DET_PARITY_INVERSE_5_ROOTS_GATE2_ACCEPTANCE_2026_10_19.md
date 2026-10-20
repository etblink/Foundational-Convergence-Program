# S1V44 — Genuine original Lipschitz grade/determinant parity inverse — Strict Gate #2 ACCEPTED

**Project Lead disposition (October 19, 2026 PDT / October 20 UTC):** `S1V44_G2_FIVE_TRUE_CLIFFORD_UNIT_INVERSE_ROOTS_KERNEL_PASS__S1V43_CACHE_RESTORED__S1V44_CACHE_SAVED__PARITY_INVERSE_ACCEPTED__UNIVERSAL_LIPSCHITZ_AND_SPIN_ORIENTATION_OPEN`.

## Immutable strict evidence
- [S1V44 Grade/Determinant Parity Inverse Strict Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39365515446), job `118441351445`, **SUCCESS**.
- Original/source compiler checkout commit `4f8ab631adee5e0b62b9db424b1859e2db873c81`. Mathematical proof revision commit `77c4f91b13c23239bb1f5189ef76fbf563438359`, exact new Lean source Git blob `ea0186c1a7def6290197d5e5d2da8c656cba88b7`.
- Pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Strict immutable source hashes, environment and checkout passed.
- The strictly accepted S1V43 cache **restored**: `bfss-s1v43-isolated-source48-grade-det-parity-interfaces-v1-adc7f124-lean4341-d13f23b-Linux-X64`; required qualified source `.olean` prerequisites checked nonempty.
- Lean source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V44OriginalLipschitzGradeDetParityInverseProbe.lean` compiled nonempty `.olean`, with EXACTLY FIVE `#print axioms` reports. Each showed ONLY `[propext, Classical.choice, Quot.sound]`, no compiler errors, `sorryAx`, proof holes or unknown identifiers. Strict marker `S1V44_ORIGINAL_GRADE_DET_PARITY_INV_5_ROOTS_KERNEL_PASS`.
- New **qualified compilation cache saved**: `bfss-s1v44-isolated-source48-grade-det-parity-inverse-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Diagnostic artifact `bfss-s1v44-grade-det-inverse-39365515446`, ID `12238454516` uploaded.

## Five exact kernel-qualified original-source roots
All refer to the true `CliffordAlgebra source48Quadratic`, real vector labels `Fin 24 × Fin 2 → ℝ`, genuine Mathlib `lipschitzGroup source48Quadratic`, S1V41's actual determinant character `δ_L`, and pinned Clifford `involute`.
1. `FCP.BFSSS1V44.source48GradeOnUnits`: true grade involution lifted to genuine Clifford units as a multiplicative homomorphism via `Units.map`.
2. `source48RealScalarOnUnits`: actual central algebra-map embedding of invertible real scalars into true Clifford units, again through `Units.map`.
3. `source48RealScalarOnUnits_commutes`: these original scalar units commute with EVERY actual Clifford unit; proved using `Units.ext` and pinned `Algebra.commutes`.
4. `source48LipschitzGradeDetParity_iff_units`: exact equivalence between accepted S1V43's original grade/determinant parity predicate and the genuine equality `gradeUnitHom(x) = scalarUnitHom(δ_L(x)) * x` in Clifford units. Uses typed `Units.ext` and only the authentic scalar-action identity `Algebra.smul_def`, not an assumed abstract Pin action.
5. `source48LipschitzGradeDetParity_inv`: for ANY true original Lipschitz `x`, **IF** the original grade/determinant parity predicate holds at `x`, it also holds at the genuine inverse `x⁻¹`; proved by taking inverse in the true unit group and scalar centrality. This DOES NOT assert universal parity for arbitrary Lipschitz elements.

## Negative knowledge: S1V44 Gate #1 RED
[Strict Gate #1 #39364746692](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39364746692), job `118438894960`, was **RED** after all immutable hashes and qualified S1V43 cache restoration passed. The initial three unit-map/centrality roots printed only the permitted axioms, while the unit-iff and inverse proof failed:
- Broad `simp only` left `AlgHom.toRingHom`/coe and scalar-map expressions in different synthetic normal forms than the direct original `involute` and `Algebra.smul_def` equality.
- In the inverse branch `rw [map_inv]` changed the RHS normal form, then `change` incorrectly tried to restore the old pre-rewrite expression.
- Two roots were contaminated with `sorryAx`; the source file was NOT accepted and no new cache saved.
- Original negative-knowledge audit: [S1V44 Gate #1 causal failure](OPENAI_MATH_BFSS_SU2_S1V44_GATE1_UNIT_GRADE_PARITY_EQ_COERCION_AND_MAP_INV_NORMALIZATION_RED_2026_10_19.md).
- Gate #2 addressed both causes with explicitly typed `change` boundaries and `simpa only [map_inv, Subgroup.coe_inv]`, without altering mathematical statements or source conventions. All five roots then compiled and cache saved.

## Next bounded Project Lead priority — universal parity through genuine closure
The pinned Mathlib definition is `lipschitzGroup Q = Subgroup.closure ((↑) ⁻¹' Set.range (CliffordAlgebra.ι Q))`. S1V43 and S1V44 supply exactly the predicate cases needed by `Subgroup.closure_induction''`: genuine vector-generator membership (S1V42), parity on that generator (S1V43), true identity and multiplicative closure (S1V43), inverse closure (S1V44).

**Next distinct target S1V45:** prove `∀ x : lipschitzGroup Q, P(x)` using the ACTUAL closure and the exact preimage relation. Pay special attention to transporting source generator units and arbitrary `x : (CliffordAlgebra Q)ˣ` with the pinned `invertibleOfInvertibleι` theorem; avoid expensive untyped definal reduction and do not assume that every arbitrary Clifford unit is a generator. The three earlier CI failures S1V42 and two failures S1V43 remain valuable evidence for typed boundary construction. Keep this theorem independently qualified and cached.

Even with S1V45, `Spin(Q)` determinant +1 requires proving the restriction of S1V41's Lipschitz action to the *same original Spin-only action* from S1V35/36, and a source-justified cancellation/nonzero scalar argument using actual Spin evenness. Global SU(2)→Spin(48) lift, covering topology, independent manuscript Clifford module and BFSS spectral/mass-gap theorem remain unproved.

## Repository protection
This acceptance audit is documentation-only, path-exempt from experimental CI. Canonical FCP main, upstream etblink/math and draft PR #25 were not changed or merged.
