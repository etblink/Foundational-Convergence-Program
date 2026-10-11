# S3L5G — actual combined SU(2) BFSS kinetic monomial qualified checkpoint 0.1.0

**Outcome:** EXACT SOURCE CONCRETE SPECIALIZATION ACCEPTED UNDER PINNED LEAN. Full kinetic finite sum, cubic charge, 16-supercharge covariance, physical Hamiltonian rotation and the manuscript's positive point spectrum remain OPEN.

## Reproducible acceptance

- Accepted theorem/workflow source SHA: `252e17a8b3a2c8beb5b1df3856a7f6de1c5df6de`.
- Qualified isolated [BFSS S3L Source Rotation Coefficients #47](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38134946625) succeeded, including importable `.olean`, exact `#print axioms` theorem-name match and explicit rejection of `sorryAx`.
- Supplemental source physical-domain bridge [#257](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38134946650) also passed at the same head.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source module: `SU2BFSSPhysicalDomainS3L5GConcreteCombinedKineticMonomialProbe.lean`.
- FCP canonical `main` untouched; draft PR #25 restored to stacked S3K PR #24 base. No upstream PR or merge authorized.

## Exact newly accepted source mathematics

The qualified theorem is
`FCP.BFSSSU2PhysicalDomainS3L5G.pairedActualCombined_comm_kineticMonomial`.
For any distinct spatial indices `i ≠ j`, all spatial `k`, spinor `γ`, and color indices `A,B : ColorIndex 2`, on the ORIGINAL pinned `SmoothCore 2`, the commutator of the exact kinetic monomial

```
T = pairedAlgebraData.fermionAction(γ,A) ∘ coordinateDerivative(k,B)
```

with the ACTUAL combined infinitesimal source generator

```
L_ij + TestFunction.postcompCLM(pairedFermionPlaneSpinGenerator(i,j))
```

equals the sum of (1) the already-accepted S3L3E orbital-derivative variation term and (2) the S3E/S3L4D true 48-Majorana spin-index variation term:

```
[L_ij + K_ij, T] =
    pairedAlgebraData.fermionAction(γ,A) ∘
      (if k=j then derivative(i,B)
       else if k=i then -derivative(j,B) else 0)
  + (∑_β pairedPlaneSpinGenerator(i,j)[β,γ] •
       pairedAlgebraData.fermionAction(β,A)) ∘ derivative(k,B).
```

The source uses `sourceParametricCombinedPlane` with the literal `pairedFermionPlaneSpinGenerator`, which definitionally is the stated source orbital-plus-Fock-lift sum. It applies the S3L5F theorem **after discharging its explicit fiber covariance premise** with the independently accepted S3L4D `pairedActualFockSpin_comm_source_theta`. There is no new physical model, axiom, unproved fiber condition or replacement operator.

The strict axiom gate accepted only `propext`, `Classical.choice`, and `Quot.sound`. This closes the **concrete monomial-level** gap, not the summed charge or physical Hamiltonian symmetry.

## Correct interpretation of earlier red gates

- S3L5E Gate #45 attempted a large concrete five-argument additive-commutator elaboration and hit maximum recursion depth. Its `sorryAx` theorem is still **UNQUALIFIED**, retained only as a negative-knowledge diagnostic.
- Gate #46 first established a source-parametric monomial identity with a visible fiber hypothesis, but NOT the concrete BFSS specialization.
- Gate #47 uses the small named theorem with the actual 48-Majorana premise independently discharged. The green result is a genuine additional *source specialization* beyond #46, not merely a CI infrastructure pass.
- Neither #45's recursion failure nor #47's compile success proves or disproves the manuscript's spectral conclusion.

## Next bounded scientific obligation

The next mathematical gate is the full ORIGINAL finite kinetic sum for all 16 charge components using `sourceKineticCharge pairedAlgebraData α` and the already-qualified S3L0 source identity

```
gamma_k * J_ij.transpose - orbitalGammaVariation_ij(k) = -(J_ij * gamma_k).
```

Preserve the exact upstream `-Complex.I` coefficient and spinor/space/color index order. First isolate finite-sum commutator transport and coefficient contraction in small named lemmas; do not recreate Gate #39's giant definitional `rfl` expansion. The cubic potential (including original gammaTwo/structure constants and 1/2), full 16-charge identity, form and Hamiltonian domains, Spin(9) and spectral inference remain independent later obligations.

**Research boundary:** FCP `main` unchanged, PRs #24/#25 draft and unmerged, public `etblink/math` preparation parked without an upstream PR.
