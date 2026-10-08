# BFSS 24-mode fermion construction — post-Gate-31 bounded feasibility 0.1.0

**Date:** 2026-10-07 (Pacific)
**Status:** `SOURCE_INVENTORY_COMPLETE__FEASIBLE_ROUTE_IDENTIFIED__NO_FERMION_PROOF_GATE_STARTED`
**Authority:** Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; FCP accepted gamma9 milestone `audits/OPENAI_MATH_BFSS_GAMMA9_GATE_31_FORMAL_ACCEPTANCE_0_1_0.md`.

## Remaining interface

Pinned `lean/OAI/MathematicalPhysics/BFSS/Core.lean` requires, for `AlgebraData 2`:

```lean
theta : SpinIndex → ColorIndex 2 → (Fermion 2 →L[ℂ] Fermion 2)
theta_selfAdjoint : ∀ α A, IsSelfAdjoint (theta α A)
theta_CAR : ∀ α β A B, theta α A * theta β B + theta β B * theta α A =
  (if α = β ∧ A = B then 1 else 0) • (1 : Fermion 2 →L[ℂ] Fermion 2)
theta_irreducible : ∀ W : Submodule ℂ (Fermion 2),
  (∀ α A, ∀ w ∈ W, theta α A w ∈ W) → W = ⊥ ∨ W = ⊤
```

`Fermion 2 = EuclideanSpace ℂ (Fin (2^24))`. There are `Fin 16 × Fin 3` = **48 Majorana generators**, corresponding to 24 complex creation/annihilation modes. Exact type/index transport, analytic continuity and irreducibility are substantive obligations.

## Reusable pinned source (verified by direct retrieval)

1. `lean/OAI/Analysis/Laughlin/Operators/CAR.lean`: `OAI.Laughlin.Fock.Space Q = ExteriorAlgebra ℂ (Fin (Q+1) → ℂ)`; `create`, `annihilate` as `Module.End`; `create_anticommute`, `annihilate_anticommute`, `mixed_car` theorem.
2. `lean/OAI/Analysis/Laughlin/Fock/Adjoint.lean`: `create_annihilate_adjoint` for the occupation inner product.
3. `lean/OAI/Analysis/Laughlin/Fock/Inner.lean`: `occupationInner`, positive-definite occupation norm lemmas.
4. `lean/OAI/Analysis/Laughlin/Fock/SpectralDistance.lean`: `occupationEuclidean Q : Space Q ≃ₗ[ℂ] EuclideanSpace ℂ (Finset (Fin (Q+1)))`; corresponding inner and norm preservation.
5. `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`: `FockCoordinateSpace Q = EuclideanSpace ℂ (Finset (Fin (Q+1)))`, coordinate transport, `fockOperator` and adjoint theorem `fockOperator_create_adjoint`. This is a promising path to **continuous** operators in the canonical occupation Hilbert structure, avoiding reliance solely on algebraic `Module.End`.
6. `lean/OAI/Analysis/Laughlin/Fock/SpinRepresentation.lean`: occupation-basis unitary matrices for a separate SU(2) spin action. Useful methodological precedent, **not** an implementation of the BFSS color-gauge action.

Choose `Q=23` to obtain 24 creation/annihilation modes with `Finset (Fin 24)` as the occupation basis, of cardinality `2^24`. The further equivalence `Finset (Fin 24) ≃ Fin (2^24)` must be explicitly constructed, then used to transport the complex Euclidean Hilbert structure to the *exact* upstream `Fermion 2` definition without uncontrolled explicit expansion.

## Construction plan (not yet proved in Lean)

Let `c_j` and `a_j` denote the transported Fock creation and annihilation operators with `a_j=c_j^*`. Define paired self-adjoint Majorana operators by

```text
theta_(2j)   = (c_j + a_j) / sqrt(2)
theta_(2j+1) = i (c_j - a_j) / sqrt(2).
```

The expected CAR identity is `{theta_p,theta_q} = δ_pq · 1` (the pin's convention). Do **not** confuse it with the convention `{γ_p,γ_q} = 2δ_pq · 1`, which differs by a factor `sqrt 2`.

Indexing must map the three color copies each with eight mode pairs to `Fin 24`; a formal equivalence `SpinIndex × ColorIndex 2 ≃ Fin 48`, paired into `Fin 24 × Fin 2`, can establish the delta identity.

The **irreducibility** obligation should be proved from the occupation basis: the self-adjoint Majoranas linearly recover every creation/annihilation operator; a common invariant complex submodule is stable under these; the number projections isolate occupancy patterns and creation/annihilation connects every basis vector. Proving this for *arbitrary* submodules of the finite-dimensional Hilbert space, not merely coordinate subspaces, is required.

## Bounded next gate proposal

**Proposed Stage F1 — interface transport and operator pair, not full `theta`**:

- Instantiate the upstream 24-mode occupation Hilbert space, including the explicit basis-index equivalence into `EuclideanSpace ℂ (Fin (2^24))`.
- Construct exactly **one** paired creation/annihilation mode as continuous linear maps on that type, with a proved adjoint relation and a correctly normalized CAR.
- Verify that source Lean compiles with no `sorryAx`; preserve the upstream `Fermion 2` type.
- **Do not** attempt 48-generator irreducibility, gauge covariance, or the spectral theorem in this first gate. Never materialize a 16-million-by-16-million matrix.
- Stop and report a concrete API/performance blocker if index transport or operator adjoint integration is not manageable. Do not generate many speculative CI iterations.

**Decision:** Feasibility is sufficiently grounded to *propose* a small Stage F1 implementation, but the present note is a source-level engineering assessment, **not a Lean proof of the fermionic obligations**. Gate #31 closes the gamma phase; initiating F1 is a separate new bounded target.

**Controls:** FCP research branch only, no upstream edits or public contribution, FCP main unchanged. Protect the quality threshold, not the opportunity.
