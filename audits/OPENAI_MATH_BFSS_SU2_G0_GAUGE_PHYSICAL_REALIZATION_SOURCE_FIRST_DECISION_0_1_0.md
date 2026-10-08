# BFSS SU(2) G0 — gauge and physical realization, source-first decision 0.1.0

**Date:** 2026-10-08  
**Decision:** `GO__BOUNDED_SPIN_COLOR_PAIRING_AND_GAUGE_REPRESENTATION_DESIGN`; `NO_GO__CLAIMING_PHYSICAL_GAUGEDATA_OR_SPECTRAL_THEOREM_NOW`  
**Mode:** source-first interface/compatibility audit; **no new Lean CI candidate, no new proof claim**.

## Authority and pins

- FCP experiment: branch `research/openai-math-su2-concrete-potential`, no changes to canonical `main`.
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1.
- Primary upstream source: `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`, especially lines 85–132, 327–383, 697–728.
- Upstream `lean/OAI/MathematicalPhysics/BFSS/GaugeCore.lean`, blob `e4990dadf1d8bde849e351467282ab3f14989c3b`, lines 14–53 and 117–151.
- Upstream `lean/OAI/MathematicalPhysics/BFSS/GaugeOrbits.lean`, blob `d6343a145884b289716c04b2bdc6acb99bfa839a`, bosonic gaugeConjugate, colorConjugate, group and isometry lemmas.
- Upstream `lean/OAI/MathematicalPhysics/BFSS/Core.lean`, blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `AlgebraData N`, charges, core, closed-graph infrastructure.
- Accepted FCP witness and energy identity chain: Gates #82, #83, #85, #86; Gate #86 run `37772828330`, job `113296338379`, source `53c934b9aaf496ecfa9ebdd03906ca9b603786c7`, standard-only axioms for two concrete zero-operator theorems.

## Exact upstream GaugeData target (still unsatisfied)

`OAI.BFSSQuantum.AlgebraData.GaugeData` is **parametrized by `M : AlgebraData N`** and at `N=2` requires:

1. `boson : GaugeGroup 2 →* (Boson 2 ≃ₗᵢ[ℝ] Boson 2)`, a genuine group homomorphism;
2. `fermion : GaugeGroup 2 →* (Fermion 2 ≃ₗᵢ[ℂ] Fermion 2)`, a genuine group homomorphism;
3. `boson_adjoint`: precise color matrix conjugation of each `matrixCoordinate`;
4. `fermion_adjoint`: for every `g, α, A, f`, the exact covariance
```lean
fermion g (M.theta α A f) =
  ∑ B : ColorIndex 2, (M.adjointCoefficient g A B : ℂ) •
    M.theta α B (fermion g f)
```
5. `boson_continuous` and `fermion_continuous`: joint continuity as functions of group element and bosonic/fermionic input.

The upstream definitions of `physicalSpace`, `invariantCore`, density/closability, physical Hamiltonian and downstream gauge covariance theorems **depend on an actual `G : M.GaugeData`**. Having constructed `M : AlgebraData 2` does not supply these six obligations.

## Primary manuscript's precise intended gauge module

- Gauge group `SU(2)` acts by adjoint `O_h ∈ SO(3)` on colors, giving `O_h ⊗ I_{16} ∈ SO(48)` on real Majorana labels; via simply connectedness this lifts to `Spin(48)` and acts unitarily on the irreducible complex Clifford module (manuscript lines 98–106).
- To construct a gauge-invariant fermion vacuum line, the manuscript forms **color-specific** complex annihilators `c_j^a := (theta_{2j-1}^a + i theta_{2j}^a)/sqrt(2)` for `1≤j≤8`, `1≤a≤3`, and says gauge transformations preserve the annihilator span at each `j` by mixing colors (lines 701–727).
- Thus a particularly efficient constructive proof strategy uses an explicit pairing of **adjacent spin labels at fixed color**, so 24 complex Fock modes are canonically indexed `Fin 8 × Fin 3`. This is stronger than merely possessing a bijection between 48 Majorana labels and `Fin 24 × Fin 2`.

