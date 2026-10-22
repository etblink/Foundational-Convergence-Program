# FCP BFSS SU(2) — M4E5 Full Independent Smooth Sixteen-Charge Strict Gate #5 ACCEPTANCE

**Acceptance date:** October 22, 2026 (PDT).  
**Disposition:** `M4E5_GATE5_STRICT_PASS__INDEPENDENT_SMOOTH_SIXTEEN_CHARGE_ORIGINAL_SOURCE_INTERTWINING__ONE_PRINCIPAL_ROOT__290_CUMULATIVE`.

## Immutable original mathematical and compiler evidence

- [GitHub Actions full independent smooth charge strict Gate #5, run #39844436390](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39844436390), job `120053858251`. Attempt 1; **whole workflow and job `completed/success`**; triggering research HEAD `a9b2224725010a96a6f7be40a0624b08f9bd7a44`.
- Canonical BFSS original mathematics pinned at `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Fail-closed original source and candidate provenance, exact hashes and compiler restoration passed.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullSmoothCharge.lean`, exact Git blob `4fa31d97ddfbb80e3258070caccd7b0a6b0bc874`. Isolated strict workflow `.github/workflows/bfss-m4e5-full-independent-charge-gate5.yml`, blob `916b389c621f6a50dc0a776c63d7fd8d96e40d74`.
- Qualified parent cache restored: `bfss-fcp-m4e5-named-transport-diag5-v1-adc7f124-lean4341-d13f23b-Linux-X64`; qualified original, independent prior construction, abstract source outer-addition, raw source equality certificates and both named transport `.olean` dependencies checked.
- Exactly two declarations in candidate and original `#print axioms` output: `FCP.IndependentSmoothSupercharge.independentCharge` (independent definition) and `FCP.IndependentSmoothSupercharge.independentCharge_intertwining` (one new principal theorem root). Each reported only the three permitted axioms; original compiler log:
  ```text
  'FCP.IndependentSmoothSupercharge.independentCharge' depends on axioms: [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentCharge_intertwining' depends on axioms: [propext,
   Classical.choice,
   Quot.sound]
  ```
- Fresh `lake env lean -DwarningAsError=true` source compile passed within a **105-second cap** with actual **10.22 seconds** wall, **88%** CPU, **peak RSS 6,993,020 KB** (Lean/Lake process measurement), and valid nonempty new `.olean`. Strict exact-qualified-name, permitted-axiom whitelist, no-`sorryAx`, no-unexpected-warning validator passed with `M4E5_FULL_CHARGE_GATE5_SOURCE_EXACT_SIXTEEN_STRICT_AXIOMS_PASS`.
- Qualified new compilation cache **saved**:
  `bfss-fcp-m4e5-full-smooth-charge-gate5-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original diagnostic artifact `bfss-m4e5-full-independent-charge-gate5-39844436390`, GitHub artifact ID `12453544389`, ZIP digest `sha256:9e3ab3ec46fe1dcc4a1867dd9b081a2aedc44266d262793f31dc92ee1a9db5d2`. Independent review extracted and directly inspected `FCPIndependentFullSmoothCharge.log`, `.resource` and `stages.log` from the original ZIP bytes.

## Exactly established mathematical claim

For arbitrary complex finite-dimensional Hilbert space `E` in the stated Lean typeclasses, arbitrary `color`, `gamma`, and `theta`, a complex-linear isometric equivalence `J : E ≃ₗᵢ[ℂ] Fermion 2` satisfying:
```lean
hColor : color = pairedAlgebraData.color
hGamma : gamma = pairedAlgebraData.gamma
hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w)
```
the original source-exact, **pointwise smooth-core** intertwiner holds for every `α : SpinIndex` and `f : IndependentTestCore E`:
```lean
independentSmoothTransport J (independentCharge color gamma theta α f)
  = pairedAlgebraData.charge α (independentSmoothTransport J f)
```
The independently defined charge is **J-free**:
```lean
independentCharge color gamma theta α :=
  independentKineticCharge gamma theta α +
    independentCubicCharge color gamma theta α
```
The proof only unfolds the **outer** independent addition via `LinearMap.add_apply` and `map_add`; it composes the already **strictly accepted** `independentKinetic_named_source_intertwining` and `independentCubic_named_source_intertwining` using `congrArg₂`, and finishes via the previously **strictly accepted** `originalSource_charge_apply_parts` source equality. No full raw multivariate cubic finite sums were re-expanded, no original mathematics source was modified, and no substitute source Fock operator entered the independent definition.

This proves the whole **family indexed by `SpinIndex = Fin 16`** parametrically; it is not an isolated theorem for a single `α` or a numerical spot check. The statement is conditional on original coefficient identities and Majorana generator matching, not an independent proof that those hypotheses hold for an arbitrary unrelated fiber implementation.

## Accepted theorem ledger and bounds

Previously cumulative **289** roots. Strictly accept **+1** principal root `independentCharge_intertwining`. **New cumulative 290**. The `independentCharge` operator definition is axiom-clean but not counted as a separate theorem root.

Historical failure lessons remain preserved:
- M4E5 Gate #1: `rfl` whole charge source-recursion-depth error.
- Gate #2 (two runs), Gate #3, Gate #4: non-verdict SIGTERM after multi-minute huge-source reductions (do not mislabel as counterexamples).
- Source Outer Diagnostic #1: abstract original `M.charge = originalSourceKineticPart M + originalSourceCubicPart M`, **287** cumulative after +1 root.
- Named Transport Diagnostics #2 cache-version mismatch; #3 `simpa` kinetic recursion; #4 `exact` kinetic definitional-conversion recursion.
- Named Transport Diagnostic #5: abstract raw source certificates and explicit `Eq.trans`/`congrArg` qualified both named source bridges, **289** cumulative after +2 roots.
- Full M4E5 Gate #5: composition-only proof compiles in 10.22s, **290 cumulative**.

## Unproved boundaries and next investigation

**NOT proven by this M4E5 theorem alone:** an unconditional physical fiber `E` implementation satisfying `hColor/hGamma/hJ`, gauge covariance/invariance of the independent charge, preservation of the gauge-invariant test core, its densely defined or closable/closed graph on physical L², equality of closure or physical graph generators, physical Hamiltonian equality, BFSS spectral results or supersymmetric mass-gap conjectures.

Next priorities are to inspect previously accepted independent-fiber original gauge/unitary and smooth equivalence modules, and (a) discharge `hJ` for the specifically constructed independent Spin/Clifford fiber (if not already accepted), then (b) establish independent gauge-restricted smooth-core charge compatibility using exact original source gauge statements and appropriate graph/operator-domain hypotheses. Separate narrow gates, negative-knowledge audits, and no claim of spectral equivalence merely from algebraic intertwining.

**Governance:** frozen original mathematics and accepted proof blobs/caches unchanged; research branch only. Canonical `main` at `cf06212a57db0ceffad74bd78280a8a240856a17`; PR #25 draft/unmerged, Issue #28 open. No accidental automatic broad CI.
