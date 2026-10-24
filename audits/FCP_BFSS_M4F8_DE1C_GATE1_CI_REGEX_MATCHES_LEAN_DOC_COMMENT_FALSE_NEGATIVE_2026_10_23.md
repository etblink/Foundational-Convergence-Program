# BFSS M4F8 DE1C Gate #1 — false negative in strict preflight regex

**Date:** October 23, 2026 PDT; original GitHub Actions timestamps on October 24 UTC.

**Disposition:** `DE1C_GATE1_RED__PREFLIGHT_REGEX_CONFLATED_LEAN_DOC_COMMENT_WITH_THEOREM__LEAN_NEVER_RAN__0_OF_2_ACCEPTED__PRINCIPAL_308_HELD`.

## Original immutable evidence

- [Actions run #40046838616](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40046838616), job `120730411447`, completed/failure, head `ff6e72519667be20b92fabb1552f1c1ea4feb120`, attempt 1.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentActualE2PhysicalInputRebaseDE1C.lean` exact Git blob `4fe5ecdb0b78d670c4ed62bb74ab15e4bb826a1c` was **not** compiled.
- Original source pins, Lean 4.34.1 and Mathlib restoration passed. The exact strictly accepted DE1B Gate #1 cache **was successfully restored**:
```
Cache restored from key: bfss-fcp-m4f8-de1b-closed-outputs-61156421-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
- The `Fail-closed source-exact DE1C actual operator domain equivalence preflight` Python code wrongly used:
```python
declarations = re.findall(r'^theorem (\S+)', t.split('-/',1)[-1], re.M)
```
to assert there are exactly two named theorems.
- Exact source contains:
```
theorem independentE2PhysicalInputChargeColumn_domain_iff
...
theorem and the exact (rather than merely subset) native E2
...
theorem independentE2PhysicalInputChargeColumn_domain_dense
```
The middle line is **inside the Lean documentation comment** on the second theorem. Preflight raises:
```
AssertionError: ['independentE2PhysicalInputChargeColumn_domain_iff', 'and', 'independentE2PhysicalInputChargeColumn_domain_dense']
```
at 2026-10-24T00:54:06 UTC. Strict Lean compilation and new cache save were **skipped**, original diagnostic artifact directory empty.
- This is a preflight text-scanner false negative, **not** a mathematical defect in DE1C or evidence of any compiled Lean declaration with the name `and`. Existing DE1/DE1B/DC acceptance unaffected.

## Single narrow Gate #2 correction

- Preserve original mathematical leaf blob `4fe5ecdb0b78d670c4ed62bb74ab15e4bb826a1c` **byte-for-byte**.
- Replace the bad regex in a new scoped Gate #2 workflow with an exact-name anchored declaration scanner, such as `re.findall(r'^theorem (independentE2PhysicalInputChargeColumn_(?:domain_iff|domain_dense))$', t, re.M)`. Retain explicit names/order checks and `#print axioms` exact source preflight. This prevents doc comment `theorem and` from being misclassified while retaining the strict intended allowed theorem list.
- Reuse exact **42-path DE1B SAVED cache manifest** with exact qualified parent key, and **43-path DE1C SAVE** manifest only after a fresh two-theorem `lake env lean -DwarningAsError=true` passes, no `sorryAx`, only `propext, Classical.choice, Quot.sound`, and new unique Gate #2 key.
- Gate #2 may expose a new genuine Lean elaboration issue; classify from the **first compiler error** and preserve any subsequent red independently. Do not treat a preflight fix as mathematical acceptance.

Principal BFSS physics root count **308**, unchanged. The original DE1, DE1B and DC acceptances remain qualified. DE1C, DE2 and DE2B remain prospective/unaccepted. Canonical `main`, draft PR #25, and upstream `etblink/math` unchanged.
