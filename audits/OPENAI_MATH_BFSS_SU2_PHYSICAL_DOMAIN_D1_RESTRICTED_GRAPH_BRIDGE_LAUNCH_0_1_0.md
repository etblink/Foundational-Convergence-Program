# BFSS SU2 physical-domain D1 — source gauge-restricted graph bridge launch 0.1.0

**Date:** 2026-10-09 Pacific (2026-10-10 UTC). **Status:** `PROSPECTIVE_UNCOMPILED`. New independent bounded branch `research/openai-math-su2-physical-domain`, starting from the already qualified BFSS parent `bccd31216d99996ac6673cbc90aff4bf4a196c0b`. No changes to accepted K8E3–K10A proofs, the frozen original proof-cache workflow, upstream sources or FCP canonical claims.

## Why this checkpoint exists

The directly examined primary [October 5, 2026 positive eigenvalues manuscript](https://github.com/openai/math/blob/adc7f1241b42e322a6451854ab7e4b4c146bf78a/preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex) defines a gauge-invariant physical core and closes a gauge-invariant supercharge form on it. The accepted G4-K10A source theorem equated *full-space* closed joint-charge graphs, not the manuscript's separately gauge-restricted graph. The pinned source `BFSS/ClosedProfiles.lean` already defines exactly `G.deformedModelGraph h m` as the topological closure of the true source `G.invariantCore` joint charge map.

D1 now attempts five source-typed theorems without new analytic assumptions, in the genuine pinned `AlgebraData N/GaugeData` structures:
- source-deformed gauge-restricted graph map equals the source-original charge graph map at (h,m)=(1,0), using G4-K10A;
- its source-defined graph closure equals the closure of the original charge vector on `G.invariantCore`;
- corresponding projected graph domains are identical;
- source original/deformed core forms agree on **every** `G.invariantCore` section;
- the gauge-restricted graph is contained in (NOT generally equal to) the accepted full-space closed graph.

The point is to identify the **exact physical-sector graph domain** before attempting analytic gauge averaging or spectral Hamiltonian representation. It is a defensible finite milestone, but not new spectral physics.

## Pinned workflow and fail-closed cache

Dedicated workflow `BFSS SU2 Physical Domain Bridge` on a separate branch/path; original `BFSS SU2 Concrete Color Gate` remains frozen and is not triggered. Restore EXACT published Gate #174 accepted cache key (source hash, upstream manifest/toolchain, runner architecture), requiring a hit; fail on missing/stale cache rather than silently recompiling a different large source. Independently compile candidate under Lean 4.34.1 / OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a` / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Require exactly five axiom reports each limited to `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`.

**The candidate is NOT a proof until CI succeeds.** If the gate is red, diagnose and repair only the explicit typed proof issue; never add hidden hypotheses or grow unbounded elaboration limits.

## Explicit scientifically meaningful remaining objectives

**D2 — Physical-core density:** Show source `G.coreNormClosure = G.physicalSpace` for the concrete FCP SU2 `pairedGaugeData`, or prove the corresponding theorem for general compact `G` under fully visible hypotheses. Provide a genuine `L²` gauge averaging/smoothing construction, preserving `C_c^∞`, not simply a nonzero invariant test vector. The manuscript uses gauge averaging; no equivalent kernel-qualified density proof is presently established.

**D3 — Supercharge gauge preservation:** Prove `coreToL2 (M.charge α f.val) ∈ G.physicalSpace` for **all** `f : G.invariantCore`. Source `G.invariantCore_fderiv`, `G.kineticSkewLinear_covariant`, `G.deformedPotentialMultiplier_covariant`, and G4-K9D/K10A give relevant ingredients; the remaining derivative contraction along the orthogonal boson action and preservation of the 16 components must be checked. It is incorrect to confuse theta covariance with an already qualified theorem of full Q invariance.

**D4 — Paper-representation operator:** Only after D2 and D3 (and explicit identification of the manuscript's chosen Clifford/gauge module) compare the densely-defined physical-sector closed `q=(1/16)∑||Q_α ψ||²` and its unique nonnegative associated self-adjoint operator. This is not a new spectral eigenvalue proof; the paper's positive point spectrum remains a separately adjudicated mathematical result.

**Stopping rule:** No automatic D2–D4 gate. Assess D1 and remaining conceptual issues first, then authorize only a proof materially narrowing one of the two actual domain gaps. No upstream PR, no main merge, no framework or empirical promotion; T6 remains confirmed, T2 not triggered.
