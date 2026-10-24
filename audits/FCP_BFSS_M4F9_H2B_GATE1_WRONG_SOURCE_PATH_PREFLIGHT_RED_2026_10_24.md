# BFSS M4F9 H2B actual E2 PiLp2 Hilbert graph Gate #1 — wrong source path preflight RED

**Disposition:** `M4F9_H2B_GATE1_INFRASTRUCTURE_RED__WRONG_H2A_SOURCE_PATH_H2B_HASH_PRECHECK__NO_LEAN_COMPILE__ZERO_ACCEPTED`.

Independently inspected original [GitHub Actions run #40062283475](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40062283475), job `120778170836`, completed/failure, immutable workflow commit `b318c6923a20ff9ce4c6e7dc65d2f7e7cc4ad030`. No diagnostic artifact was produced because Python aborted before compiler and the /tmp diagnostics directory was empty. All original source/toolchain checkout steps passed. **Failed workflow step:** `Fail-closed H2B source and native Hilbert graph statement preflight`.

**Exact first causal failure:** Workflow `.github/workflows/bfss-m4f9-h2b-actual-e2-hilbert-physical-graph-rebase-strict-gate1.yml` line 50 accidentally retained the **H2A** source path:
```python
p=pathlib.Path('experiments/openai-math-su2-physical-domain/FCPM4F9H2APhysicalHilbertOutputUnitary.lean')
assert git('HEAD:'+str(p)) == '35eeb0689214614b7a3b2e33586b03459228358a'
```
The expected blob `35eeb0689214614b7a3b2e33586b03459228358a` belongs to the newly staged **H2B** original candidate file `FCPM4F9H2BPhysicalHilbertE2GraphRebase.lean`. The original H2A source blob is `9224ebd878f0bbc2b3924083650489b8b01b070e`. Python `AssertionError` at line 5 of the heredoc is exactly the wrong-path hash mismatch. **No `lake env lean` occurred**, no E2 Hilbert graph theorem was compiled, no axiom report checked, and no cache saved.

The H2B candidate source remains Git blob `35eeb0689214614b7a3b2e33586b03459228358a`, original E2 operator literal and all H1/H2A/DE4 qualified proof ancestry untouched.

**Evidence-driven correction:** update ONLY the preflight path from H2A to H2B. Retain exact H2B hash, expected two imports, five exact declaration names, strict `-DwarningAsError=true`, narrow known-Lake-warning classifier, mandatory saved H2A cache and all original pins. Also repair the stale 'THREE_ROOT' wording of the diagnostic print to 'FIVE_ROOT' without altering the five theorem roots. Launch a new distinct Gate #2 workflow with a unique saved-cache key; do not misclassify Gate1 as a Lean failure. If Gate2 reaches Lean and fails, audit that separately.

**Bookkeeping:** H2B 0 accepted; working 309 principal accepted roots; source support accepted H2A Gate2 preserved; canonical main, pinned original math and PR #25 unchanged.
