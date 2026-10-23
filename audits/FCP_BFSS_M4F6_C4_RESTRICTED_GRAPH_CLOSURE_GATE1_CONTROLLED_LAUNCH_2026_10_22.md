# FCP BFSS — M4F6 C4 strict restricted graph closure controlled Gate #1 launch

**Research date:** October 22, 2026 PDT (GitHub UTC October 23). **Status:** **C3 accepted, C4 verification running**. Strictly accepted principal roots **299** pending any additional verified C4 theorem.

## Parent acceptance is real and independently checked

[C3 Actions #39899811008](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39899811008), job `120238540154`, was independently inspected at full original compiler and workflow level, **completed/success**, one principal `FCP.M4F6RestrictedGraphImageC3.sourceRestrictedCoreGraph_eq_independent_image`, exact original math pins Lean 4.34.1/Mathlib, permitted axioms `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`. Resource `12.56 s`, `7027424 KB` peak RSS. Saved qualified cache `bfss-fcp-m4f6-restricted-graph-image-c3-b9d707d8-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. C3 acceptance [record](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/FCP_BFSS_M4F6_C3_RESTRICTED_GRAPH_IMAGE_GATE1_STRICT_ACCEPTANCE_2026_10_22.md).

## Actual C4 mathematical target and frozen candidate

`experiments/openai-math-su2-physical-domain/FCPM4F6RestrictedGraphClosureC4.lean`, Git blob `7a248ff92d8f1d3e7ee7cbf9e94b7addf5db5e0d`, has exactly one prospective principal theorem, `FCP.M4F6RestrictedGraphClosureC4.sourceRestrictedCoreGraph_closure_eq_independent_image_closure`. Its theorem header carries precisely C3's actual independent CAR/Hermitian constraints and (J, hColor, hGamma, hJ) hypotheses. There is no weakening of genuine source/independent restricted graph definitions or new assumed compatibility. The only file change after original C4 staging was a documentation-only update acknowledging strict C3 acceptance; the entire Lean source **from `set_option autoImplicit false` onwards** stayed byte-identical.

Its proof composes `congrArg closure` of the actually accepted C3 graph image equality with `(independentGraphTransportHomeomorph J).image_closure`, precisely mirroring the accepted unrestricted closure proof in `FCPIndependentFullCoreGraphClosure.lean`. This is closure of **subsets/relations** in the 17-component graph ambient space, not an established closable single-valued operator. Even a successful C4 would not prove physical output invariance, closed operator/domain identification, physical Hamiltonian correspondence, spectral comparison or a BFSS mass gap.

## Single qualified C4 path-only Gate #1

Source- and self-path-pinned workflow `.github/workflows/bfss-m4f6-restricted-graph-closure-c4-strict-gate1.yml`, commit `aff3f1957ed623d599557db71e9d5f2188b2d36f`, [GitHub Actions run #39900827545](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39900827545), initially in progress.

Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Candidate and source SHA pin preflight, comment-aware no-executable-hole checks, exact C3/parent `.olean` closure, qualified M4F5/C1/A1/B1/C2 **and C3** saved cache restore, exact C3-to-C4 CAR assumptions, actual graph expressions, C3 theorem and `image_closure` checks. Every YAML `run: |` and cache path block indentation was inspected before triggering CI. Fresh `lake env lean -DwarningAsError=true`, bounded 105 seconds, exact fully qualified C4 theorem root and whitelist axioms `propext, Classical.choice, Quot.sound`, zero `sorryAx` or unexpected compiler diagnostics; qualified C4 cache saved only after entire green; full original compiler and resource logs uploaded regardless of verdict.

**Decision:** Only an independently checked completed run, compiler output, strict axiom report, exact theorem statement and saved proof cache allow +1 principal root **299 → 300**. On red, preserve original first-error logs; do not change recursion depth or retry tactics blindly.

**Governance:** No change to canonical `main`, unmerged draft PR #25, or upstream original mathematics. The six-root legacy M4F6 monolith remains unaccepted, and no red gate is retrospectively counted as proof. The long-standing project priority is to preserve results and negative knowledge, with science over CI color.
