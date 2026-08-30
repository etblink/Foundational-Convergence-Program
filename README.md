# Foundational Convergence Program

The **Foundational Convergence Program (FCP)** is a comparative research program for testing which structures recur across foundational approaches to physics, which are genuinely source-bound physical commitments, and which disappear once generic mathematics, common lineage, target-conditioning, or inherited empirical success are removed.

> **Seek truth about reality.**  
> **Preserve results, not theories.**

FCP is not itself a candidate theory of nature, and it does not assign a scalar score or a preferred-framework ranking. Every framework, comparison, and methodological rule remains open to revision when stronger evidence requires it.

## What the program asks

FCP separates questions that are often conflated:

- **Framework identity:** what a framework actually commits to, and which sources support that identity.
- **Physical content:** which structures are more than notation, representation, or generic mathematics.
- **Relation type:** whether two frameworks are exactly related, representationally related, connected by controlled recovery, empirically comparable, functionally related, or not demonstrably related.
- **Independence:** whether an apparent recurrence is independently motivated, inherited through common ancestry, target-conditioned, or otherwise non-independent.
- **Realization:** whether formal structures have a qualified bridge to physical systems, measurements, or observables.
- **Empirical status:** whether evidence merely tests a model or parameter, or genuinely discriminates between frameworks.
- **Recurrence:** whether non-generic structures survive those controls across multiple independent frameworks.

## Current scientific frontier

The latest canonical scientific operation is the first null-control comparison for the source-bound **process-matrix framework** (`FW-PROCESS-MATRIX`). Against the weaker GR/QFT/SM null baseline, the comparison leaves a **nonempty formal-operational residue** at framework-wide scope while also finding:

- no E1, E3, E4, or E5 pairwise relation;
- three bounded E2 representation/realization relations;
- no framework-level empirical discriminator;
- no framework-level empirical selection;
- no established universal physical realizability of the full formally valid process domain.

The central unresolved question is therefore not whether formal process-matrix structure exists, but **which formally valid process matrices are physically realizable under which subsystem, laboratory, quantum-mechanical, and spacetime assumptions**.

A targeted source-strengthening Stage 1 for that realizability / physical-selection question has been prospectively preregistered. Its search lanes, search surfaces, query families, counterevidence requirements, and corpus-sufficiency rules are frozen. **No external literature query under that preregistration has started yet.**

For the exact live state and authorization boundary, see [`CURRENT_STATE.md`](CURRENT_STATE.md).

## How FCP works

The repository uses several explicit epistemic firewalls:

1. **Source selection is frozen before adjudication** when result-directed source choice could bias the outcome.
2. **Separation precedes admission:** a scientific object must first be distinguished from neighboring frameworks, models, resources, and generic tools before it can be admitted as a framework.
3. **Representation is not identity:** a formalism being representable inside another language does not establish that the two frameworks are the same.
4. **Model evidence is not framework evidence:** successful implementations, simulations, or parameter constraints are not automatically promoted to whole-framework confirmation.
5. **Null subtraction is explicit:** generic mathematics, ordinary quantum structure, common lineage, inherited empirical success, and target-conditioned content are removed before claiming a framework-specific residue.
6. **Negative results are retained:** failure to find convergence, recovery, empirical discrimination, or a stable framework is a valid scientific outcome.

The active prospective method is **FCP Method 0.2.1**. Historical FCP-1 through FCP-21 remain preserved under the Method 0.1.0 / FCP-2 rules under which they were produced.

## Start here

For readers who want to inspect the program rather than its internal execution history:

- [`FCP_CHARTER.md`](FCP_CHARTER.md) — purpose, scope, and program-level commitments.
- [`EPISTEMIC_RULES.md`](EPISTEMIC_RULES.md) — core scientific safeguards and non-inference rules.
- [`COMPARISON_PROTOCOL.md`](COMPARISON_PROTOCOL.md) — pairwise comparison semantics and relation classes.
- [`FRAMEWORK_REGISTER.md`](FRAMEWORK_REGISTER.md) — current source-bound framework identities and statuses.
- [`SOURCE_REGISTER.md`](SOURCE_REGISTER.md) — canonical source inventory and provenance.
- [`CLAIM_LEDGER.md`](CLAIM_LEDGER.md) — durable scientific claims and supersession history.
- [`CURRENT_STATE.md`](CURRENT_STATE.md) — exact current scientific, maintenance, routing, and authorization state.

## Repository map

| Path | Role |
|---|---|
| `frameworks/` | Source-bound framework baselines, intake records, and K1–K10 profiles |
| `comparisons/` | Pairwise comparisons and null controls |
| `comparison_keys/` | Framework-neutral comparison coordinates |
| `convergence/` | Program-level recurrence and convergence analyses |
| `countermodels/` | Null baselines and countermodel material |
| `audits/` | Independent, adversarial, and consistency audits |
| `governance/` | Preregistrations, sequencing decisions, and repository/scientific governance |
| `handoffs/` | Exact operation-boundary handoffs and provenance capsules |
| `meta/` | Derived canonical index, artifact registry, and operation registry |
| `tools/` | Deterministic repository-navigation and integrity tooling |

The structured files under `meta/` are **derived navigation**, not scientific authority. If a derived record conflicts with a canonical scientific or governance artifact, the underlying artifact controls.

## Reading the results

FCP deliberately distinguishes several kinds of positive-looking statements:

```text
FORMAL_VALIDITY != PHYSICAL_REALIZABILITY
REPRESENTATION != FRAMEWORK_IDENTITY
SELECTED_MODEL_SUCCESS != FRAMEWORK_CONFIRMATION
NONEMPTY_NULL_RESIDUE != TRUE_FRAMEWORK
RECURRENCE != INDEPENDENT_RECURRENCE
EMP3_MODEL_OR_PARAMETER_TEST != EMP4_FRAMEWORK_DISCRIMINATOR
```

That distinction is central to the project. The goal is not to maximize the number of apparent connections between theories; it is to determine which connections survive increasingly strong controls.

## Provenance and reproducibility

Canonical scientific and governance state lives on `main`. Git history is treated as provenance authority, while the live working tree is allowed to evolve as the program learns. Derived navigation can be regenerated and checked with:

```bash
python tools/fcp_navigation.py check
```

Repository publication, content-equivalence, and remote-ref lifecycle rules are defined in [`governance/FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0.md`](governance/FCP_PUBLICATION_PROVENANCE_AND_REF_LIFECYCLE_POLICY_0_1_0.md).

## Scientific posture

FCP does not assume that Reduced NFC, process matrices, String/M theory, asymptotic safety, loop approaches, AQFT, categorical approaches, tensor-network programs, holography, or any other investigated framework is correct.

The program is successful when it becomes harder to fool ourselves about what the evidence actually supports—even when the result is that an attractive framework, relation, empirical target, or convergence claim does **not** survive scrutiny.
