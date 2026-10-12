# BFSS L6G3 — original smooth-core charge normal ordering accepted

**2026-10-12. Status: KERNEL_QUALIFIED_ORIGINAL_SOURCE_NORMAL_ORDER; GAUSS_EVALUATION_OPEN.**

[Original Charge CAR Normal Order #6](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38300167214), job `114980881014`, passed at qualification commit `79701169e1b969cfd477870d87b3bd04b686120d`. The actual G3 `.olean` compiled. All seven named source declarations passed the strict permitted-axiom audit; the separately printed private generic normal-order theorem also lists only `propext`, `Classical.choice`, `Quot.sound`. No Lean error or `sorryAx` was accepted.

## Exact mathematical result

For the pinned original `M : OAI.BFSSQuantum.AlgebraData N`, let `p=(r,a)` be a fermion label, `Theta_p=M.fermionAction r a`, and let `L_p(alpha)` be the literal source scalar differential coefficient:

`L_(r,a)(alpha) = sum_i (-i gamma_i[alpha,r]) D_(i,a)`

`+ sum_(i,j,b,c) (1/2 f_abc gammaTwo_i,j[alpha,r]) P_(i,b) P_(j,c)`.

The definitions use the original `SmoothCore N`, `coordinateDerivative`, `position`, `structureConstant`, `gammaTwo`, and fermion action. Multiplication is composition of complex-linear endomorphisms of that smooth compact core. The coefficients preserve the original `-i` and `1/2` normalizations.

The accepted factorization is `M.charge alpha = sum_p Theta_p L_p(alpha)`. For every real spinor `w`, define `Q(w)=sum_alpha w_alpha M.charge alpha` and `L_p(w)=sum_alpha w_alpha L_p(alpha)`. The accepted full-core result is

`Q(w)^2 = (1/2) sum_p L_p(w)^2 + (1/2) sum_(p,q) Theta_p Theta_q [L_p(w), L_q(w)]`.

The corresponding identity for each original `M.charge alpha` is also proved directly. The printed final type has exactly `{N : Nat}`, `M : AlgebraData N`, and `w : SpinIndex -> Real`. It has no unit-spinor condition, additional CAR premise, derivative-commutation premise, or gauge-invariance premise. Automatic implicit parameters are disabled; the zero spinor is included.

The source CAR `Theta_p Theta_q + Theta_q Theta_p = delta_pq I` is derived from the original `M.theta_CAR` by actual test-function postcomposition. Coefficient/fermion commutation is discharged using pinned Core's `fermionAction_position_commute` and `fermionAction_derivative_commute`. The generic algebraic law is therefore specialized to the literal original charge, not left as a theorem conditional on unproved source laws.

This is source-parametric in the original `AlgebraData`; in particular it applies at `N=2`. It does not recompile or unfold the concrete `2^24` Fock representation. The separate accepted concrete and paired `AlgebraData 2` witnesses remain unchanged.

## Qualified source declarations

All names below are in `FCP.BFSSSU2PhysicalDomainL6G3`.

| Declaration | Discharged obligation |
| --- | --- |
| `sourceFermionAction_CAR` | Original delta-one CAR on the original smooth core |
| `sourceCoefficient_comm_fermion` | Original scalar coefficients commute with every original fermion action |
| `sourceCharge_factorization` | Exact kinetic and cubic source summands regroup by fermion label |
| `sourceAllSpinorCharge_factorization` | Actual real-spinor sum of original charges has the same factorization |
| `sourceAllSpinorCoefficient_comm_fermion` | All-spinor coefficient commutation with no new premise |
| `sourceCharge_normalOrder` | Normal ordering of each original source charge square |
| `sourceAllSpinorCharge_normalOrder` | Normal ordering for every real weighted original charge |

## Reproducibility and frozen sources

Upstream remains `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, downstream of openai/math. Compiler is Lean 4.34.1; actual Mathlib checkout is `d13f23b723b8a846827a245b89c10fc7d3f11612`. The workflow verified these identities before source qualification.

The accepted G3 file is `SU2BFSSPhysicalDomainL6G3OriginalChargeNormalOrderProbe.lean`, Git blob `1c155a708930af50534dc9cb540c48319aeae8b2`. It imports only the original pinned BFSS Core. G3 normal ordering does not depend on a finite-gamma or global rotation theorem.

The unchanged concrete gamma blob `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`, G1 blob `b3c4cb1b12c64d3e718d2c547ee29ebac2b18a36`, and G2 blob `481df011d2e87b31e58efea2b97f81094fc14918` were explicitly guarded. Their previously qualified objects restored in the normal `refs/pull/25/merge` scope and were not rebuilt. The new qualified G3 object was saved under

`bfss-l6g3-source-v1-adc7f124-lean4341-Linux-X64-3d2586c8842d64a680c03a2638ecf9d3cf1cf811d67f446ea6e786eeead0d35b`.

[Qualification artifact](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38300167214/artifacts/11770443277) contains source pins, compiler identity, and original-charge-normal-order log. Artifacts and caches are operational conveniences; the frozen source and run are the reproducible checkpoint.

## Failure lesson and next bounded mathematical target

Initial [gate #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38299624077) failed on a missing finite-sum index swap and inference timeouts in the two source applications. The repair explicitly swaps indices while retaining operator order and supplies the operator ring, label type, and typed lambda. The accepted source compiled in about 14 seconds at the unchanged default heartbeat and 180-second process limits. Preserve `L6G3_ORIGINAL_CHARGE_NORMAL_ORDER_NEGATIVE_KNOWLEDGE_0_1_0.md`; partial axiom printouts from #5 were not an accepted module.

The next bounded target is to evaluate `[L_p(w),L_q(w)]` on the original smooth core. Reuse the accepted S3L3B source Heisenberg law, S3L3D mixed-derivative commutation, original position commutation, and pinned CliffordSymbols multiplier product rule. Keep source polynomial coefficients explicit before contracting the spinor indices with accepted L6G2 row Fierz. Do not restart R4B/R4D, reconstruct gamma-word bases, or replace the smooth-core model.

The end-to-end full-core target remains

`Q(w)^2 = |w|^2 H0 + sum_(c,p) (w^T gamma_p w) x_p^c G_c`,

where `H0=-(1/2)Delta+V+B`, `J_c^orb=-sum_(a,b,i) f_cab x_i^b D_(i,a)`, `J_c^F=(1/2)sum_(a,b,r) f_cab Theta_(r,a) Theta_(r,b)`, and `G_c=-i(J_c^orb+J_c^F)` in the source SU(2) normalization `f_abc=sqrt(2) epsilon_abc`.

| Remaining step | Current status |
| --- | --- |
| Evaluate scalar `sum L_p^2` into kinetic energy, original quartic potential, and orbital Gauss term | Open |
| Evaluate coefficient commutator and contract with row Fierz into `B` and fermionic Gauss term | Open; selected next operator obligation |
| Restrict the complete identity to genuine gauge-invariant smooth functions | Later source discharge |
| Relate the smooth-core identity to the actual closed physical operators | Later analytic obligation |
| Global Spin(9) and source rotation-sector spectral conclusions | Independent obligations |

Normal ordering is now kernel-qualified; the complete Gauss-square identity and any spectral conclusion are not. Both Gauss components must be retained on unconstrained functions. The direct square route does not require global Spin(9) covariance, but rotational conclusions do.

**Governance:** Research branch only. PR25 retains its normal S3K base and remains draft/unmerged. Canonical FCP main and both mathematical source repositories are unchanged. Documentation follow-up commits do not qualify new source theorems.
