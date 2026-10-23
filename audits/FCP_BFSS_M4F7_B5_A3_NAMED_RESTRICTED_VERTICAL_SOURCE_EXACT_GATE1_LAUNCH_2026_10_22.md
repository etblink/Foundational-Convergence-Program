# FCP BFSS — M4F7 B5 genuine J-free A3 named independent restricted graph vertical bridge: controlled strict Gate #1

**Local date:** October 22, 2026 PDT / October 23 UTC. **Status:** Gate #1 running; theorem unaccepted pending strict original-job verification. **Accepted principal theorem roots: 302.**

## Verified mathematical prerequisite: B4 qualified at Gate #2

[Actions #39913871718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39913871718), job `120282853078`, independently verified completed/success, original complete Lean log, exact source pins, Lean 4.34.1/Mathlib d13f23b toolchain, exact theorem whitelist-axiom report and qualified cache saved. The actual B4 theorem `FCP.M4F7FullClosedGraphVerticalB4.independentFullCoreGraph_closure_vertical` proves the source-exact independent **unrestricted** closed graph has trivial vertical fiber under the actual J/color/gamma/theta intertwining witnesses. Frozen Lean source `FCPM4F7FullClosedGraphVerticalB4CoeAlign.lean`, Git blob `2b485db6576f37cd13acd861eb9549d26f49bc51`. Compilation 13.31s, max RSS 7047164 KB. Qualified saved key `bfss-fcp-m4f7-full-closed-vertical-b4-coealign-2b485db6-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

This result is a genuinely distinct stronger BFSS full-graph theorem relative to prior physically input-restricted V1, hence classified as +1 principal root, **301 → 302**; recorded in `audits/FCP_BFSS_M4F7_B4_UNRESTRICTED_FULL_CLOSED_VERTICAL_COEALIGN_GATE2_STRICT_ACCEPTANCE_2026_10_22.md`.

The earlier B4 Gate #1 [#39912853335](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39912853335) genuinely failed at one misplaced `rw [Submodule.topologicalClosure_coe]` on a native submodule membership goal. The accepted Gate #2 rewrote the **set membership hypothesis** in the *reverse* orientation with the existing source-named full graph. No mathematical theorem premise changed; no red gate was retrospectively counted.

## B5 source-exact mathematical strategy — no failed A2 equality recycled

Strictly accepted independent concrete inputs:

- C2 `FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut`: literal *independent* sixteen-charge raw restricted smooth graph equals the set of named independent unrestricted graph points with true independent physical input.
- A3 `FCP.M4F7IndependentClosedGraphAliasA3.independentRestrictedClosedGraph`: genuine independently defined, J-free submodule obtained as the topological closure of that exact restricted raw graph; named relation closedness accepted.
- B4: the named unrestricted independent graph's **set closure** has trivial vertical fiber.

The newly staged B5 module `experiments/openai-math-su2-physical-domain/FCPM4F7NamedRestrictedVerticalB5.lean`, immutable source SHA `d88febcd86d196490696bce76bf79b564a594976` (staging commit `84a56bf2c59d6b6ee11ced5b13b7d2b88569d8a0`), proposes exactly:

```lean
FCP.M4F7NamedRestrictedVerticalB5.namedIndependentRestrictedClosedGraph_vertical
```

Under the original exact independent CAR/Hermitian `theta`, genuine `color,gamma` and actual J/hColor/hGamma/hJ witnesses, for any vector y:
```text
(0,y) ∈ A3.independentRestrictedClosedGraph color gamma theta hCAR hHermitian
  → y=0.
```

The proof:
1. Names the actual restricted raw range `G : Submodule ℂ (Lp E 2 μ × Lp E 2 μ¹⁶)`.
2. Uses **accepted C2 physical-input-cut equality** to derive `G ≤ independentFullCoreGraph color gamma theta` by projection of an original-source true set-membership conjunction. This avoids constructing a large concrete full-range witness.
3. Views A3 named graph membership as `G.topologicalClosure` (both are **native submodule closures**, not the failed A2 Set-equality goal).
4. Applies Mathlib `Submodule.topologicalClosure_mono` to transport membership into `(independentFullCoreGraph ...).topologicalClosure`.
5. Uses `rw [← Submodule.topologicalClosure_coe (independentFullCoreGraph ...)]` in the **correct direction on a set closure goal**, then invokes accepted B4 on the named unrestricted graph.

The real Lean candidate is currently **uncompiled**; it might still encounter named membership definitional conversion or C2 rewrite typing error. Such a red must be preserved, not hidden by recursion-depth increases or blind tactic variation. The two previously attempted concrete A2 full-Set-closure equalities are deliberately absent and remain unaccepted.

## One bounded B5 strict workflow

`.github/workflows/bfss-m4f7-named-restricted-vertical-b5-strict-gate1.yml`, commit `2fc60674eec929ef4a1697a9b0d6bb0568175c2a`, [Actions run #39915321255](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39915321255), in progress at initial query.

The workflow uses an isolated self-path trigger and requires:
- Frozen original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact source SHA pins for original C1–C4, A3, B4 and B5, plus comment-aware executable-code hole checking.
- Actual restores of **both** qualified A3 `bfss-fcp-m4f7-closed-graph-a3-f38ff58d-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` and qualified B4 `bfss-fcp-m4f7-full-closed-vertical-b4-coealign-2b485db6-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`, with `.olean` presence for C2, A3, B4, source Core, and earlier parents.
- Original CAR/Hermitian hypotheses byte-identical to accepted A3 and C2, exact B5 theorem name, C2 raw cut and B4 source vertical references, zero direct A2 literal Set-equality declaration, zero new axioms or recursion-depth override.
- Strict fresh 105-second bounded `lake env lean -DwarningAsError=true`, exactly one intended fully qualified theorem name/axiom report; allowed only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, unexpected source warnings or compiler errors, actual new `.olean`.
- Unique new cache saved **only** on full green: `bfss-fcp-m4f7-named-restricted-vertical-b5-d88febcd-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`, with original full compiler/resource logs uploaded on any result.

The workflow's YAML run and cache literal indentation, source paths and SHA pins, both cache restore steps, exact compile/log stems and axiom validator were statically reviewed before launch.

**Accounting:** A successful B5 would be a useful **supporting named-membership bridge** to the future actual closed `LinearPMap`, not an automatic new principal theorem—the already accepted V1 proves the equivalent literal restricted-closure vertical fact. Do not inflate the **302** principal-root tally for equivalent-interface support. Only a genuinely new independent closed-operator graph/domain theorem should earn a new principal root. B5 red: zero qualifying theorem and complete first-error forensic audit.

Even a successful B5 and later actual independent closed `LinearPMap` do **not** by themselves prove physical Hilbert domain density, output physical membership for all sixteen charges, Hamiltonian/source operator-domain correspondence, spectral equality or BFSS mass gap. Original mathematics, canonical main and unmerged draft PR #25 unchanged. Seek truth; preserve both positive and negative evidence.
