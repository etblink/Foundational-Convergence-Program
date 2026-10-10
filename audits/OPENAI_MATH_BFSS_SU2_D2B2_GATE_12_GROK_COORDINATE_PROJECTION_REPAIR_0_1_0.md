# BFSS SU2 D2B2 Gate #12 — independent Grok review, source adjudication and repair 0.1.0

**Date:** 2026-10-09 Pacific (CI UTC 2026-10-10).  
**Disposition:** `GATE_12_RED__D2B2_NOT_QUALIFIED`.  
**Independent reviewer:** Grok (xAI), supplied directly by human owner. Reviewer explicitly stated **UNCOMPILED**.  
**Next candidate:** exact explicit coordinate-projection proof repair, **UNCOMPILED** until next GitHub Actions gate.

## Checked exact CI evidence

[BFSS SU2 Physical Domain Bridge #12](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38019149502) run `38019149502`, job `114116039692`, failed on `657df742be88d4c6a712ba96c78cbeb4fb6e56ad`. Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B2HaarAverageContinuitySupportProbe.lean`, Git blob `bfa61325f73a8817b30d63c45869f0081cbbe0d1`.

All qualified-source checks, G4-K10A cache restoration and D1, D3A, D3B, D2A, D2B1 predecessor compilations and axiom checks passed unchanged. The following new D2B2 declarations compiled with only `propext`, `Classical.choice`, `Quot.sound`:
- `sourceHaarIntegrand_jointContinuous`;
- `sourceHaarAverageRaw_hasCompactSupport`.

**Exactly one D2B2 compiler error:** source line 60, `sourceHaarAverageRaw_continuous`, in
```lean
(PiLp.continuous_apply i).comp
  (sourceHaarIntegrand_jointContinuous M G f)
```
Compiler reported a partially inferred composition `?m.164 ∘ ?m.166` of function type, not the needed proof of continuity of coordinate extraction `(...).ofLp i`. `sourceHaarAverageRaw_continuous` axiom report included `sorryAx`. **D2B2 not accepted.**

## Independent review / adjudication

Grok's independently returned static review identified a type-synonym `PiLp/WithLp` projection-elaboration mismatch; it recommended first proving:
```lean
have hproj : Continuous (fun v : Fermion 2 => v i) :=
  PiLp.continuous_apply i
```
then `hproj.comp (sourceHaarIntegrand_jointContinuous M G f)`.

The Project Lead **independently verified** that the pinned Mathlib `Mathlib/Analysis/Normed/Lp/PiLp.lean` at commit `d13f23b723b8a846827a245b89c10fc7d3f11612` defines `PiLp.continuous_apply` as continuity of `fun f : PiLp p β => f i`; actual source `Fermion 2 := EuclideanSpace ℂ (Fin (2^(8*colorDim 2)))`, definitionally a `PiLp 2`. Thus the explicit target makes the intended parameter types and topology unambiguous.

**This is a plausible and narrow repair, not yet a proof.** The reviewer claimed no compilation, and the Project Lead has not compiled it locally. We do not promote the reviewer prediction that later `hscalar/hcoord/hcoords/PiLp.continuous_toLp` steps will succeed to a fact; the next pinned compiler gate will decide.

The repair modifies **only** the proof of the same `sourceHaarAverageRaw_continuous` theorem, no mathematical statements, source averaged function, actual Haar probability, group actions, assumptions or proof cache. The accepted other D2B2 proof declarations remain textually unchanged.

## Acceptance / scientific boundary

The next dedicated Physical Domain Bridge gate must recompile accepted D1/D3A/D3B/D2A/D2B1 unchanged and compile *all three* D2B2 public declarations, no `sorryAx`, exactly their declared standard-axiom reports. The method is the real original-source SU2 gauge group and `OAI.Laughlin.Rotation.sourceHaar`.

Even when D2B2 becomes accepted, it establishes **continuity and compact support, not all-order smoothness or physical-core density**. D2B still requires differentiation under Haar to make the averaged function a true `SmoothCore`, proof it lies in `G.invariantCore`, genuine L² error-contraction, and exact `G.coreNormClosure = G.physicalSpace`. No paper Hamiltonian, self-adjointness, eigenvalue, BFSS spectrum or physics/empirical assertion is advanced.

No main merge, new original Color Gate, modified qualified mathematical predecessor, upstream PR, or new unproved axiom.
