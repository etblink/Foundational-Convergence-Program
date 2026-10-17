# BFSS SU(2) H5E8AQ — original physical closed sixteen-charge domain parity (0.1.0)

**Date:** 2026-10-17 PDT. **Disposition:** `PASS__ORIGINAL_GAUGE_RESTRICTED_MINIMAL_CLOSED_CHARGE_DOMAIN_PARITY__FOUR_AXIOM_CLEAN_ROOTS`.

**Scope:** Research-only, original source BFSS analytic graph/domain membership. This is NOT the operator domain of a fully identified independent manuscript Hamiltonian or an independently verified positive-spectrum claim.

## Strict provenance and actual CI acceptance

- [BFSS SU2 Physical Closed Charge Domain Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39051507670) **SUCCESS**; `exact-physical-closed-charge-domain` job **117450895412**, exact candidate/workflow commit **`6b85a47068459e6f8e7a1a4d23ad455a0943e151`**.
- Actual research source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AQOriginalPhysicalClosedChargeDomainParityProbe.lean`, exact immutable Git blob **`12c245924eb0e5ba4b1a1f9b7b10c34d29402995`**.
- Job successfully rebuilt **14** original BFSS source parity modules AD through AQ, including AP and source-genuine AJ L² parity unitary, using strict pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Upstream and frozen G1A/Fock source/cache identity checks passed.
- Four printed AQ roots depended **only** on `propext`, `Classical.choice`, and `Quot.sound`. CI rejected `sorryAx`, any missing named root, and all `error:` logs; emitted `L6H5E8AQ_ORIGINAL_PHYSICAL_CLOSED_CHARGE_DOMAIN_FOUR_ROOTS_CLEAN_PASS`.
- Saved compile/provenance artifact **`bfss-su2-opposite-gamma-39051507670`**, ID `12106979776`, digest `sha256:b5ec5101cacdc76e0c62db8a334be9375921a4139cd3cdf7977a3e677afdccb8`, expires October 31; source and action logs preserved in GitHub. The cache prefix is historical and does not redefine the scope of AQ.

## Four exact source-typed roots

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AQ`:

1. `originalPhysicalClosedGraph_mem_iff`: for any source `M : AlgebraData N`, genuine `G : M.GaugeData`, input `x : FullL2 N` and all-sixteen output `y : SpinIndex → FullL2 N`, membership of `(x,y)` in the closure of the actual original gauge-restricted physical core graph is iff membership of the simultaneous FullL2 parity-transformed pair in the corresponding opposite-gamma source closed graph.
2. `originalPhysicalClosedChargeDomainSet`: explicit source minimal closed-graph first-coordinate domain `{x | ∃ y, (x,y) ∈ closure (originalPhysicalCoreGraphSet M G)}`. It is a *definition* extracting a graph domain, not an axiom or maximal-operator extension.
3. `originalPhysicalClosedChargeDomain_mem_iff`: `x ∈ D(M,G)` iff `originalFullL2Parity x ∈ D(oppositeGamma M, originalOppositeGammaGaugeData M G)` **both directions**; uses accepted H5E8AP closed graph transport and exact AJ spatial parity involution.
4. `originalPhysicalClosedChargeDomain_image`: parity image of the actual original minimal closed sixteen-charge graph domain is **exactly** the opposite-gamma source domain.

The proof isolates a tiny `mem_iff_of_involutive_image` lemma over arbitrary sets, prior to source instantiation, avoiding expensive source-Fock elaboration and preserving the AO/AP proven source definitions, signs, group actions, and restricted physical smooth core. The abstract lemma is discharged and introduces no new premise in the four public roots.

## Scientific and proof-engineering boundary

- **Accepted context**: H5E8AP [strict #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39050612811) proves homeomorphic parity transport of original source gauge-restricted sixteen-charge **closed graph sets**. AQ now adds corresponding explicit **graph point membership, input-domain iff, and domain image equality**.
- Independently accepted H5E8AB [#361](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39001882637) proves that the actual pinned `G.deformedModelGraph 1 0` equals the closure of the original source restricted `chargeVector` graph. Previously qualified D2B12 identifies the native original minimal closed charge `LinearPMap` graph with that `G.deformedModelGraph 1 0`. **This AQ job did NOT jointly import/recompile H5E8AB or D2B12**, so source-representation bridge at the level of the native `LinearPMap` remains a distinct future pinned job, not a newly claimed qualified import composition.
- Next most important result: joint stage pinned original `D2B12` and `H5E8AB` with AQ, then prove the domain and graph-output equality for the **actual `sourceClosedPhysicalChargeColumn M G`** under spatial parity. Preserve its exact Hilbert input, graph-domain, and source-output semantics. Do not infer an unrestricted maximal differential operator.
- Only afterward use D2B17–D2B28 proper sixteen-component `PiLp 2` output Hilbert space, physical input restriction, normalized `1/16` quadratic form and associated self-adjoint `(1/16)T†T` operator **including its natural domain**.
- Independent paper's abstract Cl(48)/Spin(48) gauge representation, exact gamma orientation, global Spin(9) covariance/sector reduction and claimed infinitely many positive eigenvalues remain **open and scientifically distinct**. No spectrum/mass-gap/framework claim follows from AQ.

**Governance:** all experiments and notes remain confined to the active research branch, PR #25 remains draft on its S3K base; no main, original source, dependency pin, accepted proof or upstream merge modified.
