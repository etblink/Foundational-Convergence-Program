# FCP Empirical / Realization Namespace Alias Table 0.1.0

## Status

```text
STATUS = ACTIVE_PROSPECTIVELY
OPERATION = POST_FW_CAT_EXTERNAL_AUDIT_AND_OBJ_CAT_11_READJUDICATION_RECONCILIATION
METHOD_0_2_0_REWRITE = NO
HISTORICAL_SCALE_REWRITE = NO
SCIENTIFIC_RECLASSIFICATION = NO
```

## Purpose

Several bounded operations introduced local empirical or realization ladders whose numerals overlap while their meanings differ. Matching numerals across these namespaces are not equal scientific levels. Future cross-operation work must use namespace-qualified tokens or explicitly cite the local definition.

## Canonical aliases

| Namespace-qualified alias | Historical/local token | Exact local meaning | Cross-namespace rule |
|---|---|---|---|
| `METHOD_EMP0` | Method 0.2.0 `EMP0` | none | Method namespace only |
| `METHOD_EMP1` | Method 0.2.0 `EMP1` | inherited success | Method namespace only |
| `METHOD_EMP2` | Method 0.2.0 `EMP2` | compatibility with data | Method namespace only |
| `METHOD_EMP3` | Method 0.2.0 `EMP3` | model or parameter constraint | not equal to `FWCAT_EMP3` |
| `METHOD_EMP4` | Method 0.2.0 `EMP4` | direct framework discriminator | framework-level discriminator threshold |
| `FWCAT_REAL4` | FW-CAT-local `REAL4` | physical-system realization at model/implementation scope | not equal to holography `R4` |
| `FWCAT_EMP3` | FW-CAT-local `EMP3` | direct model or implementation-level experimental result | not equal to `METHOD_EMP3` |
| `FWCAT_EMP4` | FW-CAT-local `EMP4` | direct framework-level empirical discriminator | semantically close to `METHOD_EMP4`, but local provenance must remain explicit |
| `FWCAT_EMP5` | FW-CAT-local `EMP5` | framework-level empirical selection | local FW-CAT scale only |
| `HOLOGRAPHY_R4` | broader-holography-local `R4` | physical spacetime realization | not equal to `FWCAT_REAL4` |
| `HOLOGRAPHY_R5` | broader-holography-local `R5` | simulator or analogue realization | separate intervention axis |
| `HOLOGRAPHY_R6` | broader-holography-local `R6` | observational contact or model-parameter constraint | local holography scale |
| `HOLOGRAPHY_R7` | broader-holography-local `R7` | framework-level empirical discriminator | local holography scale |
| `HOLOGRAPHY_R8` | broader-holography-local `R8` | framework-level empirical selection | local holography scale |
| `FCP26_EC1` | FCP-26-local `EC1` | inherited / target-conditioned feasibility class as defined by FCP-26 | FCP-26 screen only |
| `FCP26_EC2` | FCP-26-local `EC2` | model/parameter/realization-level testability as defined by FCP-26 | FCP-26 screen only |
| `FCP26_EC3` | FCP-26-local `EC3` | framework-level candidate-target class as defined by FCP-26 | FCP-26 screen only |
| `FCP26_EC4` | FCP-26-local `EC4` | strongest FCP-26 framework-level feasibility class | FCP-26 screen only |

## Mandatory use rule

```text
MATCHING_NUMERAL != MATCHING_EVIDENCE_SCOPE
LOCAL_TOKEN_WITHOUT_NAMESPACE_IN_CROSS_OPERATION_COMPARISON = FORBIDDEN_PROSPECTIVELY
HISTORICAL_ARTIFACT_RENAMING = FORBIDDEN
HISTORICAL_CLAIM_RECLASSIFICATION = NONE
FWCAT_003_SCIENTIFIC_CONTENT_CHANGE = NONE
```

`FWCAT-003` therefore remains a valid direct quantum-switch implementation-level experimental record. Its historical `REAL4/EMP3` tokens mean `FWCAT_REAL4/FWCAT_EMP3`, not holography `R4` and not Method-0.2.0 `EMP3`.

This table is a namespace firewall, not a new empirical scale and not a Method-0.2.0 revision.
