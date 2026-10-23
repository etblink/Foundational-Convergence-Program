# FCP BFSS M4F6 — Input Cut Application Bounded Diagnostic 1 #3 RED and warning policy review

**Observed 2026-10-22 PDT / 2026-10-23 UTC. Disposition:** red, zero principal roots accepted; cumulative strict ledger **294**.

## Reproducible evidence

- [Actions run #39877727582](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39877727582); job `120167321668`; triggered research SHA `4207f1c918dc2a49b3219df97587a709acbce33c`; workflow completed failure.
- Preserved original artifact `bfss-m4f6-input-cut-application-diagnostic1-39877727582`, artifact ID `12469546770`. The complete ZIP was downloaded and `FCPRestrictedGraphInputCertificates.log` independently examined (**15,141 bytes**), not inferred from only the last 80 log lines in the Actions job transcript.
- Pinned original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The pinned source, M4F5 parent cache, generic helper cache and import checks passed.
- Candidate `experiments/openai-math-su2-physical-domain/FCPRestrictedGraphInputCertificates.lean` at exact blob `174cd91c8cff9c1e353d5f51529a5afd7b03f6c1`.
- The **three** generic/original input-cut helper declarations again compiled and strictly passed permitted-axiom audit. Generic stage resource 18.06 seconds wall, 6,982,580 KB maximum RSS; **supporting results, not newly accepted principal roots**.

## Actual earliest errors hidden by truncated transcript

The complete per-module Lean log begins with benign dependency-local-changes warnings and then:

```
FCPRestrictedGraphInputCertificates.lean:28:75: error: unexpected token 'set_option'; expected 'lemma'
FCPRestrictedGraphInputCertificates.lean:47:80: error: unexpected token 'set_option'; expected 'lemma'
```

Both declaration-level `set_option linter.defProp false in` directives were placed between a `/-- ... -/` documentation comment and the following `def`. The documentation comments attach to declarations, and the inserted option command violates that parsing position. The log subsequently prints both inferred application definitions and allowed axioms `[propext, Classical.choice, Quot.sound]`, **but the compiler exited 1**; the job did not pass the complete strict validator and no application certificate is accepted. This is **parser/declaration construction**, NOT a falsification of either input-cut lemma, and NOT evidence that all proof obligations are done.

The previous two runs were likewise command-form defects:
- [Diagnostic #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39871565925): `defProp` linter rejected a proposition-valued `def`.
- [Diagnostic #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39876789796): one remaining proposition-valued `def` linter; replacement `theorem originalInputCutApplication := ...` rejected as Lean theorem grammar without explicit proposition.
- Gate #3 tried to fix both but made the documentation/option-placement error above.

Three expensive CI runs exposed problems with our **diagnostic wrapper**, not with the real source-exact concrete graph proof. No new discriminating test of concrete M4F6 specialization was achieved.

## Strictness distinction and evidence-based response

**Retain `-DwarningAsError=true` in formal-acceptance gates.** The accepted M4E5 Gate #5, M4F4 Gate #1 and M4F5 Gate #1 all passed that same setting. Strict warnings alone do not explain the current red streak.

**Do not require that acceptance strictness for preliminary exploratory diagnostics.** Compile exploratory candidate snippets with ordinary warning reporting, capture and classify warnings, separate syntax/type/goal errors from style/deprecation reports, inspect full artifact logs, and statically validate documentation/comment/command construction before paid CI. Use strict acceptance only once the exact source proof and expected theorem type are stable. Explicit proof-hole and unapproved-axiom prohibitions apply at every stage. Source-exact historical recovery may use *documented, byte-differenced compatibility adapters* while maintaining the frozen accepted original, rather than pretending a deprecated proof script invalidates its mathematics.

For M4F6 **stop re-running the inferred-type certificate wrapper** until a different diagnostic or explicit bridge to the concrete restricted-graph definitions can test the actual mismatch. A tiny candidate-level correction is to use `set_option linter.defProp false` as a normal diagnostic-file option **before** the declaration documentation, and keep both applications as inferred `def` expressions; however, proving this trivial diagnostic does not resolve the concrete restricted graph equality. Disable verbose `set_option diagnostics true` for routine tests unless diagnostic counters are needed: it obscured the first failure under the job transcript's tail-80-line limit. All compiler logs must remain artifacts, never discarded.

## Comparison with successful streak

The accepted [M4E5 Gate #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39844436390) succeeded after decomposing the raw sixteen-charge identity into previously certified kinetic/cubic pieces, named source correspondences, and a composition-only proof (~10.22 s). [M4F4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39855230444) and [M4F5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39859269539) composed reusable qualified interfaces and closed a genuine unrestricted graph image/closure milestone (~10–13 s per compiled stage), under strict warnings and exact axiom checks. **That proof architecture, not relaxed standards, generated the successes.**

Current work is at the new physical gauge-invariant domain/source equivalence boundary, where (i) concrete large object conversions may cause recursion and (ii) historical G4/D3 modules lack an importable, current qualified prerequisite chain. Do not conflate this mathematical change in difficulty with wrapper syntax mistakes; address each separately.

## Project Lead decision

**No immediate Gate #4 on a modified linter command.** Preserve this complete red, fix cheap syntax and log-extraction quality outside paid gates, revisit whether M4F6 inferred applications add new information now that their exact inferred propositions were printed, and route next expensive CI to a real concrete bridge or the source-qualified M4F1 recovery prerequisite. Keep canonical `main`, original `etblink/math`, and draft PR #25 untouched.

No physical gauge-restricted operator/domain equality, closure as a single-valued operator, Hamiltonian equivalence, Spin(9) spectral theorem, or positive eigenvalue/mass gap is established.
