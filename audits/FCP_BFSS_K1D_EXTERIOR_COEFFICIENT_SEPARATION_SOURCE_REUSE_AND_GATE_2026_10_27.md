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


## K1D0 Gate 1 — two genuinely accepted original-source Lean theorem roots

[GitHub Actions #40496553407](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40496553407), job `122163366215`, completed SUCCESS on original source blob `c3a96cb1abd32e3cfaa82ed515224bb958e2c4eb`, with pinned etblink/math `adc7f124...`, Lean 4.34.1, Mathlib `d13f23b...`, restored qualified K1C cache and actual F20B, K1C, K1A ancestor `.olean` files. A fresh native compile generated a nonempty `.olean`, checked two exact root names and disallowed extra axioms/warnings/sorryAx.

```text
'FCP.BFSSS1V52K1D0.originalSourceClifford_exterior_contractLeft_transport'
depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.BFSSS1V52K1D0.originalSourceSpin48_trivialAction_exteriorPolarContractions_zero'
depends on axioms: [propext, Classical.choice, Quot.sound]
K1D0_COMPILER_EXIT 0
K1D0_ORIGINAL_CLIFFORD_POLAR_CONTRACTION_TWO_ROOTS_STRICT_PASS
```

**Formal acceptance:** +2 NEW genuine original-source theorem roots. This is a transport/reduction, not full K1D exterior coefficient separation. Nothing about the whole Spin48 kernel classification, covering, or physical BFSS eigenstates is admitted.

**Infrastructure issue independently spotted post-acceptance:** The Gate 1 binary save used a semantically misleading cache-key prefix `bfss-k1c-original-polar-contraction-c3a96cb1...` for the *K1D0* accepted blob. This did NOT affect fresh proof compilation or its theorem validity, but the cache name would mislead successors and reuse. Do not silently call it a correctly named K1D0 key. The workflow has been repaired in commit `4b07063614fadee76c2a62f1f9b469c511b583b5` to use the distinct unambiguous key `bfss-k1d0-original-clifford-exterior-transport-c3a96cb1abd32e3cfaa82ed515224bb958e2c4eb-v1-adc7f124-lean4341-d13f23b-Linux-X64`; it also fixes the stale run-step/diagnostic labels. Reproduction Gate 2 [run #40497329075](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40497329075) was triggered by the workflow-only correction, preserving the EXACT mathematical candidate blob unchanged. Verify its actual terminal status before stating that a correctly named cache exists.

**Next genuine theorem requirement:** common kernel of all original coordinate contractions on the exterior algebra is the scalar line, via the real `Module.Basis.ExteriorAlgebra` basis and `Finset.erase` coefficient injection. Separately qualify that literal original positive polar functionals span these coordinate duals. K1B negative scalar element and downstream claims remain open.


## Original polar coefficient source formally reverified as previously accepted

[Historical S1V38 Actions #39354326793](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39354326793), job `118405526429`, **success** with five strict permitted-axiom roots and exact source blob `27ed1e4933499c108ee614b4731a3479a318aa8b`. The accepted `FCP.BFSSS1V38.source48_polar_eq_two_dot` theorem is precisely the original 48-label identity `polar source48Quadratic a b = 2 * (a ⬝ᵥ b)`. Independently accepted historical binary cache:
```text
bfss-s1v38-isolated-source48-polar-coefficient-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
This antecedent is mathematical accepted source, **not** a new K1D theorem. K1D1 may *reuse* it to show `(Q.polarBilin ((1/2) • Pi.single j 1)) w = w j`; before importing the module, first check binary availability on the intended runner and restore that exact cache or independently reconstruct its qualified original ancestry. A missing cache is a binary dependency gap, not a refutation. Do not reimplement S1V38's polar-equals-two-dot theorem or substitute a nonoriginal quadratic form.


## K1D0 Gate 2 — independently accepted source-identical requalification and correct binary cache

[GitHub Actions #40497329075](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40497329075), job `122165964702`, terminal **SUCCESS**. Reverified exactly the *unchanged* accepted candidate blob `c3a96cb1abd32e3cfaa82ed515224bb958e2c4eb`, original pinned math, K1C accepted binary ancestry, fresh Lean 4.34.1 compiler, two exact roots with only `propext`, `Classical.choice`, `Quot.sound`, no warnings/sorryAx, nonempty compiled `.olean`.

```text
K1D0_COMPILER_EXIT 0
K1D0_ORIGINAL_CLIFFORD_EXTERIOR_TRANSPORT_TWO_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1d0-original-clifford-exterior-transport-c3a96cb1abd32e3cfaa82ed515224bb958e2c4eb-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

The misleading first-gate `bfss-k1c...` cache prefix is now **corrected by a genuine source-identical requalified run**, not relabeled after the fact. This is a duplicate strict acceptance of the same two roots, **NOT two additional mathematical roots**. Future successors should restore the source-bound **K1D0** cache above, not the earlier mislabeled Gate 1 binary.

## K1D1 next bounded candidate (not yet accepted)

`SU2BFSSPhysicalDomainS1V52K1D1OriginalPolarCoordinateExteriorContractionProbe.lean`, source blob `81a8b8163bc12b61427fde260fc2778a9cb20097`, is staged with exactly two new statements:
- `originalSourcePolar_halfSingle_eq_coordinateDual`: literal `(Q.polarBilin ((1/2) • Pi.single j 1)) = (LinearMap.proj j : Module.Dual ℝ Source48Vector)`, using historically strict S1V38 polar=2*dot.
- `originalSourceSpin48_trivialAction_exteriorCoordinateContractions_zero`: combine the new source coordinate-dual identity and accepted K1D0 to kill EVERY original source exterior coordinate contraction.

[Strict K1D1 workflow #40498190392](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40498190392) checks TWO **independently qualified accepted binary ancestries** before compilation: K1D0 correct cache and S1V38 historical accepted `bfss-s1v38-isolated-source48-polar-coefficient-v1-adc7f124-lean4341-d13f23b-Linux-X64` cache. If either has expired, record a cache failure only. Mathematical statement, root count, and fresh Lean status MUST be verified from terminal run logs, not guessed. This intermediate theorem still does NOT prove exterior coordinate coefficient-separation/scalar common kernel.


## K1D1 Gate 1 — explicit historical S1V38 cache miss, zero roots

[Actions #40498190392](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40498190392), job `122168899477`, **RED** at precompiler ancestry. Original frozen math/S1V38/K1D1/K1D0 source blob pins passed. Current K1D0 source cache **restored successfully**, but the independently historically accepted S1V38 cache key `bfss-s1v38-isolated-source48-polar-coefficient-v1-adc7f124-lean4341-d13f23b-Linux-X64` was unavailable:
```text
Cache not found for input keys: bfss-s1v38-isolated-source48-polar-coefficient-v1-adc7f124-lean4341-d13f23b-Linux-X64
K1D1_S1V38_CACHE_MISSING
```
**No new K1D1 Lean declarations compiled; +0 K1D1 roots.** This is binary-cache provenance, not a counterexample to the exact original polar-coordinate theorem.

**Recovery decision:** Source K1D1 theorem statements remain unchanged. Before rebuilding any accepted S1V38 source, test whether the currently **available qualified K1D0 cache** already contains a nonempty original `S1V38.olean`. Remove the unnecessarily strict requirement that a *particular* S1V38 cache key must hit, but retain exact S1V38 Git source blob pin and fail closed unless its compiled `.olean` is actually present. If not present, record that specific missing artifact, and recover accepted S1V38 source and its predecessor chain separately. Do not silently synthesize substitute source facts or call a cache miss a mathematical red.


## K1D1 Gate 2 — source-blob-preserving ancestry route confirmed

[Actions #40498476000](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40498476000), source/workflow commit `03db6c3e08e5fcb29f3d9e8371cc754e4e9e453d`, keeps the **unchanged K1D1 candidate blob** `81a8b8163bc12b61427fde260fc2778a9cb20097` and the same literal original source theorem statements. It corrects only Gate 1's overconstrained cache provenance condition: explicitly restores the accepted K1D0 cache and attempts the accepted historical S1V38 cache, but permits S1V38's verified nonempty `.olean` to originate in the already qualified K1D0 binary ancestry.

**Actual completed source/ancestry observations:** preflight source blob pins passed; exact K1D0 cache restored; dedicated S1V38 cache reported unavailable; the fail-closed test of the actual S1V38 compiled module **passed** in the accepted K1D0 cache. This qualifies the *input ancestry*, NOT the K1D1 theorem; fresh Lean compilation, two exact roots, permitted axioms, and candidate binary save require separate terminal gate verification. Do not claim K1D1 accepted merely from this.


## K1D1 Gate 2 — actual Lean source extensionality red, no roots

[GitHub Actions #40498476000](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40498476000), job `122169858348`, terminal RED after exact K1D0/S1V38 compiled ancestry, original-source pins and pinned toolchain/Mathlib passed. Genuine Lean candidate compile reached source blob `81a8b8163bc12b61427fde260fc2778a9cb20097`. The source `ext v` tactic over-applied extensionality recursively to an equality of linear maps, making the introduced `v` a `Source48Label` rather than the intended `Source48Vector`. The failure at line 37 was exactly:
```text
Application type mismatch: v has type Source48Label but is expected Source48Vector
```
Both candidate theorems had `sorryAx` in rejected axiom reports. **No K1D1 accepted roots.** This is a controlled Lean proof-engineering defect; it is not evidence against the original polar identity.

**Gate 3 correction:** source `ext v` is replaced by the explicitly bounded `apply LinearMap.ext; intro v`; source blob `8bfca13f5ba81e77773c391de6114273023f0bb1`. Statements, original Q/source labels, pinned imports, and proof after the first typed extensionality step are unchanged. Workflow exact candidate pin and save key updated at `9a26d77d768c694e622669c04c848a135f018df5`; Gate 3 must be checked for the actual run ID/terminal result before any acceptance (link is provisional until confirmed).


## K1D1 Gate 3 — source symbolic arithmetic red, 0 theorem roots

[GitHub Actions #40499528674](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40499528674), job `122173421914`, concluded **failure** after all exact source, original `etblink/math`, accepted K1D0/S1V38 compiled ancestry, and pinned Lean/Mathlib checks **passed**.

The revised source `8bfca13f5ba81e77773c391de6114273023f0bb1` **eliminated the prior accidental repeated `ext` error**: Lean now correctly introduces `v : Source48Vector`. At the final `norm_num` of the first declaration, Lean reported just one elementary field equality:
```text
j : Source48Label
v : Source48Vector
hsingle : Pi.single j 1 ⬝ᵥ v = v j
⊢ 2 * (1 / 2 * v j) = v j
```
Neither of the two K1D1 roots was accepted; both rejected with `sorryAx`. **This is a remaining symbolic real arithmetic proof closure, not a source/polar identity counterexample**. Do not weaken the theorem or promote either root.

**Gate 4 correction decision:** change ONLY the final `norm_num` tactic on this source-side identity to `ring`, an exact real polynomial normalizer. Keep source type, both theorem signatures, source Q, polar conventions, qualified binary keys and axiom validator unchanged. Bind workflow preflight and resulting distinct cache key to the new candidate Git blob. The gate must run to terminal status before acceptance.


## K1D1 Gate 4 — exact symbolic-ring correction launched

Following the first-causal Gate 3 arithmetic goal `2 * (1 / 2 * v j) = v j`, the source candidate changes only the final tactic `norm_num` to `ring` after `rw [hsingle]`. Source Git blob now `46cd08ee5124dae7160f6fa2135b9b01c73b1030`, authoring commit `03c71a05be6838f15619aaa313e2223c7ebbf0b0`, workflow pin commit `014d937cb97010368061b70a4bbb827b9e6069fc`. The original source, two theorem statements, frozen original math, K1D0 and S1V38 source declarations, and accepted axiom whitelist are unchanged.

[GitHub Actions Gate #40503702666](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40503702666), job `122187529298`, passed source-pinned preflight and compiled ancestry recovery; pinned toolchain/Mathlib restoration followed. **Accept neither K1D1 theorem until this run has completed fresh Lean compilation, exact two `#print axioms` reports without `sorryAx`, and saved its properly source-hash-pinned `.olean` binary.** The last checked status was in progress. This is a bounded tactic repair, not a new hypothesis or claim.
