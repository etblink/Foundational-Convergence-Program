# BFSS M4F9 H4C2A1 — GENERIC partial charge graph reverse theorem, strict Gate #1 ACCEPTED

**Disposition:** `M4F9_H4C2A1_GATE1_GENERIC_PARTIAL_GRAPH_REVERSE_1_OF_1_STRICT_ACCEPTED__H4C2A2_ACTUAL_BFSS_SPECIALIZATION_NEXT__HAMILTONIAN_SPECTRUM_OPEN`.

## Original, immutable acceptance evidence

[GitHub Actions run #40085181065](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40085181065), job **120846542322**, `completed/success`. Workflow/event commit **2ebaeb0e14a32c45fc8d9191d3f3e05b8f88d478**. New mathematical source: `experiments/openai-math-su2-physical-domain/FCPM4F9H4C2A1GenericPartialGraphReverse.lean`, Git blob **45c692a0119cb35a7003ca459c6cb090c02cea9e**. New source-exact Gate1 workflow `.github/workflows/bfss-m4f9-h4c2a1-generic-partial-graph-reverse-strict-gate1.yml`, Git blob **16784c50f0d88a82e92efca4ef3a7abd2ba118d8**.

Frozen original mathematics: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Source and theorem inventory passed exact hash checks. Exact **accepted** H4C1B Gate1 parent archive cache restored, and upstream `.olean` ancestry checks passed:
```
bfss-fcp-m4f9-h4c1b-native-domain-8c0e1aa8-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**Exactly one fresh, strictly qualified theorem:**
```
'FCP.M4F9H4C2A1GenericPartialGraphReverse.partialGraph_reverse_of_domain_forward'
  depends on axioms: [propext, Classical.choice, Quot.sound]
BFSS_M4F9_H4C2A1_GENERIC_GRAPH_REVERSE_ONE_ROOT_STRICT_PASS
```
Fresh compilation with strict warning policy, axiom whitelist, no Lean declaration errors or `sorryAx`, explicit one-root validator and full qualified cache **SAVE** all passed.

New complete reusable cache:
```
bfss-fcp-m4f9-h4c2a1-generic-graph-45c692a0-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Original unfiltered diagnostic [artifact #12556922783](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40085181065/artifacts/12556922783), ZIP SHA256 **ec4e07a0f000b05efb52575489f33dcf2f772db78a21dd5f16970d63e6688fa7**.

## Actual mathematics

The source-free lemma is about two **actual** `LinearPMap` partial complex-linear operators `f : X →ₗ.[ℂ] Y` and `g : X' →ₗ.[ℂ] Y'`, functions `U, Ui, V, Vi`, a left-inverse input law `U (Ui x)=x`, a left-inverse output law `Vi (V y)=y`, (1) the reverse-domain premise `x∈g.domain → Ui x∈f.domain`, and (2) the forward-graph premise `(x,y)∈f.graph → (U x,V y)∈g.graph`. It concludes `(Ui p.1,Vi p.2)∈f.graph` for any original source graph point `p∈g.graph`. The proof uses `LinearPMap.mem_domain_iff` to choose an actual `f` graph output and `LinearPMap.mem_graph_snd_inj'` to compare that output with the given actual `g` output; output inverse is proved by `congrArg`, not a high-cost rewrite.

**Source fidelity:** This is a generic theorem, NOT a surrogate for source-defined BFSS operators. It mentions neither original AY graph nor independently defined J-free E2 charge. Instantiation on the **literal** original and independent native Hilbert charge operators still requires a separate source-exact Lean theorem and strict gate.

## Preserved negative knowledge and next target

[H4C2A Gate1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084035125) is RED because an inverse native PiLp Hilbert output rewrite exhausted `isDefEq`, with additional `whnf`. [H4C2A Gate2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084477947) is RED because after replacing the output rewrite with `congrArg`, enclosing BFSS theorem weak-head normalization still exhausted 200000 heartbeats. Neither had an accepted `#print axioms` audit or saved leaf cache. Both reds remain historical facts; do not alter them.

**Next** H4C2A2: instantiate this accepted generic graph-reverse theorem with true independently defined native E2 charge as `f`, true original AY native Hilbert charge as `g`, accepted M4C3B input unitary `U`, accepted H2A sixteen-output native Hilbert unitary `V`, accepted H4C1B reverse natural-domain membership, and H4B1C true forward graph inclusion. Demand exact H4C2A1 Gate1 parent cache with complete original ancestry; strictly qualify a one-root BFSS-specific result. Only then launch the H4C2B two-sided graph iff, precise domain and action intertwining, and eventually genuine physical H=(1/16)T†T.

**Ledger:** one accepted SUPPORT root; working principal root count **309**, not independently reconciled. Canonical FCP `main`, pinned upstream `etblink/math`, and draft PR #25 untouched.
