# FCP BFSS K1C — source-exact polar contraction reduction

**2026-10-27 · Project Lead · research branch only.** This is a formal-gate audit and mathematical dependency boundary, not independent physical verification.

## Accepted predecessor and motivation

[K1A Gate #40491802270](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40491802270) **strictly accepted exactly one theorem root**, `FCP.BFSSS1V52K1A.originalSourceSpin48_trivialAction_iff_generator_commutes`, with only `propext`, `Classical.choice`, `Quot.sound`. Its exact source Git blob is `5d1117d1f469a3a76a78c3c4ae4b8896b18b1b7a` and accepted binary cache key is `bfss-k1a-original-source-kernel-commutant-5d1117d1f469a3a76a78c3c4ae4b8896b18b1b7a-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

The previous kernel-first plan pursued direct enumeration of ordered Clifford PBW monomials. A **shorter source-exact structural interface exists in the pinned Mathlib**: `CliffordAlgebra.contractLeft`, `CliffordAlgebra.involute`, and the polar quadratic functional `source48Quadratic.polarBilin v`. In particular [pinned Contraction.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Contraction.lean) supplies `contractLeft_ι_mul` and `changeForm_contractLeft`. [Pinned Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Basic.lean) supplies `ι_mul_ι_comm`, whose correction term is the literal polar pairing, not an assumed factor-of-two convention. [Pinned Conjugation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Conjugation.lean) supplies the genuine grade-involution algebra hom.

## Mathematical interface being tested

Let `V := Source48Vector`, `Q := source48Quadratic`, `C := CliffordAlgebra Q`, and `d_v := Q.polarBilin v : Module.Dual ℝ V`.

**K1C general graded commutator candidate**
```
ι(v)*x - involute(x)*ι(v) = contractLeft(d_v,x)    (x : C)
```

Proof on paper: the algebra-map base vanishes because scalars commute; the sum case follows from linearity; the constructor `x=ι(u)*y` follows from `ι(v)ι(u)=polar(v,u)·1-ι(u)ι(v)`, `involute(ι(u))=-ι(u)`, and `contractLeft(d,ι(u)*y)=d(u)·y-ι(u)*contractLeft(d,y)`. **No extra half-factor is needed** because `d_v` is the full **polar**, not `Q.associated v`.

**K1C even specialization:** when `x ∈ CliffordAlgebra.even Q`, `involute(x)=x`; thus the ordinary commutator is exactly polar contraction.

**K1C Spin kernel corollary:** if `sourceSpin48VectorAction s=identity`, K1A gives commutation with all original ι(v), and Spin membership supplies even parity. Hence for every original `v`, `contractLeft(d_v,s)=0`.

These are **formal candidates** until strict Lean compilation and all printed axiom reports pass. Candidate blob `f7b5e3f0a1f432a9fa6c02178a59b394eb1c5580`, path `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52K1COriginalSpin48CliffordPolarContractionProbe.lean`, exact 3 candidate roots. Gate [K1C #40493780580](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40493780580) initially in progress; final status and source revisions must be appended separately.

## Why this is worth proving

If the K1C identity qualifies, the remaining 48-dimensional Clifford-center question becomes:

```
  (x even) ∧ (∀ v, contractLeft (Q.polarBilin v) x = 0)
  ==> ∃ c : ℝ, x = algebraMap ℝ C c.
```

For positive nondegenerate `Q`, the polar functionals span the dual of the actual 48-label coordinate space. The pinned `changeForm_contractLeft` theorem is a **linear** contraction-equivariance identity under `equivExterior`; the exterior basis from source F20B is real-linear. The exact missing step is to prove in this basis that a non-scalar homogeneous exterior monomial has a nonzero appropriate contraction. Source PBW linear-basis extraction must be qualified; no use of `map_mul` on `equivExterior` is permitted. Once that is established, K1A+K1C+exterior separation could prove trivial-action Spin elements are scalar. Scalar Spin unitarity yields ±1 and requires source-exact negative unit existence separately (K1B staged).

**Scientific stop:** no two-sign kernel, covering, global Spin9 action, mass gap, or normalizable eigenstate is claimed by the K1C candidate alone.

## Immutable provenance and negative results

Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The strict gate must restore exact accepted K1A binary, verify source blobs, compile a genuine candidate `.olean`, audit three exact root names and axiom whitelist, and preserve all red logs and saved cache provenance. On a compiler red, diagnose the first exact type/rewrite error rather than weaken statements or hide failed proofs.

## Gate 1 — CI #40493780580, strict rejection at Lean elaboration

[Run #40493780580](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40493780580), job `122153960826`, **red**. The exact original source, Mathlib revision, candidate blob, accepted K1A binary cache and required source `.olean` files all passed; toolchain restoration and fresh Lean compilation were reached. Errors in original candidate blob `f7b5e3f0a1f432a9fa6c02178a59b394eb1c5580`:

- Line 41: `map_algebraMap` is not an available unqualified rewrite name at this pinned environment; use a typed `(CliffordAlgebra.involute : C →ₐ[ℝ] C).commutes r` algebra-map equation instead.
- Line 46: `rw [hx, hy]` failed because `mul_add` unfolded the expression into an unreassociated sum; explicitly replace RHS by IHs then use additive abelian normalization.
- Line 50: the input constructor has `ι(v) * (ι(x) * u)`; first reassociate to `(ι(v)*ι(x))*u` before applying `CliffordAlgebra.ι_mul_ι_comm`. Use the original polar functional and do not add a factor of two.
- Line 45: the `sub_add_sub_comm` simp argument was unused under warning-as-error and must be removed.
- Line 63: backward rewriting `involute x=x` transformed additional occurrences of `x` in the goal. Instead simplify the *general theorem* forward using `involute_eq_of_mem_even`.

All three candidate roots printed `sorryAx`; **zero roots accepted**. These are first-causal proof-engineering errors, not a mathematical counterexample to the graded identity. Do not mark Gate 1 green.

**Gate 2 repair:** candidate blob `7334a3616740b902c9e42231efc97ed7566ad8c2`, mathematical theorem names/hypotheses and source unchanged, exact typed algebra-map equation, reassociation, forward parity simplification. Workflow source and cache key both pinned to this new blob. Gate 2 must be independently read for its actual run ID/status; the link is a placeholder until verified, **not evidence of an accepted theorem**.

## K1D target after K1C — finite exterior contraction coefficient separation

The source-exact proof need not expand the Clifford product of arbitrary 48-generator words if K1C's graded commutator is accepted. The target then becomes the **exterior** statement that the common kernel of all coordinate left contractions on `ExteriorAlgebra ℝ Source48Vector` is precisely the scalar line.

Pin [ExteriorAlgebra/Basis.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/ExteriorAlgebra/Basis.lean): `Module.Basis.ExteriorAlgebra` is indexed by `Finset Source48Label`. The basis elements are `ιMulti_family` of the original coordinate basis with a proved ordered wedge convention. Pin [Contraction.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Contraction.lean): `changeForm_contractLeft` transports native contractions under the **real-linear** `equivExterior`.

**Exact proposed coefficient argument:** for each nonempty finite label subset `I`, choose `j ∈ I`. The exterior left contraction with the `j`th coordinate dual takes the ordered wedge basis monomial `e_I` to `±e_(I\{j})` (and kills monomials not containing `j`). On the subcollection containing fixed `j`, the map `I ↦ I\{j}` is injective, so the coefficient at `I\{j}` in the contraction of a general multivector isolates exactly `±c_I`. No cancellation between distinct subsets is possible. If all such contractions vanish, all coefficients for nonempty subsets vanish; the exterior element is scalar. The source Spin element then returns to original `C` via `equivExterior.symm`.

**Source polarity bridge:** existing genuine S1V38 declaration `FCP.BFSSS1V38.source48_polar_eq_two_dot` states `polar Q a b = 2*(a ⬝ᵥ b)` for the exact original `Source48Label` type. Thus `a=(1/2) • Pi.single j 1` gives the coordinate dual `b ↦ b j`. Do **not** prove this from an arbitrary assumed Euclidean representation or infer S1V38 compiled binary availability from the K1A cache; identify and restore its separately qualified ancestry if a new gate imports it.

**Falsifiers:** failure to derive a coordinate contraction from the actual weighted-sum-squares quadratic, failure to identify F20B's exact basis with the exterior ordered products, or a nonzero exterior grade surviving all coordinate contractions. None has yet been formally ruled out by a fresh Lean K1D gate. This is the next bounded theorem plan, not a new accepted claim.

## Independent small-dimensional exact sign control (not a source Lean gate)

I independently evaluated the candidate graded-commutator identity on every ordered Clifford basis monomial and every coordinate generator for Euclidean Clifford dimensions `n ∈ {1,2,4,6,8}`, using exact integer signs and bitmasks. For bitsets `I,J`, the Clifford word multiplication sign was computed by inversion parity `sum_k I_k * popcount(J_{<k}) mod 2`, and the polar-contraction coefficient for a basis word containing `j` was computed as `2*(-1)^popcount(I_{<j})`. The equality `e_j e_I - (-1)^|I| e_I e_j = 2 ι_{e_j}(e_I)` passed all coordinate/monomial pairs:

`n=1: 2; n=2: 8; n=4: 64; n=6: 384; n=8: 2048` exact basis cases.

This checks signs and absence of an erroneous factor of two in a finite surrogate family, **not** the original 48-dimensional source identification, Lean declaration, CI qualification, or scalar-commutant theorem. No accepted roots from this check.

## Gate 2 — FORMAL ACCEPTANCE of three source-exact theorem roots

**[GitHub Actions #40494768705](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40494768705), job `122157309697`, completed SUCCESS.** Exact candidate Git blob `7334a3616740b902c9e42231efc97ed7566ad8c2`. Research-run source checkout, frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, **qualified K1A parent cache**, required original source compiled objects, fresh compilation, nonempty new `.olean`, and three printed axiom reports all passed.

The accepted exact source declarations are:

```lean
FCP.BFSSS1V52K1C.originalSourceClifford_gradedCommutator_eq_polarContraction
FCP.BFSSS1V52K1C.originalSourceClifford_evenCommutator_eq_polarContraction
FCP.BFSSS1V52K1C.originalSourceSpin48_trivialAction_polarContractions_zero
```

Every one depends on **only** `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`, warnings, or Lean errors. Original job log:

```text
K1C_COMPILER_EXIT 0
K1C_ORIGINAL_CLIFFORD_POLAR_CONTRACTION_THREE_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1c-original-polar-contraction-7334a3616740b902c9e42231efc97ed7566ad8c2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**Accepted scientific result:** For the actual original source 48-real Clifford algebra, its graded commutator with any original generator is the exact native polar contraction; even elements specialize to the ordinary commutator; a Spin element with trivial original 48-vector action is annihilated by all actual source polar contractions. This is a source-qualified **structural reduction** and adds **+3 real Lean theorem roots**. It supersedes the earlier 'in-progress' status while keeping Gate 1 rejected and preserving its concrete compiler failures.

**Still open and unproved:** all-contractions-zero ⇒ element lies in scalar line (K1D); original coordinate/polar-dual spanning and exterior coefficient extraction; actual original Spin negative scalar K1B; full kernel `{±1}`; Spin→SO surjectivity/covering; global Spin(9) lift, closed physical q-form invariance, high-sector coercivity, and positive normalizable eigenstate theorem. No K1D or physical root may be counted from K1C.

The historical accepted F21A family remains +2, S4's separate family remains 63, and K1A remains +1. This operation adds **K1C +3** only; do not double count imported roots.
