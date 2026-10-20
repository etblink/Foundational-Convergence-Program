# S1V52 L9B0–L9B1 — original-source same-block quaternion adjoint: bounded Project Lead scoping

**Disposition at this record:** source candidates STAGED; ZERO new roots promoted. L9B0 Gate #1 triggered at immutable SHA `cf391a5b7bbe85c8dbbdfbdb6916fee4a879b1c9`, [Actions #39512443900](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39512443900); the live run requires independent verdict inspection. L9B1 has NO workflow and is UNQUALIFIED. Accepted baseline entering L9B0 = 151 distinct S1V52 roots.

## Source and scientific invariants

- Active isolated branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Pinned original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Actual `Q=source48Quadratic` on `Source48Vector=Fin 24 × Fin 2 → ℝ`, original `RealSpinBlock = Fin 8 × Fin 2`, and original source generators `E α i = CliffordAlgebra.ι Q (sourceBlockColorAxis α i)`.
- Bivector orientation is strictly accepted S1V52A: `Z=e0 e1`, `Y=e2 e0`, `X=e1 e2`; `ZY=X, YX=Z, XZ=Y`.
- Actual quaternion `p=(a,b,c,d)` and source polynomial `qα(p)=a·1+bZ+cY+dX`, with the original real gauge matrix `[[a+ib,c+id],[-c+id,a-ib]]`. No alternative SU(2) convention or new Clifford representation.
- The accepted L9A gate separately establishes that any block-β polynomial fixes any α-axis under Clifford star-conjugation when α≠β. It does NOT establish the *same-block* action.

## L9B0: original source nine-axis sign table (first strict gate)

The original source axis/bivector parity signs are:

| Source axis | Z | Y | X |
| --- | --- | --- | --- |
| e0 | anticommutes | anticommutes | commutes |
| e1 | anticommutes | commutes | anticommutes |
| e2 | commutes | anticommutes | anticommutes |

The nine exact names are `originalAxis0_Z_anticomm`, `originalAxis1_Z_anticomm`, `originalAxis2_Z_comm`, `originalAxis0_Y_anticomm`, `originalAxis1_Y_comm`, `originalAxis2_Y_anticomm`, `originalAxis0_X_comm`, `originalAxis1_X_anticomm`, and `originalAxis2_X_anticomm` under `FCP.BFSSS1V52L9B0`.

Candidate blob `08314a803dd1b0e24cb6ad7fe93250350011c253` was independently checked. Strict workflow is triggered **only** by the L9B0 YAML path on the isolated branch, restores the L9A exact qualified cache, fail-closes on source/toolchain/import mismatch, compiles a new nonempty olean, requires all nine exact #print axioms with only `propext`, `Classical.choice`, `Quot.sound`, and forbids `sorryAx` or compiler errors. Do not promote partial compile results if the combined gate is red.

## L9B1: same-block reflection candidates, not yet CI-qualified

Because genuine source Clifford star is exactly quaternion coordinate conjugation (accepted S1), each original axis moves through `q*(p)` by flipping precisely the coordinate corresponding to its *commuting* bivector:

```text
e0 star(qα(a,b,c,d)) = qα(a, b, c,-d) e0
e1 star(qα(a,b,c,d)) = qα(a, b,-c, d) e1
e2 star(qα(a,b,c,d)) = qα(a,-b, c, d) e2
```

The three exact candidate theorems live in `SU2BFSSPhysicalDomainS1V52L9B1OriginalSameBlockQuaternionAxisReflectionProbe.lean`. No new theorem is accepted from mere existence of this file. L9B1 CI requires a distinct gate only AFTER L9B0 qualification, a verified cache/import closure and a new source SHA pin.

## Downstream finite calculation and decisive test

Combining the reflection with accepted quaternion multiplication B2 gives `q e_i q* = (q r_i) e_i`. The real coordinate products, checked independently by elementary symbolic algebra but **not yet kernel-qualified**, are:

```text
q r0 = (a²-b²-c²+d², 2ab-2cd, 2ac+2bd, 0)
q r1 = (a²-b²+c²-d², 2ab+2cd, 0, 2ad-2bc)
q r2 = (a²+b²-c²-d², 0, 2ac-2bd, 2ad+2bc)
```

These lead to a 3×3 source-action matrix, rows=output B, columns=input A:

```text
[a²-b²-c²+d²,   2ab+2cd,       -2ac+2bd]
[-2ab+2cd,      a²-b²+c²-d²,    2ad+2bc]
[2ac+2bd,       -2ad+2bc,      a²+b²-c²-d²]
```

An independent symbolic multiplication of the literal 2×2 matrix `g` and the original ordered Pauli matrices `(σx,σy,σz)` yielded the same coefficients from `tr(σB g σA g†)/2`. This is **pre-gate algebraic evidence**, NOT acceptance of equality to the original `pairedAlgebraData.adjointCoefficient` or `adjointColorMatrix` in Lean. That remaining bridge must transport to the actual normalized Pauli source, exact output/input order, and original G3A source definition, without inventing assumptions.

## Failure and forward decision rules

1. If L9B0 is red, inspect the first causal Lean or CI error; never count its nine candidates as accepted. Only fix actual source proof defects, preserving original statements and source pins.
2. Do not build all nine Clifford-conjugation coefficients by unfolding the original 48-dimensional quadratic form. Reuse the small sign table, star equality, B2 polynomial multiplicativity, and B1 `sourceQuaternionCompose` finite real `ring` normalization.
3. If L9B1 is later qualified, independently prove the exact finite color matrix equality using the *original* G3A `adjointColorMatrix`. Its argument order is `adjointCoefficient g A B` with B output and A input.
4. Only after the same-block and cross-block identities are accepted, assemble the ordered 16-block product action; separately qualify the G1A `pairedLabelEquiv` source-label bridge (S1V7 is staged), then prove S1V48's all-g original projection predicate.
5. Global continuity, historical gauge-curve/pauliScale normalization, original complex Clifford/Fock intertwiner, unbounded charge/Hamiltonian domains, Spin(9) reduction and BFSS spectral claims remain independent. A pointwise/group-algebraic Spin(48) hom is not itself a continuous physical Fock action or spectral theorem.

Research branch only; no `main`, upstream math, or draft PR #25 mutation.
