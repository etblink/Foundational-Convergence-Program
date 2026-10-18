# BFSS SU(2) S1D — exact source same-covariance relative gauge scalar is a character

**Accepted:** 2026-10-17 PDT / 2026-10-18 05:24 UTC.
**Disposition:** `PASS__SOURCE_FOCK_48_THETA_SAME_COVARIANCE_IMPLIES_UNIQUE_NONZERO_MULTIPLICATIVE_SCALAR_CHARACTER__5_AXIOM_CLEAN_ROOTS`.

## Immutable source, build, axiom evidence

- [Manuscript Relative Gauge Character #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39100218258), job **117594784898**, successful at ~2026-10-18 05:24 UTC. Exact candidate/workflow head `95944f5af07b9a908b9bfce5b55fa8c412c8ccc4`.
- Qualified S1D source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1DRelativeGaugeCharacterProbe.lean`, hash-guarded frozen blob **`99ab414fc5d8d24157a6694c70c3f339b5947aa3`**. Frozen actual theta/G4B/G4H and Schur S1A/S1B sources SHA-pinned in strict workflow.
- Exact original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**. Pinned source/Mathlib/accepted original Fock compiled-object provenance and scoped cache availability verified before qualification.
- Recompiled historical S1A scalar commutant and S1B same-covariance implementer scalar lemma from unchanged frozen sources, strictly checked their own permitted axioms, marker `S1A_S1B_EXACT_SCALAR_IMPLEMENTER_CONDITIONAL_PREREQUISITES_KERNEL_PASS`.
- Compiled importable S1D olean and checked **five** source-specific `#print axioms` roots: `relativeGaugeScalar`, `relativeGaugeScalar_apply`, `relativeGaugeScalar_one`, `relativeGaugeScalar_mul`, `relativeGaugeScalar_ne_zero`. All five reports contain only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`, Lean `error:` or `unknownIdentifier`. Exact gate marker **`S1D_SOURCE_SU2_RELATIVE_GAUGE_SCALAR_CHARACTER_5_ROOTS_KERNEL_PASS`** at 2026-10-18 05:24:13 UTC.

## Exact mathematical content and conditionality

For the *actual* source `Fermion 2` with 48 genuinely qualified `pairedTheta α A`, let `V : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` be **any second group representation** satisfying the same 48-generator SU2 color-covariance formula as the accepted literal `fermionGaugeLinearHom`. S1B/Schur proves `V(g)v = χ(g) • fermionGaugeLinearEquiv(g)v` for a unique scalar `χ(g) : ℂ` on all source Fock vectors.

S1D additionally proves precisely `χ(1)=1`, `χ(gh)=χ(g)χ(h)` and `χ(g)≠0` for all genuine source SU2 elements. It is a mathematically genuine **abstract group character into ℂˣ**, not an independently assumed scalar homomorphism. **No continuity, no extra physical premise, no auxiliary gamma basis, no false whole-domain partial operator composition or unproved lemma** enters these results.

**Crucial qualification:** Existence of the *particular manuscript* lifted action on source Fermion 2 is NOT proved. `V` and its theta covariance are clearly quantified **hypotheses** in the theorem, not constructed objects. S1D alone also does not prove `χ(g)=1` or global SU2 no-character; those remain independent tasks. Strict kernel acceptance cannot be promoted to the independent paper Spin48 realization.

## Gate #1 negative knowledge and corrected #2 scope

[Relative Gauge Character #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39099894625), first new candidate source blob `e3ae5fcdbfb3aff8f95c260693c6037d32ae4135`, failed exactly at `relativeGaugeScalar_mul` when an unrestricted `rw [mul_comm]` built a dependent motive rewriting the `2` in `Fermion 2` and mismatched a WithLp group action. Four new roots printed permitted axioms, but the fifth included `sorryAx`: **entire first S1D gate remained red**. Correction changes ONLY that rewrite to `mul_comm (relativeGaugeScalar V hV h) (relativeGaugeScalar V hV g)`. All five statements, original group, representation, and hypotheses unchanged; #2 passed. [Negative audit](./OPENAI_MATH_BFSS_SU2_S1D_RELATIVE_GAUGE_CHARACTER_GATE_1_RED_CAUSAL_REWRITE_2026_10_17.md).

## Next truth-bearing phase target: discharge scalar character without assuming a Spin-lift equality

The accepted original-source H5E8Y Euler theorem at [#356](https://github.com/etblink/Foundational-Convergence-Program/actions) expresses **EVERY** source SU2 group element as `Z(a)Y(b)Z(c)` using the genuine positive-i color Pauli curves; H5E8Z at #357 proves algebraic generation of the full original gauge group. The source H5E8R/T proofs give literal 2×2 matrices:
```text
Z(t) = diag(exp(i*t/√2), exp(-i*t/√2)),
Y(t) = [[cos(t/√2), sin(t/√2)], [-sin(t/√2), cos(t/√2)]].
```
A nontrivial, **fully algebraic, continuity-free** proof of character triviality is available as a bounded new target, not yet Lean-qualified: let `a = π/√2`. Direct matrix multiplication gives `Y(a) Z(t) Y(a)⁻¹ = Z(t)⁻¹` and `Z(a) Y(t) Z(a)⁻¹ = Y(t)⁻¹`. A character into the abelian group ℂˣ is conjugacy invariant, so `χ(Z(t))²=χ(Y(t))²=1`. The real-parameter one-parameter group laws imply `χ(Z(t))=χ(Z(t/2))²=1` and similarly for `Y(t)`; the **accepted exact Euler factorization** then forces `χ(g)=1` for all source SU2. This avoids assuming an unverified generic `Group.IsPerfect (GaugeGroup 2)` Mathlib instance, continuity, or importing a different SU2 group.

The next strict mathematical proof should isolate and qualify the two exact conjugation identities and source-curve half-parameter group law on the pinned R/T/U/Y source, then combine with S1D character. This would establish **uniqueness of a source-Fock same-covariance gauge homomorphism**, but still NOT existence of the paper's independent module unitary `J` or its lift and charge/closed-domain intertwiner.

Afterward: construct independent paper `𝓕` and normalized Clifford-unitary equivalence, transport the real 48-generator action with exact group-lift orientation, the SU2 inverse bosonic pullback, all 16 original supercharges and domains; independently verify manuscript Spin9 confinement/positive point spectrum. Never claim BFSS mass gap from these phase results.

**Governance:** S3L research-only, draft PR #25 normal S3K base open/unmerged, main/upstream unchanged; do not rerun 30-minute AY–BH Hamiltonian chain for this separate finite gauge problem.
