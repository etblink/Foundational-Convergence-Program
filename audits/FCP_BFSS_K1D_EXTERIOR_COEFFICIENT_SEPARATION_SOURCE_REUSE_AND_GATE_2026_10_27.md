# FCP BFSS K1D — actual source Clifford/exterior coefficient separation

**Date:** 2026-10-27 PDT · **Branch:** `research/openai-math-su2-s1v52-global-lift-scoping-20261019` · **Status:** source-specific K1D program, only stages with strict accepted original Lean jobs count as theorems.

## Immutable source and qualified ancestry

Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- K1A [strict run #40491802270](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40491802270): the actual source `spinGroup source48Quadratic` vector-action kernel iff commuting with every original `CliffordAlgebra.ι` generator; source blob `5d1117d1f469a3a76a78c3c4ae4b8896b18b1b7a`, 1 theorem.
- K1C [strict run #40494768705](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40494768705): native graded commutator equals full `Q.polarBilin` contraction; an original Spin element acting trivially is annihilated by every actual polar contraction. Source blob `7334a3616740b902c9e42231efc97ed7566ad8c2`, 3 theorems.
- F20B actual PBW basis, immutable source blob `6e4c78fd31f9781267659313a8a0edfedd65e9ad`. Literal `FCP.BFSSS1V0.Source48Label = Fin 24 × Fin 2`; `Source48Vector = Source48Label → ℝ`; `source48Quadratic` is unit-weight sum-of-squares. The basis is the pinned `(Pi.basisFun ℝ Source48Label).ExteriorAlgebra` mapped by `(CliffordAlgebra.equivExterior Q).symm`, with local `letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel`.
- Existing S1V38 `source48_polar_eq_two_dot` proves the real original quadratic polarization; its exact strict/binary ancestry must be checked before direct import. Mathematical fact: `Q.polarBilin v w = 2*(v ⬝ᵥ w)`, so `v=(1/2) • Pi.single j 1` induces the `j`th coordinate dual.

## Key discovery: K1D can avoid illicit multiplication through equivExterior

Pinned Mathlib `CliffordAlgebra.changeForm_contractLeft` proves
`changeForm h (contractLeft d x) = contractLeft d (changeForm h x)`
for **every** dual `d` and genuine Clifford element `x`; `CliffordAlgebra.equivExterior Q` is precisely the associated real-linear `changeFormEquiv` into `ExteriorAlgebra ℝ Source48Vector = CliffordAlgebra 0`.

Therefore K1C's actual source conclusion reduces to a **source-exact exterior common contraction kernel**, with *no assumed multiplicativity* of `equivExterior`.

K1D0 candidate file
`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52K1D0OriginalCliffordExteriorContractionTransportProbe.lean`,
source blob `c3a96cb1abd32e3cfaa82ed515224bb958e2c4eb`, proposes exactly two roots:

1. `originalSourceClifford_exterior_contractLeft_transport` — the precise Clifford/exterior dual-contraction transport at the original `Q`.
2. `originalSourceSpin48_trivialAction_exteriorPolarContractions_zero` — every original Spin48 trivial-action element maps into the exterior polar common kernel.

Gate 1: [BFSS K1D0 strict Actions #40496553407](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40496553407), initially running. Pin the complete K1C accepted binary cache `bfss-k1c-original-polar-contraction-7334a3616740b902c9e42231efc97ed7566ad8c2-v1-adc7f124-lean4341-d13f23b-Linux-X64`, demand K1C, K1A and F20B nonempty compiled ancestry, then compile the two source-exact declarations and inspect the permitted-axiom reports. **The source statements are staged until a completed successful native strict Lean gate confirms both roots.**

## K1D1 exact remaining coefficient obligation

Let `E = ExteriorAlgebra ℝ Source48Vector`; let `B = (Pi.basisFun ℝ Source48Label).ExteriorAlgebra` be the actual original exterior basis indexed by `Finset Source48Label`. We need to prove:

```lean
∀ x : E,
  (∀ j : Source48Label, contractLeft (Q := (0 : QuadraticForm ℝ Source48Vector))
    ((Pi.basisFun ℝ Source48Label).repr j) x = 0) →
  ∃ c : ℝ, x = algebraMap ℝ E c
```

**Type warning:** the `repr j` expression above is only a schematic placeholder, NOT a checked Lean definition of the `j`th dual functional. Use an explicit source `Module.Dual ℝ Source48Vector` with `d_j w = w j` and verify its exact type in the pinned toolchain. No placeholder statement is admitted as a theorem.

For each nonempty `I : Finset Source48Label`, choose a real label `j ∈ I` and use the original ordered exterior basis `B I`. The exact left-contraction on `B I` is `±B (I.erase j)`; `d_j` kills `B I` if `j ∉ I`. Distinct `I` containing `j` have distinct `I.erase j`, so a `0` contraction at coordinate `j` forces each such coefficient to vanish. Since every nonempty `I` contains some `j`, all nonempty coefficients vanish; the scalar `I=∅` survives.

To formalize this, prefer small typed lemmas in order: (1) `d_j` on literal coordinate `Pi.single`; (2) source-polar spans all `d_j`; (3) contraction on one ordered distinct-coordinate exterior `ιMulti_family` basis word; (4) no coefficient collisions and basis `repr` extraction; (5) common kernel scalar. Avoid expanding all `2^48` words or rewriting `equivExterior` as an algebra map.

**Falsifiers:** incorrect actual source label equivalence, an unproved exterior ordering transport, a missing sign or factor 2 in contraction, or a non-scalar element surviving every coordinate contraction. An inconclusive Lean elaboration red is not a mathematical counterexample but remains a permanent engineering result.

## Unproved later steps

K1B negative Spin sign (compiled S1S rotor ancestry remains separate), two-sign actual Spin48 kernel, SO48 surjectivity, global double cover, original Spin9 lift, source gauge commutation, closed physical form invariance, uniform spectral coercivity and positive eigenvectors all remain open. This research note adds **zero** Lean roots independent of its subsequently qualified gates. Preserve original failed gates and cite their source and job IDs; never count green source-graph checks as new theorems.
