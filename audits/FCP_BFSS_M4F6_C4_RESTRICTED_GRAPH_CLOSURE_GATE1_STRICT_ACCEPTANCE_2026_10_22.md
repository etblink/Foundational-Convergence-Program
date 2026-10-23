# Foundational Convergence Program — M4F6 C4 strict acceptance

**Local acceptance date:** 2026-10-22 PDT (GitHub run completed 2026-10-23 UTC).

**Formal disposition:** `M4F6_C4_RESTRICTED_GRAPH_CLOSURE_GATE1_STRICT_ACCEPTED__ONE_NEW_PRINCIPAL_ROOT__300_CUMULATIVE`.

## 1. Original immutable CI and exact compiled theorem

[GitHub Actions run #39900827545](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39900827545), job `120241771935`, workflow source revision `aff3f1957ed623d599557db71e9d5f2188b2d36f`, was **independently checked against its original complete job log**. The workflow and job both report `completed/success`; every required step completed successfully.

- Immutable original mathematics: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- Lean: `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact C4 Lean candidate: `experiments/openai-math-su2-physical-domain/FCPM4F6RestrictedGraphClosureC4.lean`; immutable Git blob `7a248ff92d8f1d3e7ee7cbf9e94b7addf5db5e0d`. Exact source and provenance gates passed; only a documentation comment was revised after staging C4, without changing the Lean mathematics.
- Exact theorem declaration: `FCP.M4F6RestrictedGraphClosureC4.sourceRestrictedCoreGraph_closure_eq_independent_image_closure`.
- All strict parent source and `.olean` closures passed: M4F5 unrestricted graph homeomorphism/closure; C1 literal original-source input cut; A1 independent source-exact alias identities; B1 abstract alias-aware input cut; C2 genuine independent input cut; **C3 physically input-restricted graph image**.

Original compiler/validator/resource/save lines:

```text
M4F6_C4_GATE1_ACCEPTED_C3_AND_HOMEOMORPHISM_IMPORT_CLOSURE_PASS
M4F6_C4_GATE1_EXACT_CLOSURE_AND_SOURCE_PREMISES_PASS
M4F6_C4_GATE1_GENUINE_RESTRICTED_GRAPH_CLOSURE_ONE_PRINCIPAL_ROOT_STRICT_PASS {
  'FCP.M4F6RestrictedGraphClosureC4.sourceRestrictedCoreGraph_closure_eq_independent_image_closure':
    {'Quot.sound', 'propext', 'Classical.choice'}
}
DIAG_RESOURCE_TIME 12.06 CPU 98% MAX_RSS_KB 7052968
Cache saved with key:
bfss-fcp-m4f6-restricted-graph-closure-c4-7a248ff9-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

The fresh compiler invocation was `lake env lean -DwarningAsError=true`, exactly one theorem root was qualified with only the three permitted axioms `propext`, `Classical.choice`, and `Quot.sound`. **No `sorryAx`, unsupported axiom, Lean error, or unexpected compiler warning**. The new `.olean` was saved in a qualified reusable cache only after strict success; original logs and resource metrics were uploaded.

**Count:** +1 newly strictly accepted principal root, 299 → **300 cumulative**.

## 2. Exact mathematical result and scope

C4 proves equality between the closures (as closed **sets/relations**) of:

- The literal original BFSS `pairedGaugeData.invariantCore` sixteen-supercharge smooth graph in `FullL2 2 × (SpinIndex → FullL2 2)`;
- The literal independent `independentInvariantCore theta hCAR hHermitian` sixteen-supercharge smooth graph in `Lp E 2 μ × (SpinIndex → Lp E 2 μ)`, transported through `independentGraphTransportHomeomorph J`.

For `E`, `color`, `gamma`, `theta` with original CAR/Hermitian hypotheses and the representation-identifying `J,hColor,hGamma,hJ`, this is the actual equation

```text
closure(source restricted smooth-core graph) =
  graphTransportHomeomorph J '' closure(independent restricted smooth-core graph).
```

The accepted proof is `congrArg closure` applied to the strictly accepted source-exact C3 graph-image equality, followed by the 17-component homeomorphism's `image_closure` theorem. This exactly follows the already accepted unrestricted graph-closure method, without redefining or weakening any physical input constraint or using new axioms.

### Scientific boundary

**Not established by this root:**

- That the graph closure is **single-valued** (vertical fiber over input zero trivial), hence the graph of a closable operator;
- Output gauge-invariance / physical membership for each of the sixteen charge values, unless separately imported and proved;
- Equality of closed operator graphs and domains on the genuinely physical Hilbert spaces;
- Physical Hamiltonian, adjoint/square/form/domain equivalence or spectral comparison; no mass-gap claim.

A closed relation need not be a single-valued closed operator graph. The vertical-fiber check is a substantive independent mathematical obligation, not a tactic simplification.

## 3. Why source exactness and negative knowledge matter

Before C2 acceptance, three direct C2 Lean elaboration/recursion variants failed. The program preserved all as authentic negative knowledge. D1/A1 initial red gates exposed flawed parser/source-comment validators, not mathematical contradictions. Separately qualified A1 named definitional equality certificates and B1 opaque generic input-cut lemma broke the conversion bottleneck. C2 was then strictly accepted as a genuine J-free independent graph input-cut identity; C3 transported both the actual graph and true physical-input predicate; C4 now transports its **closure** using accepted homeomorphism structure.

This success does **not** retrospectively accept old red gates, and it does not prove the entire physical unbounded-operator correspondence.

## 4. Next research gate and governance

Priority is **operator-level diagnosis**, not accumulating additional equivalent graph equalities. Audit source-side accepted physical charge closed-graph/domain results and map the exact restricted 17-component joint graph to a closable operator on the genuine independently specified physical Hilbert space. Start by checking output physical-space membership and single-valuedness of the closed relation. One side's proven closability may transfer via a true product homeomorphism, but only after verifying its actual hypotheses and restricted physical codomain, not by inference from C4 alone.

If a gap exists, preserve it and formulate the smallest abstract theorem for transport of the trivial vertical fiber under the actual split input/output homeomorphism. Require explicit source proof and exactly typed physical-domain bridge before launching new specialized CI. Do not manufacture an operator or spectral conclusion.

No change to canonical `main`, draft/unmerged PR #25, original source pins or qualified parent mathematics.
