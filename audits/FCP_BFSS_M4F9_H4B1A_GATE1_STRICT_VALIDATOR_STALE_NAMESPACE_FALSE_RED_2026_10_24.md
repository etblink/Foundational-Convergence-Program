# BFSS M4F9 H4B1A Gate #1 — strict validator FALSE RED (stale namespace); candidate Lean compiled clean

**Disposition:** `H4B1A_GATE1_RED__NEW_SOURCE_ONLY_AY_NAMED_GRAPH_THEOREM_COMPILED__AXIOMS_PERMITTED__STRICT_VALIDATOR_OLD_H4A_NAMESPACE__NO_QUALIFIED_CACHE__RETEST_REQUIRED`.

**Evidence:** original [GitHub Actions run #40078760725](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40078760725), job **120827703695**, completed/**failure**, workflow/event commit **3c4068c78c3d6af7e3033b7f2d44aaa866bdc1b3**. Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4B1ASourceNamedNativeGraphMembership.lean` exact Git blob **d5ea2d4e2c519e267682972ba2ddee84d5438caa**. Gate1 workflow `.github/workflows/bfss-m4f9-h4b1a-source-ay-physical-graph-membership-strict-gate1.yml` exact Git blob **7c5818fd5eaf33752eb72af558b6e2d07192fef5**. Original log artifact [#12554447387](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40078760725/artifacts/12554447387), ZIP SHA256 **3cac170f5e504160e1751b822a8c7288b26dd7be6a2a93e94b906ac8ddab6745**.

Source/toolchain preflight passed: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Exact accepted H4A parent cache **hit**, imported ancestry checked. **Lean compiled the leaf `.olean` freshly without source errors** and printed:

```
'FCP.M4F9H4B1ASourceNamedNativeGraphMembership.pairedNativeSourcePhysicalGraph_mem_source_iff'
  depends on axioms: [propext, Classical.choice, Quot.sound]
```

**Actual sole failure:** copied Gate1 Python validator retained:

```python
ns = 'FCP.M4F9H4ANativeHilbertAmbientCoordinateTransport.'
```

while the accepted candidate's actual namespace is `FCP.M4F9H4B1ASourceNamedNativeGraphMembership.`. It then raised `AssertionError: ('H4B1A_WRONG_ROOTS', [...correct theorem fullname...])`. This is a **validator namespace bug**, not a Lean theorem failure, not an unexpected axiom and not an original-source discrepancy.

**Strict gate acceptance policy remains uncompromised:** Gate1 is still RED, 0/1 formally accepted; because the validator failed, the H4B1A cache-save step never completed. An `.olean` that compiled in a failed run must NOT be promoted as a reusable qualified ancestry cache. Historical Gate1 red preserved.

**Single precise next repair:** create isolated **Gate2** workflow from Gate1 and change only the expected validator namespace to `FCP.M4F9H4B1ASourceNamedNativeGraphMembership.`, with exact unchanged candidate Git blob, original frozen source, H4A exact parent archive, one-root inventory, warnings filter and separately keyed complete cache. Add a preflight that the expected namespace string matches the candidate's `namespace` declaration to prevent copy-paste recurrence. No mutation of underlying Lean theorem necessary.

**Why the theorem matters:** it proves equivalence between H3B1 physical-output AY graph membership and the genuine named source `deformedModelGraph 1 0` under the canonical subtype/output embeddings. The theorem itself is source-only. Once strictly requalified, it should replace the large `originalMinimalPhysicalHilbertChargeColumn_graph_eq` rewrite that caused **H4B1 Gate2** deterministic `isDefEq` exhaustion. H4B1 native source-independent graph direction, both-domain equality, adjoint/Hamiltonian and spectrum remain open.

Working **principal** theorem root count 309 unchanged; canonical `main`, pinned upstream original source and PR #25 untouched.