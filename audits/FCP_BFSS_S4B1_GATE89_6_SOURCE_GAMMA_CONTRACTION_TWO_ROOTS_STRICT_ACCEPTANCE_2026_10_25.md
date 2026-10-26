# FCP BFSS S4B1 — Gate 89 #6 original nine-gamma contraction strict acceptance

**Date:** 2026-10-25 PDT / 2026-10-26 UTC.  
**Disposition:** `GATE89_6_TWO_EXACT_ORIGINAL_SOURCE_GAMMA_CONTRACTIONS_STRICT_ACCEPTED`. **Two newly accepted Lean theorem declarations.** The separate original S3L gate sequence through Gate82 remains 77 accepted roots; Gate87 remains red. Do not conflate those scoped ledgers or silently assert a reconciled all-time count.

## Immutable independent evidence

- [GitHub Actions run #40279920302](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40279920302), job `121430746988`: **completed/success**. Both GitHub workflow and job successful; every job step including compiler and artifact upload passed.
- Exact CI workflow HEAD `83531bf78b512a5e4020f150b35603eba9942414` modified **the verifier alone** relative to Gate89 #5; both theorem declarations were unchanged.
- Exact accepted candidate blob: `930ad9453cf51219530b717fecdb42be9c646550` at [`experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B1OriginalGammaFermionContractionProbe.lean`](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B1OriginalGammaFermionContractionProbe.lean).
- Exact workflow [`.github/workflows/bfss-form-source-gamma-contraction-strict-gate89.yml`](../.github/workflows/bfss-form-source-gamma-contraction-strict-gate89.yml) commit `83531bf78b512a5e4020f150b35603eba9942414`, workflow Git blob `044716712fd32d042eb52ddec6b11528bc6b1e5e`.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; `Core.lean` source blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `GammaWords.lean` source blob `d12051e70de679f5458dbd456667a32c7b407ce4`. Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original source ancestors freshly compiled: `Core.olean` 1,281,224 bytes, `GammaWords.olean` 738,648 bytes. Original source hashes, literal proof-source hash (both commit and worktree), preflight self-tests, and warning-parser self-tests passed.
- Candidate compiler exit **0** and both axiom reports exactly as below; output `.olean` nonempty, no `sorryAx`, no candidate `error:` and no candidate Lean warnings.
- Strict evidence artifact `12631208364`: [GitHub Actions artifact](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40279920302/artifacts/12631208364). Exact final workflow marker:
  ```text
  GATE89_LAKE_NOTICE_FILTER_SELF_TEST_PASS
  GATE89_IGNORED_LAKE_PACKAGE_STATE_NOTICES 11
  GATE89_CANDIDATE_SOURCE_WARNINGS []
  GATE89_COMPILER_EXIT 0 AXIOM_REPORTS [
    ('FCP.BFSSSU2PhysicalDomainS4B1.sourceGammaTwo_contract',
      {'Quot.sound', 'propext', 'Classical.choice'}),
    ('FCP.BFSSSU2PhysicalDomainS4B1.originalSourceGammaTwo_contract',
      {'Quot.sound', 'propext', 'Classical.choice'})
  ]
  GATE89_ORIGINAL_SOURCE_GAMMA_CONTRACTION_TWO_ROOTS_STRICT_PASS
  ```
  Set ordering is not significant; both sets are **exactly** `{propext,Classical.choice,Quot.sound}`.

## The actual mathematical theorem, not a surrogate

The first accepted theorem, `sourceGammaTwo_contract`, uses the original nine-dimensional `OAI.BFSSGamma.Space=Fin9`, the actual 16-dimensional gamma matrix type, the source `BFSSGamma.gammaTwo` definition and the original Clifford premise. For all real symmetric or other Clifford-admissible nine gamma families as stated, and each original spatial label j, it establishes

```text
  sum_(i:Fin9) G_i * gammaTwo(G,i,j) = 8 • G_j
```

exactly as a real matrix identity (source defines `gammaTwo(G,i,j)=(G_i G_j-G_j G_i)/2`).

The second accepted theorem, `originalSourceGammaTwo_contract`, specializes that result to the **actual original `AlgebraData N`** source:
```text
  sum_(i:SpaceIndex) M.gamma i * M.gammaTwo i j = 8 • M.gamma j.
```
This accepts a source-specific contraction, not merely an abstract generic formula unconnected to the original BFSS type.

The proof reduces `G_i gammaTwo(i,j)` to `G_j` for `i ≠ j` and to `0` for `i=j`, then sums the original nine index values and normalizes real entries. It does not expand the original sixfold supercharge to trigger E3B/E3C recursion.

## Negative knowledge retained

- [Gate89 #1 run #40276967009](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40276967009) strict red: ambiguous gammaTwo name, deprecated `if_neg`, and scalar rewriting; two `sorryAx` theorem reports.
- [Gate89 #2 run #40277712823](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40277712823) strict red **before Lean**: mismatch between two immutable candidate source blob checks. Preserved and prevented by `tools/bfss_gate_workflow_preflight.py` paired source-hash regression.
- [Gate89 #3 run #40277856118](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40277856118) strict red: last entry goal `(↑9*G_j)_{αβ}-(G_j)_{αβ}=8(G_j)_{αβ}`; no accepted roots.
- [Gate89 #4 run #40278526727](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40278526727) strict red: normalized goal `9*x-x=8*x` required a final ring step; two `sorryAx` reports.
- [Gate89 #5 run #40279188758](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40279188758) **mathematical Lean PASS but workflow strict RED**: compiler exit 0 and both exact permitted-axiom reports; overescaped verifier pattern mistakenly categorized eleven Lake dependency package-state warnings as candidate Lean warnings. It is still a historical RED, not retrospectively renamed green.
- Gate89 #6 **fully successful**: exactly the same original theorem Git blob as #5; narrowly allowlisted only external dependency-state notices whose package name matches in the warning and the cache path. The verifier continues to reject every genuine Lean warning and `sorryAx`.

## What this does and does not establish

This kernel-accepted contraction provides the missing **factor eight** in the ordinary derivation of the source undeformed fermionic remainder: the original `1/16` average and `∑_i gamma_i gamma_{ij}=8 gamma_j` yield the manuscript's `1/2` coefficient. The sign comes independently from `f_(cad)=-f_(dac)`, and the source G4K9D Gate170 had already accepted the exact source potential multiplier identity.

**Not yet proved in Lean:** `M.deformedFermionField 1 0 x` equals the *typed explicit manuscript* fermion multiplication operator `B(x)` on the original real 48-Majorana Fock Hilbert module, nor the global source Spin9 action, physical closed-form invariance, compact resolvent, positive eigenpair existence or BFSS mass gap. **Do not promote those** based on this two-theorem green.

**Next proof target:** use G4K9D accepted multiplier equality and original `MixedEnergy.remainderField` to formalize a one-coordinate derivative of `deformedRealField 1 0`; only then compose the gamma contraction with exact source scalar and `restrictScalars ℝ` conversions to obtain the full pointwise B operator identity. Keep the original source and canonical FCP main untouched.