## Previously hidden-by-success compatibility question: FCP theta label pairing

In accepted `experiments/openai-math-su2-concrete-potential/SU2FermionF2Probe.lean`, blob `abe847c82da672274ce1852de892b3fcbb348579`, lines 106–133:

```lean
noncomputable def thetaLabelEquiv :
  (SpinIndex × ColorIndex 2) ≃ (Fin 24 × Fin 2) :=
  (Fintype.equivFin _).trans
    ((finCongr (by ...)).trans (Fintype.equivFin _).symm)

noncomputable def thetaCandidate α A :=
  majoranaCandidate (thetaLabelEquiv (α, A))
```

This *proves abstract CAR and irreducibility*, but the construction uses a **generic finite-type equivalence** and contains no established theorem that adjacent spin labels with fixed color map to the two Majoranas of the *same* Fock mode. Such compatibility must not be inferred from the 48-element cardinality proof. The manuscript's simple annihilator/gauge vacuum-line argument cannot be transported unchanged until an explicit compatibility fact is proved or the representation is reindexed.

**This is an OPEN ENGINEERING/FORMAL COMPATIBILITY OBLIGATION, not a detected false theorem or a defect in the manuscript.** All accepted Gates #82–#86 remain valid for their stated exact algebraic facts, regardless of this additional covariance requirement.

## Source-first next work package G1 — nontrivial, falsifiable

1. Define an **explicit spin-paired/color-preserving bijection** from `SpinIndex × ColorIndex 2` to `Fin 24 × Fin 2` corresponding to `(2j,a)↦((j,a),0)` and `(2j+1,a)↦((j,a),1)` in zero-based indices, with `Fin 8 × Fin 3 ≃ Fin 24` made explicit. Check bijectivity and actual label orientation/phase conventions, not merely cardinality.
2. Determine whether current `thetaLabelEquiv` satisfies the requisite pair identity; **do not presume it does**. If not, construct a **second**, paired theta family from the same accepted generic 24-mode Majoranas. Reuse existing generic CAR/irreducibility results by surjective label reindexing; do not silently replace or rewrite the Gate #82 witness.
3. State a concrete `SpinIndex × ColorIndex 2` theta pairing theorem and creation/annihilation compatibility with manuscript `c_j^a` before attempting `GaugeData.fermion`.
4. Reuse `GaugeOrbits` generic bosonic color-conjugation / isometry infrastructure for the boson action. For the fermion action, investigate genuine group-homomorphism + continuous unitary implementer using Fock/exterior-algebra functoriality or Spin(48) lifting; distinguish *existence in ordinary mathematics* from a verified Lean implementation.
5. First gate should be an exact paired-label theorem **with kernel axioms printed**. Only after its mathematical and API scope is frozen should a new Lean workflow candidate be submitted. Prefer a coherent gate containing pairing equivalence and explicit mode family, not more elementary quartic potential identities.
6. Later gates: full group action/covariance/continuity, actual `concreteAlgebraData.GaugeData`, nontrivial physicalSpace/invariantCore, gauge-equivariant supercharges, closed physical form, rotation sector/oscillator estimates. *None are accepted yet.*

## External contribution and science boundaries

An upstream PR or issue remains a **candidate**, not authorized; review source provenance, public contribution uniqueness and independent replay before any public submission. No FCP K1–K10, T6, NFC or framework classification changes. The source-review favorable verdict for the 2026 manuscript is not a Lean spectral theorem. The finite full `AlgebraData 2` witness must never be presented as a gauge or Hamiltonian spectral proof.

## Decision and stop boundary

**F5-G3 closed with Gate #86 PASS. G0 source audit completed now. No Gate #87 compiler candidate is deliberately launched in this decision step.** This avoids costly speculative CI loops before establishing the representation's pairing/covariance requirements. The next implementation action should be the bounded G1 explicit spin-paired/color-preserving label theorem, with the current theta family preserved and no claim of gauge lifting until verified.

**Project maxim:** the protocol exists to discover what is true, not to collect passing gates.
