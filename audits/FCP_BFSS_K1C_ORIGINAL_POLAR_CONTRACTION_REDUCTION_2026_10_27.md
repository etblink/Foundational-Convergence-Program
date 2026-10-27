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
