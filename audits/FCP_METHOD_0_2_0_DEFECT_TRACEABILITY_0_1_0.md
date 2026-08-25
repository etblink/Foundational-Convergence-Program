# FCP Method 0.2.0 — Defect / Root-Cause Traceability

**Version:** 0.1.0  
**Prospective method target:** `FCP_METHOD_VERSION = 0.2.0`  
**Canonical historical baseline:** `65a42e350888a64bca564cc7ebb68ca357382e01`  
**Mode:** prospective governance only; historical FCP-1–FCP-21 records remain immutable.

## 0. Governing rule

> **Revise only where a confirmed defect requires revision. Preserve controls that survived adversarial testing.**

This traceability record distinguishes historical application failures from prospective method-design failures. An application error does not by itself justify rewriting a sound rule.

## 1. Root-cause matrix

| Issue | Historical evidence | Root cause | Classification | Method change required | Prospective disposition |
|---|---|---|---|---|---|
| E2 burden differed across FCP-5/FCP-13/FCP-14 | W8; equal-standard E2 audit | packet transcription was treated as an extra scientific predicate in FCP-14 | `PROVENANCE_IMPLEMENTATION_ERROR` | YES, clarify provenance semantics | `CLARIFY` |
| E3 burden differed across CST/LOOP/AS | W3; equal-standard E3 audit changed LOOP/AS 0→bounded E3 | complete-record/calibration gate was applied asymmetrically | `APPLICATION_ERROR_ONLY` + `CLASSIFICATION_DESIGN_DEFECT` in ambiguous wording | YES, clarify E3 scope/calibration semantics | `CLARIFY` |
| Target-conditioned recovery was compressed to zero convergence and thereby lost positive scientific meaning | W11; equal-standard propagation | relation existence, viability and independence were coupled | `EVIDENCE_ACCOUNTING_DEFECT` | YES | `SPLIT` |
| `COMMON/GENERIC/INHERITED/UNINFORMATIVE` compressed distinct concepts | W16 | provenance/genericity tags carried multiple epistemic meanings | `TERMINOLOGY_DEFECT` | YES | `SPLIT` |
| FCP null object served as incumbent, recovery target and comparator | W7 | comparator role was implicit rather than typed | `COMPARATOR_DESIGN_DEFECT` | YES | `SPLIT` |
| Countermodels test framework overclaim more strongly than FCP over-subtraction | W17 | no symmetric adversarial subtraction check | `EVIDENCE_ACCOUNTING_DEFECT` | YES | `REVISE` |
| FCP-18 inferred too much governance confidence from small closed-corpus arithmetic | W18; W5 | no explicit trigger from application inconsistency to method review | `GOVERNANCE_DEFECT` | YES | `REVISE` |
| K1–K10 described as frozen before first competitor exposure but were not blinded to NFC | W2 | provenance-neutrality claim exceeded actual design history | `TERMINOLOGY_DEFECT` / `GOVERNANCE_DEFECT` | YES, narrow authority claim | `CLARIFY` |
| Dual-firewall zero language risked nature-level interpretation | W1 | exact comparator-object result and broad absence claim were insufficiently separated | `EVIDENCE_ACCOUNTING_DEFECT` | YES | `CLARIFY` |
| Source silence / packet extraction could be treated as absence | W13; W5; equal-standard audit | provenance state and scientific state were conflated | `PROVENANCE_IMPLEMENTATION_ERROR` | YES | `SPLIT` |
| E4 mixed predictive equivalence with empirical selection rhetoric | historical E4 + W7/W11/W16 | relation type and evidentiary consequence were coupled | `CLASSIFICATION_DESIGN_DEFECT` | YES | `SPLIT` |
| E5 accumulated generic, functional, lineage and residual relations | W16; FCP-18 incidence structure | E5 became a residual bucket | `CLASSIFICATION_DESIGN_DEFECT` | YES | `REVISE` |
| Truth-seeking supremacy existed declaratively but lacked operational supersession triggers | W12 | charter principle not fully proceduralized | `GOVERNANCE_DEFECT` | YES | `REVISE` |
| FCP comparison work risked outrunning empirical/no-go investigation | W5/root-cause 7 | strategy over-weighted formal pairwise comparison | `STRATEGIC_PROGRAM_DEFECT` | YES at scheduling/governance level | `REVISE` |
| Anti-smuggling, dynamics/process split, physical realization, empirical inheritance, taxonomy, countermodels, weaker-framework test, exact provenance, reconstruction/emergence distinction | W1–W18 method disposition; equal-standard audit | controls remained discriminating | `NO_METHOD_CHANGE_REQUIRED` | NO substantive rewrite | `KEEP` |

## 2. Application error versus method defect

### Application errors that do not warrant weakening the rule

- LOOP and AS E3 were historically under-credited because the same bounded-substructure rule used for CST was not applied.
- FCP-14's packet-transcription gate was not required by the scientific E2 standard.
- These findings do **not** justify eliminating explicit maps, limits, domains, error notions, scope ceilings or anti-smuggling requirements.

### Method defects that require prospective architecture changes

1. relation classification was coupled too tightly to independence/convergence credit;
2. target-conditioned recovery lacked a dedicated positive viability channel;
3. provenance state could masquerade as scientific absence;
4. genericity, lineage, target import and evidential informativeness were under-separated;
5. null/comparator roles were implicit;
6. E4/E5 mixed relation types with evidence consequences;
7. anti-over-subtraction testing and supersession governance were incomplete.

## 3. Strategic result

`FCP_METHOD_0_2_0_REVISION_SCOPE = NARROW_BUT_ARCHITECTURAL`

The method retains the successful source/mapping/limit/physical-bridge disciplines while changing how distinct epistemic dimensions are represented.

## 4. Non-goals

- no historical rescoring;
- no new framework-specific literature;
- no framework winner;
- no NFC validation/falsification;
- no recurrence recomputation;
- no FCP-22.
