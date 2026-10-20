# S1V52 — source-normalized global SU(2) → Spin(48) construction: Project Lead scoping

**Disposition (2026-10-19 PDT / 2026-10-20 UTC): RESEARCH SCOPING ONLY; ZERO new Lean roots accepted; ZERO new CI tests initiated.**
Source base: isolated S1V51 acceptance HEAD `2772c9a2a043571768428fd13a552045c69aa764`.
Immutable original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No changes to upstream, canonical `main`, or draft PR #25.

## Verified input, not a conjectural lift

- `SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe.lean`: the **original** real action is `sourceRealMajoranaMatrix g = kronecker (oneParticleMatrix g) I₂`, with group law, orthogonality and determinant one.
- `SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe.lean`: the genuine original 24-mode one-particle color matrix has determinant one, an eightfold three-color block action. The paired Majorana labels give **sixteen** mutually orthogonal 3-real-color blocks, not an arbitrary change of source model.
- `SU2BFSSPhysicalDomainL6H5E8YOriginalSU2ExactSourceEulerFactorizationProbe.lean`: an exact source SU(2) Z-Y-Z factorization using the **original positive-i** gauge curves has been kernel qualified. Its times need not be continuous as functions of the entire SU(2).
- `SU2BFSSPhysicalDomainS1V48OriginalGaugeSpin48ProjectionFiberProbe.lean`: the exact predicate `sourceSpin48CoversActualGauge g s` is stable under identity, multiplication and inverse.
- S1V49: the actual historical positive-i z-quarter is covered by `sourceSixteenColorRotor`.
- S1V50: this **specific** sixteen-block rotor squares to `1` in genuine `spinGroup source48Quadratic`; disjoint concrete quarter rotors commute. [Strict Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39375087716).
- S1V51: the genuine historical quarter squares to the native `-I₂ : GaugeGroup 2`, and actual Spin identity covers this native central element. [Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39377628660).

**Not established:** a continuous map of groups into the actual source `spinGroup`, its exact all-`g` projection, or its historical quarter normalization. A pointwise identity-covering witness for `-I₂` does not itself determine the normalized global lift's value at `-I₂`.

## P0 construction choice: algebraic quaternion / even-Clifford blocks

Prefer a source-qualified construction to a broad topological covering-space development until a bounded *pinned Mathlib* API test proves the latter is shorter.

1. Use the **already accepted original SU(2) quaternion row identity** from L6H5E8Q/Y. Every genuine original group element has the literal source matrix
   `[[u,v],[-conj(v),conj(u)]]`, with `u=a+ib`, `v=c+id`, `a²+b²+c²+d²=1`. The exact four real-coefficient extraction must be proved, not postulated.
2. For each actual source block `α : RealSpinBlock`, abbreviate `e_A = CliffordAlgebra.ι source48Quadratic (sourceBlockColorAxis α A)`. Its three **even** bivectors `e₀e₁`, `e₂e₀`, `e₁e₂` obey quaternion multiplication with `e_A²=1` and genuine cross-axis anticommutation. A candidate quaternion polynomial in these four basis elements can be assigned to `g`. **Its exact signs and basis permutation remain a source audit obligation**: compare against the literal `adjointColorMatrix` (G3A) and original positive-i curves (L6G6X), not just the order-two z-quarter.
3. Prove the resulting `qα : GaugeGroup 2 →* CliffordAlgebra source48Quadratic` multiplicative (four coefficients, finite quaternion table), scalar norm-one, and invertible with star-inverse. DO NOT mistake this for a map into `spinGroup`.
4. Prove `qα(g) ∈ spinGroup source48Quadratic` using source Euler factorization plus **separately certified** concrete z/y one-parameter rotor membership and equality to the quaternion polynomial. The Euler times may be discontinuous; continuity must instead come from the direct polynomial in entries of `g`.
5. Prove **cross-block even polynomial commutation** `qα(g) qβ(h) = qβ(h) qα(g)` for all `α ≠ β`. Existing S1V9 only proves commutation of its *fixed quarter rotors*; that theorem does NOT imply this general statement. Establish it from disjoint axes and even Clifford degree. Use `List.prod`, never `Finset.prod` or a fictitious global Clifford commutativity instance.
6. Form the original-source ordered sixteen-block product `L(g) = ∏_{α : Fin16} qα(g)` in `spinGroup source48Quadratic`. Multiplication follows from steps 3 and 5; identity from step 3.
7. Prove the exact S1V48 projection `∀g, sourceSpin48CoversActualGauge g (L g)`: first compute each Clifford-conjugation action on all three source color axes, then use S1V16's literal 48-basis decomposition and the exact G3A/S1J output/input matrix ordering. Euler-generation reduction is an option for the final matrix identity only after source-generator signs are checked.
8. Give the **actual source Clifford algebra and Spin subtype** their justified finite-dimensional real topology and show `Continuous L` via polynomial coefficients, Clifford multiplication and finite ordered products. Check pinned Mathlib definitions/types before committing to any topological API; the existing `spinGroup` source is primarily algebraic.
9. Independently compute `L(historicalQuarter)` and `L(sourceCentralNegOneGauge)` and calibrate the sign relative to S1V49's `sourceSixteenColorRotor`. The S1V50 parity is a consistency diagnostic, not a substitute for this calculation. Do not infer a sign merely from equal projection.

## Proposed minimal first strict gate

**S1V52-A algebraic feasibility**, with only independently meaningful source roots:
- literal source quaternion coefficient extraction and norm;
- actual-source three-bivector quaternion table, with the explicit Clifford sign convention;
- direct polynomial multiplicativity in the genuine source Clifford algebra for ONE actual labeled block;
- its all-`g` unit/star identity.

The *mathematical* acceptance criterion for this gate is exact declarations, real source definitions, source SHA preflight, Lean compiler success, permitted `#print axioms`, and a nonempty new `.olean`. Missing Spin membership, cross-block commutation, continuity, and projection remain OPEN. Do not count this gate as a global lift.

**Fallback feasibility only:** a covering lift from the original continuous `SU(2) → SO(48)`, or via duplication `SO(24) → Spin(48)`, is mathematically suggestive but requires a source-qualified Spin covering, kernel, topology, and lifting API. A general textbook theorem is not a pinned Lean implementation. Stop that route if a bounded audit cannot find these interfaces.

## Red-to-green safeguards

- S1V27: normalize complete original 48-real labels before injectivity; keep output/input matrix directions explicit.
- S1V42: avoid unfolding reducible Lipschitz definitions in large goals; use typed interfaces.
- S1V50 Gates 1–2: no global commutative Clifford instance; scalars are central using `neg_one_mul` / `mul_neg_one`, while distinct **even** block elements require a fresh proof.
- H5E8AB: choose extensionality at the correct linear-map level rather than expanding deeply into `Lp` operators.
- Keep negative evidence, exact pins and failed statements; do not turn successful `#print axioms` on a weaker theorem into acceptance of the intended strong theorem.
- Workflow creation or modification is deliberately withheld. A source/audit-only scoping commit does not qualify any theorem and should not launch experimental CI.

## Scientific ceiling

A global source SU(2)→Spin(48) lift would still **not** prove the independent manuscript complex Clifford/Fock module unitary intertwiner, transport of closed physical sixteen-supercharge/Hamiltonian domains, Spin(9) reduction, positive spectrum, mass gap, or an empirical statement. All stay independently open.
