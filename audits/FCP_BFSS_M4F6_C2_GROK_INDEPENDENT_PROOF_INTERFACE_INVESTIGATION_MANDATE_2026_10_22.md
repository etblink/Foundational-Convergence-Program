# FCP — Independent Grok Research Mandate
## M4F6 C2: Three Lean Recursion Failures at the Genuine Independent Physical Graph Input-Cut Boundary

**Role:** Grok, independent senior research mathematician and Lean 4 proof-engineering auditor.  
**Research branch:** `research/openai-math-su2-s1v52-global-lift-scoping-20261019`  
**Frozen branch handoff HEAD:** `69241e1bce4a91ac91e2bf6e1f29f232b85c970d`  
**Repository:** https://github.com/etblink/Foundational-Convergence-Program  
**Original mathematics:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`  
**Toolchain:** Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`  
**Strict proof axioms:** `propext`, `Classical.choice`, `Quot.sound` only.  
**Accepted principal root ledger:** **297**. **M4F6 C2: 0 accepted roots.**  
**Status:** All C2 CI experiments STOPPED pending a materially new proof-interface analysis.

### Governing principle

**Seek truth about reality. Preserve results, not theories.** You are not asked to generate another arbitrary tactic recipe or maximize green CI counts. A mathematical counterexample, non-definitional type mismatch, missing hypothesis, or convincing diagnosis that the chosen theorem interface is wrong is valuable and must be reported. Do not infer that a theorem is true merely because an abstract-looking statement seems elementary, nor that it is false because Lean recurses.

**Investigate independently.** Inspect actual immutable Lean source and the original CI logs. The statements and conclusions below are handoff information, not instructions to trust prior reviewers.

### 1. The *actual* M4F6 C2 theorem

The target in `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCut.lean` (Git blob `4db1bbd1685555a3c00efd836577186782ff08bb`) is exactly:

```lean
theorem independentCoreGraph_eq_physicalInputCut
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (hCAR : ∀ α β A B,
      theta α A * theta β B + theta β B * theta α A =
        (if α = β ∧ A = B then (1 : ℂ) else 0) •
          (1 : Module.End ℂ E))
    (hHermitian : ∀ α A, (theta α A).IsSymmetric) :
    (LinearMap.range
      ((independentCoreToL2.comp
        (independentInvariantCore theta hCAR hHermitian).subtype).prod
        ((independentChargeVector color gamma theta).comp
          (independentInvariantCore theta hCAR hHermitian).subtype)) :
        Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ))) =
      {p | p ∈ independentFullCoreGraph color gamma theta ∧
        p.1 ∈ independentPhysicalSpace theta hCAR hHermitian} := by
  -- C2 remains unproved under the strict gate.
  ...
```

Its objects are independently constructed, J-free **in the statement**; do not replace them with transported paired-source objects or add an unearned existence hypothesis for `J`.

The relevant unchanged definitions:

```lean
def independentInvariantCore : Submodule ℂ (IndependentTestCore E) :=
  (independentPhysicalSpace theta hCAR hHermitian).comap independentCoreToL2

def independentFullCoreGraph
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E) :
    Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ)) :=
  LinearMap.range
    (independentCoreToL2.prod (independentChargeVector color gamma theta))
```

Before making any claim of definitional equality, verify the exact coercions to `Set`, `LinearMap.comp/prod/range`, `Submodule.comap/subtype`, the private `μ` abbreviations, universe/instance arguments, and transparency behavior.

The abstract helper *already compiled strictly*:

```lean
theorem core_graph_input_cut
    {X Y Z : Type*}
    [AddCommGroup X] [AddCommGroup Y] [AddCommGroup Z]
    [Module ℂ X] [Module ℂ Y] [Module ℂ Z]
    (a : X →ₗ[ℂ] Y) (b : X →ₗ[ℂ] Z) (P : Submodule ℂ Y) :
    (LinearMap.range
      ((a.comp (P.comap a).subtype).prod
        (b.comp (P.comap a).subtype)) : Set (Y × Z)) =
      {p | p ∈ LinearMap.range (a.prod b) ∧ p.1 ∈ P}
```

