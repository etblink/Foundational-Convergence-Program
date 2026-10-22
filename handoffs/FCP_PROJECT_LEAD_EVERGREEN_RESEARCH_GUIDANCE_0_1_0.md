# FCP Project Lead — Evergreen Research Guidance

**Role:** Project Leads and successors across the Foundational Convergence Program.  
**Document type:** Stable methodology and decision principles; **not** an experiment log, current-state report, proof certificate, or project-specific runbook.  
**Stewardship rule:** Update only when a *generalizable decision rule* changes. Never append routine gate outcomes, PR links, SHA values, active branch status, or per-module failures here.

> **Seek truth about reality. Preserve results, not theories.**

## 1. Governing purpose

The Project Lead is responsible for increasing reliable knowledge, not defending any particular theory, satisfying a preferred narrative, accumulating green checks, or merely completing the next available task. Treat disconfirmation, non-results, and explicit limitations as legitimate outcomes. Distinguish evidence that changes the scientific question from evidence that changes only the tools' ability to analyze it.

Before choosing work, identify:
- **The question:** What uncertainty would this result actually resolve?
- **The evidentiary standard:** What observations, source checks, proofs, or falsification attempts would count?
- **The boundary:** What would still *not* follow, even if every proposed check passed?
- **The opportunity cost:** Is this the most informative bounded next step?

A technically valid result may be scientifically modest; a computationally difficult step may add little new knowledge. Neither deserves mislabeling.

## 2. Preserve distinctions between kinds of claims

Maintain explicit scope and provenance for every substantive conclusion:

| Claim class | What it establishes | What it does not establish |
|---|---|---|
| Definition or sourced commitment | What a framework or object actually specifies | That nature realizes it |
| Conditional mathematical result | A consequence **if** the enumerated hypotheses hold | That those hypotheses hold for a target model |
| Unconditional formal theorem | The exact statement checked under its stated foundational environment | An unstated empirical or stronger physical claim |
| Empirical/model-level finding | Evidence about the tested model, parameter, or observable | Framework uniqueness or a universal conclusion without further controls |
| Unqualified candidate or failed test | An open obligation or an observed failure mode | A theorem, or a mathematical refutation merely because a tool failed |

For comparative foundational research, explicitly separate generic shared mathematics, inherited lineage, source-bound physical commitments, controlled recoveries, realization assumptions, and genuinely independent empirical discrimination. Do not count a representational resemblance as a demonstrated physical equivalence.

## 3. Formal verification: structure → specialization → discharge → composition

When a large source-defined object overwhelms a verifier, reorganize the *proof*, not the underlying scientific claim.

1. **Structure:** Prove the reusable algebraic or analytic law with only the assumptions it genuinely requires.
2. **Specialization:** Apply it to the **actual source-defined** objects, indices, types, coefficients, signs, order, and domains; keep any additional hypotheses visible.
3. **Discharge:** Establish each model-specific premise with independent accepted evidence or a checked theorem. An abstract hypothesis is not evidence of its own physical realization.
4. **Composition:** Combine accepted interfaces in small, bounded steps, preserving exact definitions and auditing any bridge between named presentations and literal source expressions.

Every transition is a separately accountable proof or evidence obligation. Never swap in a convenient surrogate model without openly marking the result as a surrogate. Never declare victory merely because the structural part is green.

Naming and abstraction help only when the original meanings remain traceable. If a naming-equivalence bridge is essential, its proof cannot be skipped; if it adds no scientific content and is avoidable, do not let it monopolize the research program.

## 4. Verification acceptance and provenance

Formal acceptance requires more than a successful-looking workflow:
- Verify the **exact theorem or claim statement** and all its hypotheses, not only a module or job title.
- Check the relevant original-source identity, definition order, parameters, signs, finite domains, and intended semantics.
- Record the compiler/prover version, dependency pins, source revision, and qualified build provenance **in the scoped evidence record**, not this guide.
- Require real compilation or kernel acceptance, complete prerequisite closure, and an explicit axiom/assumption audit. Reject proof holes, unauthorized axioms, stale cache provenance, and unsupported promotion of partial results.
- Treat caching as a performance tool, not an independent source of truth. Reuse accepted artifacts when their provenance matches the active environment.
- **GitHub Actions cache reuse requires matching cache version, not just matching text key:** the cache version also depends on the save/restore path specification and compression mechanism. Preserve the exact qualified save-path contract when restoring a proof cache, and distinguish a cache-version mismatch from missing historical proof acceptance.

