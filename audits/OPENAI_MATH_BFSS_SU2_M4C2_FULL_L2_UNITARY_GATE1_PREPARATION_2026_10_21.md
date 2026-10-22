# FCP BFSS SU(2) — M4C2 original full-L² fiberwise unitary, strict Gate #1 preparation

**Preparation date:** 2026-10-21 PDT (CI may execute 2026-10-22 UTC).
**Starting head:** `a1a3497ad373588a1506ad0fd5c1dbcd6b72af75`, accepted M4C1 audit-only commit.
**Strictly accepted cumulative theorem roots:** **275**. **M4C2: 0/1 accepted** until a complete original strict gate is independently verified.  
**Status:** `M4C2_GATE1_SOURCE_EXACT_FIBER_UNITARY_CANDIDATE__STRICT_CI_PENDING`.

## Scientific objective

M4B strictly proves an exact intertwining unitary `J : E ≃ₗᵢ[ℂ] Fermion 2` of eligible independent 48-Majorana modules with original SU(2) fermionic gauge. M4C1 Gate #7 (run #39733353872) strictly proves `fiberTransport J`, defined as `J.toContinuousLinearEquiv.toContinuousLinearMap.compLpL 2 μ`, intertwines the genuine original full-L² gauge actions, preserving the **source bosonic inverse pullback**. M4C1 does not formally prove that `fiberTransport J` is bijective or isometric.

M4C2 proves, as an **independent new obligation**, a genuine `LinearIsometryEquiv`:
```lean
def fiberTransportUnitary
    (J : E ≃ₗᵢ[ℂ] Fermion 2) :
    Lp E 2 (volume : Measure (Boson 2)) ≃ₗᵢ[ℂ] FullL2 2
```
The forward map is **definitionally the accepted M4C1** `fiberTransport J`, and the inverse is the original (L²) composition with `J.symm`. No independent bosonic pullback is modified or newly chosen. This gate requires no extra CAR or irreducibility beyond the input `J`; these remain separate M3J/M4B existence hypotheses.

Six separately axiom-audited declarations:
1. `fiberTransport_left_inverse`: `J.symm` fiber composition after `J` is the identity on `Lp E 2 μ`, using `Lp.ext_iff`, pinned `coeFn_compLpL`, and AE filtering.
2. `fiberTransport_right_inverse`: the inverse composite is identity on the literal original `FullL2 2`.
3. `fiberTransportLinearEquiv`: builds complex-linear bijection with these explicit inverses; does **not** silently assume isometry.
4. `fiberTransport_norm_le`: forward contraction from pinned `ContinuousLinearMap.norm_compLp_le` and `LinearIsometry.norm_toContinuousLinearMap_le`.
5. `inverseFiberTransport_norm_le`: inverse contraction from the same pinned interfaces applied to `J.symm`.
6. `fiberTransportUnitary`: final `LinearIsometryEquiv.ofBounds` from the complex-linear equivalence and both proved contraction inequalities.

**Count only the final** `FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary` as **one** potential accepted new theorem root; the support statements and auxiliary equivalence must be axiom-clean but add no roots. One green Gate #1 would advance 275 to **276**, if and only if the original gate is completely successful and cache saved.

## Immutable input pins and executable compiler test

- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Qualified saved M4C1 cache: `bfss-fcp-m4c1-independent-full-l2-gauge-v7-adc7f124-lean4341-d13f23b-Linux-X64`, generated on original run #39733353872.
- Accepted original M4C1 source `FCPIndependentFullL2GaugeTransport.lean`, blob `5e34611df34e14358c3d0509931ecd1f9cf555b7`.
- Accepted M4B `FCPIndependentOriginalGaugeBridge.lean` source blob `f0258c3b68d3a64dab300ce3c32b1d3a5ab23e35`; accepted M4A, M3J and G4J source SHA checks preserved.
- New research candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2Unitary.lean` Git blob **`0a86136318bfd3862609c078c9739b8a659bf5fc`**.
- Unique Gate #1 workflow `.github/workflows/bfss-m4c2-original-full-l2-fiber-unitary-strict-gate1.yml`, Git blob **`ebeca40dc17c271222599fdd6979659ce15e0a44`**. A push on this exact workflow path only starts its strict gate; the source file and audit alone do not trigger CI.

The source directly inspects pinned Mathlib interfaces `ContinuousLinearMap.compLpL`, `ContinuousLinearMap.coeFn_compLpL`, `ContinuousLinearMap.norm_compLp_le`, `LinearIsometry.norm_toContinuousLinearMap_le`, and `LinearIsometryEquiv.ofBounds`, rather than inventing physical source operator definitions.

Gate must:
- confirm exact frozen upstream and accepted source hashes;
- restore only the **current-branch M4C1** qualified cache and check original gauge and full-L² .olean closure;
- compile new source with `lake env lean -DwarningAsError=true`, generating a nonempty native `.olean`;
- require the six **exact named** `#print axioms` reports, with only `propext`, `Classical.choice`, `Quot.sound`, and no `sorryAx`, compiler error, or unexpected warning;
- save the unique new qualified v1 cache `bfss-fcp-m4c2-original-full-l2-fiber-unitary-v1-adc7f124-lean4341-d13f23b-Linux-X64` only after all conditions green and upload source-exact diagnostics.

**Research honesty:** the candidate has not yet been Lean-typechecked against the original source closure. Gate #1 is explicitly a falsifiable source-specific compiler test. If red, record the first independent error; do not silently weaken the isometric conclusion, change the original source, or count the root.

## Physical boundary

Even if fully green, M4C2 establishes a full-`L²` **complex-linear isometric equivalence**, not yet a theorem mapping the independent gauge-fixed physical submodule **onto** original `GaugeData.physicalSpace`. The fixed-space equivalence is the next M4C3 research gate, combining accepted M4C1 full-space SU(2) intertwining with M4C2 bijectivity. Smooth source-core transport, sixteen supercharge operator graphs and closed domains, normalized Hamiltonian equality, Spin(9), original manuscript identification, and positive mass gap remain distinct open obligations.

Retain PR #25 draft/unmerged, Issue #28 open, original `main` unchanged; no unrelated CI triggers.