Source: `experiments/openai-math-su2-physical-domain/FCPRestrictedGraphInputCut.lean`, blob `cbcb667d15fccd67eaa185a69eb8b476546d977d`.

**Accepted C1** demonstrates the paired *original-source* specialization: [run #39888950963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39888950963), job `120203784402`; one new root `FCP.M4F6PairedSourceGraphInputCut.pairedSourceCoreGraph_eq_physicalInputCut` strictly passed with the three permitted axioms. Importable source C1 cache key:

`bfss-fcp-m4f6-paired-source-cut-c1-c217d66c-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`

This does **not** establish independent C2 or physical operator closability.

### 2. Three independent, source-pinned C2 failures

All three restored the accepted M4F5 source/independent unrestricted graph cache, the exact qualified C1 cache, and the original pinned toolchain. The only failure was at the fresh C2 Lean theorem proof. No C2 proof cache was saved.

| Attempt | Immutable GitHub Actions evidence | Proof structure | Compiler evidence |
|---|---|---|---|
| **Gate #1** | [run #39889826778](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39889826778), job `120206660997` | Direct `exact core_graph_input_cut independentCoreToL2 (independentChargeVector ...) (independentPhysicalSpace ...)` against the literal C2 theorem statement | `FCPM4F6IndependentGraphInputCut.lean:52:8` — maximum recursion depth |
| **Gate #2** | [run #39890728887](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39890728887), job `120209587836` | `unfold independentFullCoreGraph independentInvariantCore`; `ext p`; construct both explicit subtype witnesses | `FCPM4F6IndependentGraphInputCutWitness.lean:56:19` and `58:20` — maximum recursion depth |
| **Gate #3** | [run #39891517647](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39891517647), job `120212174341` | Unfold only those two aliases, then use `core_graph_input_cut` with **explicit `X := IndependentTestCore E`, `Y := Lp E 2 μ`, `Z := SpinIndex → Lp E 2 μ`** | `FCPM4F6IndependentGraphInputCutTypedUnfold.lean:53:8` — maximum recursion depth |

Each failed theorem's axiom report included `sorryAx` **only because elaboration failed**. None is accepted; the accepted total remains **297**, not 298.

Exact failed source blobs:
- Gate #1: `4db1bbd1685555a3c00efd836577186782ff08bb`;
- Gate #2: `1109d63969293f79edf5f6c0d36122b53784c93c`;
- Gate #3: `7c33b8694c74bfff93efff1a445090f41c0a8fa5`.

The original run logs are available from each GitHub Actions job. **Do not replace them with conjectures based on workflow statuses.**

A historical inferred-type probe in `FCPRestrictedGraphInputCertificates.lean` (blob `945a469b019a5a7728b67dca8c4c43e32d6336c4`) at [run #39877727582](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39877727582), job `120167321668`, printed an *inferred* `independentInputCutApplication` proof term/type with the allowed axioms. **That entire gate remained red**; this is diagnostic evidence only, not an accepted root. Compare its actually printed proposition against the *expected type* of the independent C2 theorem, without forcing giant reductions.

Read the cumulative forensic record:
[Three-gate stop and interface audit](https://github.com/etblink/Foundational-Convergence-Program/blob/69241e1bce4a91ac91e2bf6e1f29f232b85c970d/audits/FCP_BFSS_M4F6_C2_TYPED_UNFOLD_GATE3_STRICT_RED_THREE_GATE_STOP_AND_INTERFACE_RESEARCH_2026_10_22.md).

### 3. Your investigative questions

**A. Mathematical correctness.** Is C2 genuinely a valid instance of `core_graph_input_cut` for the exact concrete definitions? Check each expression at the level of typed Lean propositions. If there is a mismatch or missing premise, identify it precisely and propose the smallest scientifically defensible correction. Do not silently weaken the statement.

**B. Conversion boundary.** Why can the generic abstract lemma and source-side C1 specialization compile, and why could a diagnostic infer a C2 application type, while C2's actual theorem goal causes recurrence at direct proof use and at witness construction? Distinguish (i) elaborator/type-class search, (ii) reducibility/transparency/defeq, (iii) private `μ` alias mismatches, (iv) coercion of `Submodule` to `Set`, (v) kernel reduction/heartbeats and (vi) a genuinely false equality. Rank hypotheses based on *evidence*. Do not assert a precise Lean internals diagnosis that logs do not establish.

**C. Materially new proof interface.** Analyze an architecture in which `a : X →ₗ[ℂ] Y`, `b : X →ₗ[ℂ] Z` and `P : Submodule ℂ Y` remain opaque, and the accepted generic proposition is bound to a **named, typed intermediate certificate**. Then separately bridge the *literal* `independentInvariantCore` and `independentFullCoreGraph` definitions. Would splitting conversion obligations into small `have`, `change`, or explicit `Set` equality declarations prevent recursive full expansion? Or is an explicit minimal `Submodule.comap`/graph rewrite needed? Explain why your recommended architecture differs substantively from Gates #1–#3.

**D. Decisive diagnostic.** Specify the **single highest-information, bounded** diagnostic (or an offline source-level demonstration) that discriminates your top two hypotheses, including exact Lean code with all required imports, qualified names and types as feasible, expected outputs, and success/failure interpretations. If you have not actually compiled code, label it **unverified proposal**.

**E. Downstream scientific boundary.** State what an accepted C2 would and would not establish. Subsequent M4F6 goals are genuine restricted graph-image equality and graph-closure transport via accepted M4F4/M4F5 unrestricted graph transport; M4F1 smooth-core charge preservation was previously accepted under explicit `J/hJ` and algebra/representation hypotheses. **Do not conflate** input-restricted graph identity with output physical membership, single-valued closability, equality of closed physical operators, Hamiltonian form/domain equivalence or spectrum.

### 4. Operating constraints

- **Research-only authorization.** Do not commit, modify canonical `main`, merge PR #25, trigger GitHub Actions/CI, or launch new gates. Source inspection and offline analysis are authorized; any source patch should be presented as a proposed diff, **not pushed**.
- No `sorry`, `admit`, `sorryAx`, new postulates, source-mathematics changes, hidden representation assumptions, replacing the genuine J-free objects, or blind `set_option maxRecDepth` / timeouts.
- Preserve exact source hashes, all three failed attempts, and contrary evidence. A good negative diagnosis outranks a speculative green.
- Do not retest tactic permutations. We have exhausted that class. Propose **one actual interface change** or recommend not proceeding until more information is available.
- Do not claim Lean compilation or rigorous acceptance unless you independently obtained and can reference that evidence.

### 5. Expected deliverable to the Project Lead

Provide a compact but rigorous independent research memorandum containing:

1. **Source audit:** precise files, symbols and immutable SHA/provenance personally checked; any sources you could not access.
2. **Type-theoretic assessment:** fully typed correspondence or exact mismatch between the generic instance and genuine C2 target; any unproved defeq claims clearly marked.
3. **Three-red root-cause analysis:** observed facts vs ranked hypotheses, including interpretation of the inferred-type diagnostic.
4. **One prioritized next architecture:** a minimum-sized concrete Lean theorem/interface sketch or patch, with explicit parameters and exact original goal preserved, plus an explanation of what it avoids.
5. **One discriminator and stopping criteria:** expected green/red meaning, permitted resource envelope, whether new CI would be scientifically justified. If not, say **STOP**.
6. **Adversarial verdict:** what you think the program has been overlooking, even if that challenges the Project Lead's assumptions.

**Success means reducing uncertainty honestly. No requirement to produce a green.**