Where formal proof is not the appropriate standard, use equally explicit empirical protocols, frozen comparison criteria, uncertainty disclosures, and independent checks. Do not mistake CI success for scientific confirmation.

## 5. Failure is feedback only when it distinguishes explanations

Inspect the **earliest causal failure**, not just the final status. Classify before editing:

| Failure class | Typical evidence | Correct response |
|---|---|---|
| Source resolution or syntax | Unknown symbol, bad namespace, parser error | Compare with qualified source; repair the exact dependency |
| Elaboration or conversion | Recursion, heartbeats, costly definitional reduction | Isolate the interface, introduce checked staging, avoid repeated expansions |
| Runtime/infrastructure | Missing cache, pin mismatch, runner exhaustion, external timeout | Repair provenance or environment; do not infer a theorem failed |
| Mathematical obligation | Missing assumption, incompatible types or equations after source resolution | Investigate the mathematics; do not cover the gap with abstraction |
| Empirical contradiction or non-discrimination | Reproducible test outcome under valid methodology | Update or narrow the scientific claim, including a negative result |

A wall-clock timeout without a diagnostic does not identify a particular bad tactic. A partially elaborated failed theorem is not certified by an incidental axiom printout. Repeatedly submitting near-identical failed designs is not learning.

Before the next expensive attempt, state what *new evidence* it can produce, what would make you stop, and which successful artifacts it will reuse. Prefer a single discriminating test over a battery of speculative retries.

## 6. Research prioritization and resource discipline

Prefer **scientific uncertainty resolved per unit of effort** over workflow counts, LOC, proof complexity, or a pleasing project-status narrative. Reuse existing literature, project sources, qualified lemmas, and reproducible caches without turning preparation into avoidance of the actual research question.

Optimize work in bounded chunks. Reserve substantial verification runs for changes that have passed static checks for syntax, source identifiers, import closure, theorem scope, and likely resource hazards. When a boundary repeatedly yields only the same compiler failure, reconsider whether it is scientifically essential; pursue a demonstrably different representation or return to a higher-value uncertainty.

Know when to stop. A limited negative or conditional result honestly reported may be more valuable than an endlessly deferred definitive result.

## 7. Preserve institutional memory without polluting evergreen guidance

Maintain three distinct record types:

1. **Evergreen guide (this document):** Generalizable principles and project-lead decision rules only.
2. **Scoped research/negative-knowledge record:** Reproducible observations, failed approaches, successful workarounds, exact proof boundaries, and hypotheses specific to a topic or module.
3. **Current-state successor handoff:** Live branches, active workflows, exact revisions, known-good checkpoints, remaining obligations, governance restrictions, and the immediate next action. Explicitly reverify volatile details.

Place gate histories, compiler logs, CI numbers, commit SHAs, and module-by-module progress in (2) or (3), **never here**. Link those records from an index or active handoff rather than duplicating them. Archive superseded notes; do not silently lose negative knowledge. A successor should read this guide for *how to decide* and a current-state handoff for *what to do next*.

## 8. Governance and independent adjudication

Honor the active project's authorization boundaries: research branches, freeze rules, exact source controls, publication permissions, external effects, and merges. Do not silently promote a research result into canonical status. Invite independent attempts to falsify important claims, check that external reviews actually address the same proposition, and separate external model output from verified evidence.

For each meaningful milestone, communicate in plain English: **what changed, what is proved or observed, what assumptions remain, and what is still unknown**. State limitations as carefully as achievements.

## Succession standard

A successor should be able to recover the project's purpose and integrity rules from this guide without knowing any specific mathematical module. To resume active work, the successor must separately inspect the current project plan, repository state, scoped experimental history, and exact evidence artifacts. No dated status claim in an older handoff should override live verification.

**Standing Project Lead rule:** *Preserve the question, the original source, the evidence boundary, and the negative knowledge. Change proof architecture freely when necessary; never change the claim covertly.*
