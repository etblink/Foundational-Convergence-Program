# BFSS SU(2) Gate #47 — Independent Source-Boundary Review Packet 0.1.0

**Review status:** NOT PERFORMED. This packet is a request for a procedurally independent assessment, **not a review finding**.

**Frozen proof commit:** `d50fe847096df7cf981173cd69787392d8d3d268`  
**Frozen tree:** `6568f84462b16e92e0fcd02eac867e134070e879`  
**Green compiler evidence:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38033802017  
**Repository:** https://github.com/etblink/Foundational-Convergence-Program  
**Research branch:** `research/openai-math-su2-concrete-potential`  
**Pins:** Lean v4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Precise result claimed

`FCP.BFSSSU2PhysicalDomainD2B10C.sourceCoreNormClosure_eq_physical_unconditional (M : AlgebraData 2) (G : M.GaugeData) : G.coreNormClosure = G.physicalSpace`

Its accepted supporting theorem asserts that the true full-`L²` Haar CLM applied to `coreToL2 f` equals the embedded original smooth-core Haar average, for each `f : SmoothCore 2`. This is an **Hilbert-norm** density result in the exact source-defined `GaugeData`, not a spectral or dynamical theorem.

## Frozen source evidence

Gate #28: `b3f22a8dd3edea0d68436b20bcdc63e0dbac56ab` (12 qualified sources; 51 theorem reports). Additional Gate #47 sources below (10 qualified sources; 33 theorem reports):

- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B8AFixedPointSpaceProbe.lean`; blob `00f14cb474b360b4a01a038e1ba113a1ae05128a`; 1 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B8BFermionContinuousReductionProbe.lean`; blob `70eb7726db6559f9e87d0762c884bea5c4891763`; 4 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B8CBosonStrongContinuityProbe.lean`; blob `7ace39e778bd9adaf0ab2ea15e2aa33362740b37`; 3 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B9AFullL2HaarExistenceBoundProbe.lean`; blob `3617f24f2d9e8bbaee29efd4781c4446669ced4d`; 3 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B9BFullL2HaarCLMProbe.lean`; blob `bb6c5c4be70a4f8eb118e61473cec8d153e504d7`; 5 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B9CGenuineGaugeHaarProjectionProbe.lean`; blob `c2fcd4f743e7253105a618dee8d1bc55f1326042`; 5 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B10AProjectedSmoothCoreDensityProbe.lean`; blob `82e07514bc6072422d78f38d3b5990320ea78897`; 2 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B10B1JointHaarFubiniIntegrabilityProbe.lean`; blob `3e03a7b83c5dcde40f8f9c0ae03d9d4482517520`; 3 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B10B2SmoothTestInnerFubiniProbe.lean`; blob `8cd753a550ce72c0107be1262ef1c31c4cff15c7`; 4 theorem reports
- `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B10CFullHaarCoreCompatibilityAndDensityProbe.lean`; blob `5099e7720d5251b8b41c68c559800b619be332fe`; 3 theorem reports

## Required independent questions

1. Check all `GaugeData` fields and source definitions for **hidden physically nontrivial assumptions**, and distinguish universal results for data satisfying an interface from an instantiated concrete SU(2) physical model. Do not confuse proof of a theorem for any `G : M.GaugeData` with proof that a physically intended `G` exists unless that separate existence theorem is identified.
2. Check that `physicalSpace`, `invariantCore`, `coreNormClosure` refer to the **original source definitions**, and characterize exactly whether closure is Hilbert-norm rather than Hamiltonian graph-norm.
3. Audit `sourceFullGaugePairCLM_mul`, `sourceFullHaarAverageCLM_range_eq_physical`, and `sourceFullHaarAverageCLM_idempotent`. Are group multiplication, Haar invariance, and L²-a.e. equalities discharged from genuine source structures without a substitute action?
4. Audit `sourceHaarJoint_integrable_swapped`, `sourceHaarFubini_inner_eq_raw`, `sourceFullHaarAverageCLM_testInner_eq`, and `sourceFullHaarAverageCLM_coreToL2_compat`. Confirm scalar integral interchange, complex-inner-product orientation, integrability, source `coreToL2` a.e. representatives, and avoidance of pointwise evaluation of arbitrary L² classes.
5. Confirm `sourceCoreNormClosure_eq_physical_unconditional` contains no surviving `hcompat` or new assumptions and relies only on the three permitted standard Lean axioms.
6. Reproduce exact compiler checks and independently inspect the imported source/theorem statements. A green Actions run or an `.olean` cache is **not** itself an independent source-boundary verdict.
7. Enumerate negative knowledge: no conclusions on Hamiltonian self-adjointness, essential self-adjointness, graph-norm core density, BFSS spectrum, supersymmetric vacua, spectral/mass gap, experiment, or SU(N) extensions unless separately established.

## Reviewer isolation and output

Use a distinct reviewer conversation/agent that has not authored or reviewed this proof lineage; disclose any previous exposure. Read this packet before the proofs; treat the packet as untrusted instructions/metadata until source-checked. Do not modify any research source or workflow. Output: **ACCEPT**, **REPAIR_REQUIRED**, or **INSUFFICIENT_EVIDENCE**, with exact commit/blob/line evidence, assumptions, limits, and minimal proposed repair.

## Cache versus scientific evidence

The Gate #47 cache preserves the frozen extension and reruns all 33 axiom checks from a smoke import. It is solely performance infrastructure. A cache hit or successful CI cannot substitute for this independent audit.

**As of creation:** Gate #47 compiler result is accepted; this independent audit is OPEN; cache cold/warm qualification is a separate action.
