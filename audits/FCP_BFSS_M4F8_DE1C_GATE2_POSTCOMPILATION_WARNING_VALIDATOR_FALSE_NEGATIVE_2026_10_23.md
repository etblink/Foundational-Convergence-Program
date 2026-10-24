# BFSS M4F8 DE1C Gate #2 — post-Lean warning checker false negative

**Date:** October 23, 2026 PDT (original UTC log October 24).
**Disposition:** `DE1C_GATE2_RED__LEAN_TWO_THEOREMS_COMPILED_AND_ALLOWED_AXIOMS__CI_WARNING_FILTER_REJECTED_DEPENDENCY_LOCAL_CHANGES__CACHE_NOT_SAVED__0_OF_2_FORMALLY_ACCEPTED__PRINCIPAL_308_HELD`.

## Immutable independent original evidence

- [Actions run #40047382287](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40047382287), job **120732102463**, `completed/failure`, exact workflow HEAD `835da24157195e4656246f7df0436aac0f432d00`, attempt 1.
- Mathematical source `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentActualE2PhysicalInputRebaseDE1C.lean` Git blob `4fe5ecdb0b78d670c4ed62bb74ab15e4bb826a1c`; no mathematical source edit between Gate #1 and Gate #2.
- Original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact accepted **42-path** DE1B gate #1 cache restored:
```
Cache restored from key: bfss-fcp-m4f8-de1b-closed-outputs-61156421-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
- Corrected exact source checker **passed**: `M4F8_DE1C_GATE2_SOURCE_EXACT_DOMAIN_IFF_UNCONDITIONAL_DENSITY_PASS`.
- **Fresh Lean 4.34.1 compilation actually succeeded**, producing an actual new DE1C `.olean` in the temporary runner. Strict `#print axioms` output from original compiler log for BOTH roots:
```
'FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1C.independentE2PhysicalInputChargeColumn_domain_iff' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.M4F8IndependentActualE2PhysicalInputRebaseDE1C.independentE2PhysicalInputChargeColumn_domain_dense' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
```
- There were **no Lean errors, no forbidden axioms, no `sorryAx`**, and the two new theorem roots have the exact qualified axiom set.
- The Python strict output validator failed **AFTER** fresh Lean because its warning guard was too broad:
```python
assert not [z for z in s.splitlines() if 'warning:' in z], ('UNEXPECTED_WARNINGS', s)
```
The only reported warnings are known package-local-state environmental messages, e.g.:
```
warning: belyi: repository '.../upstream-math/lean/.lake/packages/belyi' has local changes
warning: formal-schemes: repository '.../upstream-math/lean/.lake/packages/formal-schemes' has local changes
warning: elliptic-curves: repository '.../upstream-math/lean/.lake/packages/elliptic-curves' has local changes
```
Eleven such dependency-local-change warnings were shown (including tempered-fundamental-groups, oka, orbicurve-cores, pi1, heights, genl, tate-curves-theta, iut). The exact log failure was `AssertionError: ('UNEXPECTED_WARNINGS', ...)`, not a Lean theorem diagnostic.
- Job failure occurred in the strict DE1C compilation-and-validation step, so the **new 43-path qualified cache save was skipped**. No 2-root formal acceptance under project procedures despite favorable mathematical compiler evidence.
- Original [preserved Gate #2 compiler artifact #12541408417](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40047382287/artifacts/12541408417), SHA256 `b3a3590bc115dd468b02747b25388834916f148817a218b8bc59a3c60527cccb`.

## Minimal Gate #3 correction

- **Do not touch** the mathematical source `4fe5ecdb0b78d670c4ed62bb74ab15e4bb826a1c`.
- Change only the **post-Lean warning validation** to reject all warnings **except exact full-line matches** for known dependency package local changes under `/upstream-math/lean/.lake/packages/<package>`. A permitted pattern is:
```python
known = r"warning: [A-Za-z0-9_-]+: repository '[^']*/upstream-math/lean/\.lake/packages/[A-Za-z0-9_-]+' has local changes"
warnings = [z for z in s.splitlines() if 'warning:' in z]
unexpected = [z for z in warnings if not re.fullmatch(known, z)]
assert not unexpected, ('UNEXPECTED_WARNINGS', unexpected)
```
Keep the original strict checker for **exactly two theorem roots, permitted axiom set, no `sorryAx`, and no `error:`**. Do not generically ignore warnings or alter source/parent ancestry.
- Restore identical parent 42-path DE1B cache key/version manifest; on full success save the 43-path cache (parent 42 + DE1C .olean) under a new Gate #3 key. Gate #3 must **freshly recompile** both declarations and report both exact axiom sets again.
- Gate #1 source-scanner failure (before Lean) remains separately preserved at `audits/FCP_BFSS_M4F8_DE1C_GATE1_CI_REGEX_MATCHES_LEAN_DOC_COMMENT_FALSE_NEGATIVE_2026_10_23.md`.

**Mathematical significance once fully accepted:** genuine actual E2 physical-input rebase domain iff and unconditional physical Hilbert norm-density by the accepted source Haar DC theorem, under original CAR/Hermitian/source matching hypotheses. These do NOT imply graph core, source identity E5, actual full physical-output codomain rebase DE2, Hamiltonian, self-adjointness or spectrum.

**Governance:** principal BFSS count remains **308**. Qualified DC, DE1, DE1B remain accepted; DE1C pending Gate #3. No `main`, draft PR #25, or upstream `etblink/math` mutation.
