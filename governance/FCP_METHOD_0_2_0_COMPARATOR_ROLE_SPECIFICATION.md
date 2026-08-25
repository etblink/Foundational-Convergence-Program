# FCP Method 0.2.0 — Comparator Role Specification

**Version:** 0.2.0  
**Status:** PROSPECTIVE CANDIDATE

## 1. Problem

Historical `FW-NULL-GRQFTSM` legitimately represented successful established physics, but the same object could function simultaneously as:
- empirical incumbent;
- recovery target;
- foundational competitor;
- control/weaker baseline.

Those roles support different inferences and must be typed prospectively.

## 2. Comparator roles

### `CR-EI_EMPIRICAL_INCUMBENT`

Purpose:
represent established empirical performance and calibrated physical description in tested regimes.

Consequences:
- a new framework must not inherit incumbent empirical success merely by recovering it;
- failure to improve on the incumbent is not automatically failure as a foundational theory unless an improvement claim was made;
- direct contradiction with incumbent-supported data can be evidence against the framework claim.

### `CR-RT_RECOVERY_TARGET`

Purpose:
define a structure/regime the candidate aims to recover.

Consequences:
- successful recovery can be positive viability evidence;
- target-conditioned recovery is nonindependent with respect to rediscovering that target;
- recovery does not transfer the target's empirical credit automatically.

### `CR-FC_FOUNDATIONAL_COMPETITOR`

Purpose:
compare competing claims about deeper ontology, dynamics, unification, explanatory structure or selection.

Consequences:
- competitors should be compared only on burdens both meaningfully address;
- a composite empirical incumbent need not count as a symmetric complete foundational theory;
- an open problem on one side is not a victory for the other.

### `CR-CB_CONTROL_BASELINE`

Purpose:
test whether a result already follows from a weaker or less committal framework.

Consequences:
- if yes, differential foundational credit may fall;
- the underlying result remains scientifically recordable;
- control success does not imply the stronger framework is false.

## 3. Role declaration

Every prospective comparison must declare one or more comparator roles before classification.

Example:

```text
FW-NULL-GRQFTSM:
CR-EI = YES
CR-RT = GR sector for classical recovery
CR-FC = QUALIFIED / ASYMMETRIC
CR-CB = YES for weaker-framework tests
```

The same object may occupy multiple roles, but each inference must name the role being used.

## 4. Null-baseline controls

Permanent:

```text
NULL_INCOMPLETENESS != POSITIVE_EVIDENCE_FOR_CANDIDATE
FAILURE_TO_SOLVE_NULL_OPEN_PROBLEM != NEGATIVE_EVIDENCE_AGAINST_CANDIDATE
RECOVERY_OF_NULL_SUCCESS != INDEPENDENT_EMPIRICAL_CREDIT
NULL_EMPIRICAL_SUCCESS != FOUNDATIONAL_COMPLETENESS
```

A candidate may still be legitimately criticized if its own stated objective requires solving an open null problem and it fails to do so. The burden must come from the candidate's claim, not from comparator role confusion.

## 5. Recovery versus competition

A framework can:
- successfully recover GR (`CR-RT`) while remaining empirically unselected (`CR-EI`);
- add foundational structure relative to the null (`CR-FC`) without that addition being independently supported;
- fail the weaker-framework test (`CR-CB`) on one claim while retaining distinctive content elsewhere.

These statements are compatible.

## 6. Governance disposition

Historical null baseline: `SPLIT` prospectively by role, not by rewriting the historical framework object.

No new framework ID is created in this phase.
