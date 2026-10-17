# BFSS L6G2 — all-real-spinor original source row Fierz accepted

**2026-10-12. Status: KERNEL_QUALIFIED_ORIGINAL_GAMMA_COEFFICIENT_IDENTITY.**

> **Subsequent operator checkpoint:** L6G3 [gate #6](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38300167214) now qualifies CAR normal ordering of the literal original smooth-core charges for every real spinor, with source CAR and coefficient/fermion commutation discharged. See `L6G3_ORIGINAL_CHARGE_NORMAL_ORDER_ACCEPTED_CHECKPOINT_0_1_0.md`. Evaluating its retained terms into the complete Hamiltonian/Gauss identity and closing operators remain open. This does not alter the scope or frozen source of G2.

[Homogeneous Original Source Fierz #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38296484114) completed successfully at qualification commit `a334f34d74a7cf1ec67faac28a164a82c7ffce84`. The module compiled as a real importable `.olean`; all five requested theorem declarations passed the explicit permitted-axiom audit. No `sorryAx`, unapproved axiom, Lean error or missing name was accepted.

## Exact source and statement

The gamma function is the unchanged `FCP.BFSSGamma9.gamma`, installed by the accepted concrete and paired AlgebraData definitions. Its source blob remains `5ec0fcb039fb5c1367f72b2bd0f8c05fcd936587`. G1's accepted source blob is `b3c4cb1b12c64d3e718d2c547ee29ebac2b18a36`; G2's accepted source blob is `481df011d2e87b31e58efea2b97f81094fc14918`.

Upstream is `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` (downstream of openai/math), Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source checkout, compiler and actual Mathlib checkout were checked. The exact accepted G1 objects were restored rather than rebuilt.

`FCP.BFSSSU2PhysicalDomainL6G2.originalGamma_generalizedRowFierz` proves, for EVERY real spinor w, spatial p and spinor entries r,s:

`sum_i ((w^T gamma_i)_r (w^T gammaTwo_i,p)_s + (w^T gamma_i)_s (w^T gammaTwo_i,p)_r)`

`= (sum_alpha w_alpha^2) gamma_p[r,s] - delta_rs (w^T gamma_p w)`.

There is no unit-length assumption, extra spatial index or replacement gamma representation. The zero spinor is included. The gate printed the explicit final type `forall (w : Spin -> Real) (p : Space) (r s : Spin), ...`; automatic implicit parameters are disabled and both products are inside the sum. G1's genuine upstream column identity is extended by quadratic homogeneity, and the gammaTwo transpose sign gives the ROW formula.

## Five qualified declarations and cache

Within `FCP.BFSSSU2PhysicalDomainL6G2`:

- `originalGamma_spinIdentity_homogeneous`;
- `originalGammaTwo_transpose`;
- `originalGamma_row_eq_column`;
- `originalGammaTwo_row_eq_neg_column`;
- `originalGamma_generalizedRowFierz`.

Only `propext`, `Classical.choice`, `Quot.sound` are permitted. The G2 object was saved under `bfss-l6g2-source-v1-adc7f124-lean4341-Linux-X64-f894c7d66038060a15a953727f63a15829a0e6d5f66a47d932495ba2588b1c8b`. The verified PR-scoped environment and accepted G1 cache remain reusable with the normal PR25 base.

## Failure feedback and scientific scope

The first G2 attempt (#3) restored its prerequisites correctly and exposed source/API issues, not a resource timeout: short-name `symm` in simp, the wrong function-versus-matrix entry interface, and missing summand parentheses permitting an escaped implicit index. The repaired gate used the full source definition, pinned `Matrix.sum_apply`/`Matrix.vecMulVec_apply`, explicit grouping and `autoImplicit false`, with unchanged proof limits. Preserve `L6G2_ORIGINAL_ROW_FIERZ_NEGATIVE_KNOWLEDGE_0_1_0.md`; do not pretend the failed parsed statement was already the intended source theorem.

This kernel-qualifies the finite coefficient obligation that previously had external exact integer/polarization evidence. It does not prove actual CAR/Gauss normal ordering, physical operator closure, global Spin(9) covariance or a spectral theorem. Do not restart R4B/R4D or rebuild the already proved gamma-word basis.

## Selected next source-mathematical target

Audit and qualify the ORIGINAL full smooth-core identity:

`Q(w)^2 = (sum_alpha w_alpha^2) H0 + sum_(c,p) (w^T gamma_p w) x_p^c G_c`.

Keep original `f_abc=sqrt(2) epsilon_abc`, `{theta,theta}=delta`, `-i` kinetic coefficient, cubic `1/2`, and BOTH orbital and fermionic Gauss generators. Discharge actual source CAR and constant-fiber/derivative commutation before applying an abstract normal-order law. Physical restriction `G_c Psi=0` and operator closure are later separate obligations.

Pinned `CliffordSymbols.lean` already proves generic AlgebraData Clifford-linear CAR, principal-symbol square/norm and cutoff commutators. Audit and reuse those exact source-compatible interfaces before reproducing calculus. The direct square route does not need global Spin(9) covariance; rotational and spectral consequences keep their independent dependencies.

**Governance:** FCP research only; PR25 normal S3K base, draft/unmerged. Canonical main and both mathematical source repos remain unchanged. This documentation follow-up records the qualified source state and does not qualify another theorem.
