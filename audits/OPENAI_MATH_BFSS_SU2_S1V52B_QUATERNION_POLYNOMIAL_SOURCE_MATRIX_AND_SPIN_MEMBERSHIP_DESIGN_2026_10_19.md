# S1V52-B — exact source quaternion polynomial, projection and Spin membership design

**Project Lead research deduction, October 19 PDT / October 20 UTC. NOT a Lean acceptance.**

Immediate prerequisite: S1V52-A's **eleven actual source** Clifford multiplication-table roots, staged at commit `7ca4563d095324235c54d953de0d3b341a0ad56b` and tested only by the explicit single-shot [S1V52A Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39381155776). Await its exact kernel/axiom results; do not upgrade this document to a theorem if CI fails.

## Literal source identifiers

- Original native `GaugeGroup 2` represented by the 2×2 matrices from L6H5E8Q:
  `g = [[u,v],[-star v,star u]]`, `u=a+ib`, `v=c+id`, `a²+b²+c²+d²=1` (L6H5E8Q, complex normSq).
- Original source three Pauli matrices `FCP.BFSSSU2.pauli 0 = σx, pauli 1 = σy, pauli 2 = σz`; normalized original +i curves from L6G6X, R/S.
- Actual 48-source axes `e_A(α)=CliffordAlgebra.ι source48Quadratic (sourceBlockColorAxis α A)`.
- Source-even bivectors `Z=e₀e₁`, `Y=e₂e₀`, `X=e₁e₂`; signs deliberately NOT arbitrary. This is consistent with S1V9's literal source-ordered z-quarter factor.

## Construction target

For an ACTUAL `α : RealSpinBlock` and actual `g : GaugeGroup 2`, define in the **genuine** `CliffordAlgebra source48Quadratic`:

```
qα(g) = a • 1 + b • Zα + c • Yα + d • Xα
a = ((g : ColorMatrix 2) 0 0).re
b = ((g : ColorMatrix 2) 0 0).im
c = ((g : ColorMatrix 2) 0 1).re
d = ((g : ColorMatrix 2) 0 1).im
```

No complex-valued Clifford coefficient, independent model, or foreign spin labels.

The S1V52-A table aims to prove `Z²=Y²=X²=-1`, `ZY=X`, `YX=Z`, `XZ=Y`, with reverse products negative. It follows by a **finite** expansion (to prove in Lean) that:
- `qα(1)=1`;
- `qα(gh)=qα(g)qα(h)`, with the original matrix multiplication ordering;
- `qα(g) * star(qα(g)) = star(qα(g))*qα(g) = 1` using exact unit norm and `star Z=-Z, star Y=-Y, star X=-X`.

### Exact quaternion coefficient multiplication

Given `g=(a,b,c,d)`, `h=(A,B,C,D)`, first-row complex matrix multiplication yields:
```
a(gh) = a*A - b*B - c*C - d*D
b(gh) = a*B + b*A + c*D - d*C
c(gh) = a*C + c*A + d*B - b*D
d(gh) = a*D + d*A + b*C - c*B
```
These are the same noncommutative quaternion coefficients dictated by the S1V52-A even-Clifford multiplication table. Proof must be over actual original matrix entries, not generic quaternion axioms.

## Exact all-color conjugation target

The quaternion element acts on all three *actual* Clifford coordinate vectors by
`qα(g) e_A star(qα(g)) = Σ_B R(g)_{B,A} e_B`,
where rows=OUTPUT B and columns=INPUT A, with the following explicit real polynomial matrix:

```
R = [[a²-b²-c²+d²,  2(ab+cd),        -2(ac-bd)],
     [-2(ab-cd),     a²-b²+c²-d²,    2(ad+bc)],
     [2(ac+bd),     -2(ad-bc),        a²+b²-c²-d²]]
```

This was **independently checked as a symbolic polynomial identity** in all a,b,c,d, not just random numerical tests, against `Tr(σ_B g σ_A gᴴ)/2` in the exact original `(σx,σy,σz)` ordering. This is auxiliary mathematical evidence, **not** a Lean theorem nor a kernel-verified G3A connection. The future Lean gate must establish `R(g)_{B,A}=FCP.BFSSSU2GaugeG3A.adjointColorMatrix g B A` from the pinned `pairedAlgebraData`.

As direct consequences of the polynomial **if subsequently certified in Lean**:
- historical positive-i z-quarter has `(a,b,c,d)=(0,1,0,0)`, hence `qα(quarter)=Zα`; no unproved global Spin-lift sign inference needed;
- native central `-I₂` has `(a,b,c,d)=(-1,0,0,0)`, hence each block is scalar `-1`, and the ordered sixteen-block product is `(-1)^16=+1`;
- this suggests the full lift factors through the original effective color adjoint group SO(3), but actual factoring still requires a proved kernel/quotient statement and group-topological interfaces.

## Spin membership: constructive axis witness, no continuous Euler angles needed

For the source +i z one-parameter curve, let `θ=t*pauliScale`. Its Clifford polynomial should equal
`cos θ + sin θ Z = ι(e₀) ι(cos θ • e₀ + sin θ • e₁)`.
The second vector has exactly `Q=cos²θ+sin²θ=1` due to S1V6 source orthogonality. Thus S1V1's **genuine** `sourceSpinPair` builds the element in the original Mathlib Spin group. The y-axis is similarly
`cos θ + sin θ Y = ι(e₂) ι(cos θ • e₂ + sin θ • e₀)`.
The exact original source Z-Y-Z Euler factorization (accepted H5E8Y) then proves `qα(g) ∈ spinGroup Q` for every genuine native `g` by multiplicativity, without claiming globally continuous Euler times. Continuity instead comes from the original four **polynomial** entry coordinates and Clifford multiplication.

Do not replace membership with 'invertible even Clifford element', which is insufficient for the exact Mathlib `spinGroup` subtype without the required Pin/Lipschitz membership proof.

## Block assembly and topological ceiling

The next independent all-`g,h` obligation is cross-block even commutation `qα(g)qβ(h)=qβ(h)qα(g)` for every distinct source block α,β. S1V9's fixed quarter-rotor commutation does NOT prove this.

Only after that can a deterministic `List.prod` of sixteen block homomorphisms give a genuine group hom. The S1V48 exact original source projection predicate, historical calibration, and continuity are separate gates.

**Safety:** original source signs, colors, scalar normalizations, group and real Majorana labels unchanged. No unproved axiom, no altered `main`, upstream `etblink/math`, or PR #25. This note is a source-only/audit-only change and does not intentionally trigger any CI.
