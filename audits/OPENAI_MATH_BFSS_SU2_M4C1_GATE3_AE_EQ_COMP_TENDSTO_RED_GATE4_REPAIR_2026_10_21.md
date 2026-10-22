# FCP BFSS SU(2) — M4C1 Gate #3 RED; Gate #4 AE-equality proof interface repair

**Local date:** October 21, 2026 PDT; actual runner completed October 22 UTC.
**Current ledger:** **274 strictly accepted theorem roots**; M4C1 zero accepted.
**Disposition:** `M4C1_GATE3_RED__COEFN_COMPLP_EVENTUALLY_VS_EVENTUALLYEQ__GATE4_ONE_LINE_MATHLIB_API_REPAIR`.

## Independently inspected primary evidence

[GitHub Actions #39729306334](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39729306334), original job `119660438987`, original commit `257e2985671b0fec5d0144f7d6478c78e9a36cf3`, completed **failure**. The immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` source hashes and original Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed. The qualified accessible M4B cache was restored and already included the genuine original G4J source `.olean`. Gate #3 reached `lake env lean -DwarningAsError=true` on the **source-specialized** M4C1 candidate.

**First causal error** at `FCPIndependentFullL2GaugeTransport.lean:70:34`:

```text
error(lean.invalidField): Invalid field `comp_tendsto`:
The environment does not contain `Eq.comp_tendsto`
ContinuousLinearMap.coeFn_compLp A v
```

The originally written `A.coeFn_compLp v` gives Lean `∀ᵐ x, (A.compLp v) x = A (v x)` (type `Filter.Eventually` of pointwise equality). But the source proof requires `Filter.EventuallyEq.comp_tendsto`, applied to AE equality **of two functions**. The exact pinned Mathlib API `ContinuousLinearMap.coeFn_compLp' (L) (f) : L.compLp f =ᵐ[μ] (fun x => L (f x))` provides that type. The original pinned `OAI.BFSSQuantum.GaugeData.invariantCore_equivariant` uses the same `(coreToL2_ae f).comp_tendsto` proof pattern.

Gate #3 confirms all of the following declarations compiled with permitted axioms `propext`, `Classical.choice`, `Quot.sound`:
- `independentFullL2GaugePairCLM`, constructed **without** a unitary intertwiner `J`.
- `fiberTransport`, the constant-fiber complex continuous linear operator.
- `fiberTransport_fermionGauge`, derived from accepted M4B and original G4J.
The failed `fiberTransport_bosonPullback` and final `independentFullL2Gauge_intertwining` reported `sorryAx` (a consequence of failed elaboration), so **no root is accepted** and no M4C1 cache was saved.

## Minimal Gate #4 correction

In `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2GaugeTransport.lean`, replace **only**:

```lean
have hmid := (A.coeFn_compLp v).comp_tendsto
```

with

```lean
have hmid := (A.coeFn_compLp' v).comp_tendsto
```

No change to the two definitions, three theorem statements, source bosonic `g⁻¹` pullback, independent gauge representation, M4B equality, CAR, original source, or any proof step except the exact AE equality lemma.

**New source Git blob:** `e617606cc3f93c14a3e7052cfcaa5e79e8835d2f`.
**New unique workflow:** `.github/workflows/bfss-m4c1-independent-full-l2-gauge-strict-gate4.yml`, blob `1b60526275eeab3541de4210c19246412ff6d182`. Restores the current-branch qualified M4B cache, verifies original G4J and source ancestry, compiles the changed source with warningAsError, enforces five declaration names and axiom reports, rejects all unexpected axioms/`sorryAx`, and saves the **unique v4** `bfss-fcp-m4c1-independent-full-l2-gauge-v4-adc7f124-lean4341-d13f23b-Linux-X64` cache only after strict success. Axiom validator and math source hashes remain unchanged.

**Only one new root is eligible for acceptance:** `FCP.IndependentFullL2GaugeTransport.independentFullL2Gauge_intertwining`. A red outcome, however close, does not change 274 accepted roots. A green full-L² intertwining result still does *not* formally establish bijective `L²` unitary transport, physical fixed-space equality, invariant smooth cores, full sixteen-charge domain graph, normalized Hamiltonian or any spectral theorem.

## Negative knowledge retained

- Gate #1: historical G4J cache inaccessible across branches; not an original Lean error.
- Gate #2: actual first Lean elaboration failed because `IndependentFullL2` needed explicit fiber type `E`.
- Gate #3: explicit fiber type repair passed; the next independent failure is the exact `coeFn_compLp` vs `coeFn_compLp'` Mathlib almost-everywhere interface.
- Gate #4 is a **proposed compiler test**, not preverified. No theorem acceptance before the complete original runner strict report and qualified cache save.

**Governance:** no `main`, PR #25, issue #28 or upstream mutation; strictly isolated branch-path workflow and audit-only negative knowledge preserved.
