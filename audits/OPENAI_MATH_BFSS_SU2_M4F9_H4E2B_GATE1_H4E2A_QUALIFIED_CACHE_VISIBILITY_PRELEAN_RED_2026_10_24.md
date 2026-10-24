# BFSS M4F9 H4E2B Gate #1 — missing H4E2A accepted parent cache

**Disposition: STRICT RED; 0/2 H4E2B roots accepted.** Failed **before Lean candidate compilation**; no inference about theorem truth. This is a reproducible GitHub Actions qualified-cache-visibility/provenance problem, not a mathematical counterexample.

- Date: October 24, 2026 (Pacific).
- Branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Source candidate: `experiments/openai-math-su2-physical-domain/FCPM4F9H4E2BOriginalAYAmbientNativeFullDomainForm.lean`, exact blob `799a3bc975b726ae2455f2786760dabf27566ebe`, creation commit `403344c1333d03774b205a379f4dad8623959550`.
- Workflow: `.github/workflows/bfss-m4f9-h4e2b-ambient-full-domain-form-strict-gate1.yml`, commit `1269ebc1a4b7ae234b50d643792202c39f260ffb`.
- [Run #40126690114](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40126690114), job **`120969549925`**, completed **failure**.
- Original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source blob, import/name structure, pinned source/toolchain, and Mathlib restoration **passed**. First failed stage: `Verify accepted H4E1B charge action and H4E1A isometric pairing` (inherited workflow step label; this gate was actually checking the newer H4E2A parent).
- Exact failed restore key: `bfss-fcp-m4f9-h4e2a-form-7f1ee93f-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- First causal log:
```text
Cache not found for input keys: bfss-fcp-m4f9-h4e2a-form-7f1ee93f-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
H4E2B_H4E2A_ACCEPTED_PARENT_CACHE_MISSING
Error: Process completed with exit code 1.
```
- Raw diagnostic artifact: `bfss-m4f9-h4e2b-gate1-40126690114`, Actions artifact ID `12573258356`.
- Comparator: [H4E2A Gate #2 run #40124755468](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40124755468) **previously completed success**, and original job logs explicitly reported saving this exact key. Both Actions runs identify the same named research branch. **The reason the saved key was invisible at restore has not been established.** Do not speculate that the earlier H4E2A theorem became invalid or that cache retention/scope is conclusively known.
- H4E2B Lean candidate and `#print axioms` were **not executed**. No new `.olean` or qualified child cache; no H4E2B root accepted.
- Experimental adaptation for a genuinely discriminating Gate #2: use the previously restored *H4E1B* strictly accepted parent cache and recompile the **exact strictly accepted H4E2A source blob** under strict Lean and axiom validation in the *same job* before compiling H4E2B. This reduces dependence on the inaccessible cross-run H4E2A child cache. If H4E1B itself is now inaccessible, stop again at provenance, preserve precise evidence and do not misclassify the proof candidate.
- Preserve H4E2A Gate #1 earlier `isDefEq` red and the subsequent H4E2A Gate #2 actual green independently. Do not overwrite or reclassify them.
- **Scientific scope** of H4E2B remains: under H3B2 matching hypotheses, full AY original ambient/native charge-domain equivalence and exact normalized polarized charge form on that common entire natural domain. No Hamiltonian equivalence or spectral conclusion.
