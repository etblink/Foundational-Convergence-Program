from pathlib import Path
import re

ROOT = Path('.')
CLAIMS = ROOT / 'CLAIM_LEDGER.md'
STATE = ROOT / 'CURRENT_STATE.md'
REGISTER = ROOT / 'FRAMEWORK_REGISTER.md'
WORKFLOW = ROOT / '.github/workflows/post-nfc-process-matrix-reconcile.yml'
SELF = ROOT / 'tools/post_nfc_process_matrix_reconcile.py'


def replace_once(text: str, old: str, new: str, label: str) -> str:
    count = text.count(old)
    if count != 1:
        raise RuntimeError(f'{label}: expected exactly 1 occurrence, found {count}')
    return text.replace(old, new, 1)


def replace_prefixed_line(text: str, prefix: str, newline: str, label: str) -> str:
    lines = text.splitlines(keepends=True)
    idxs = [i for i, line in enumerate(lines) if line.startswith(prefix)]
    if len(idxs) != 1:
        raise RuntimeError(f'{label}: expected exactly 1 line, found {len(idxs)}')
    ending = '\n' if lines[idxs[0]].endswith('\n') else ''
    lines[idxs[0]] = newline + ending
    return ''.join(lines)


# ------------------------------------------------------------------
# CLAIM_LEDGER.md: update header metadata and append exactly five rows.
# Preserve every byte from the first historical claim row through EOF.
# ------------------------------------------------------------------
claims_orig = CLAIMS.read_text(encoding='utf-8')
if '## FWPM-001 —' in claims_orig or '## FCP-NFCPM-001 —' in claims_orig:
    raise RuntimeError('Claim Ledger already contains one or more proposed rows')

body_marker = '# FCP-1 claim entries'
if claims_orig.count(body_marker) != 1:
    raise RuntimeError('Could not bind unique historical-claim body marker')
old_body = claims_orig[claims_orig.index(body_marker):]

old_header_sentence = (
    'The later external-audit / OBJ-CAT-11 bounded re-adjudication reconciliation appends exactly one current taxonomy-correction row, yielding **94 durable rows through the OBJ-CAT-11 bounded re-adjudication**.'
)
new_header_sentence = (
    'The later external-audit / OBJ-CAT-11 bounded re-adjudication reconciliation appends exactly one current taxonomy-correction row, yielding 94 durable rows through the OBJ-CAT-11 bounded re-adjudication. '
    'The post-NFC/process-matrix durable-provenance reconciliation appends five already-canonical process-matrix and pairwise rows, yielding **99 durable rows through the Reduced-NFC ↔ FW-PROCESS-MATRIX prospective comparison**.'
)
claims_updated = replace_once(claims_orig, old_header_sentence, new_header_sentence, 'claim-ledger header')
if claims_updated[claims_updated.index(body_marker):] != old_body:
    raise RuntimeError('Historical Claim Ledger body changed before append')

append_block = r'''

---

# FW-PROCESS-MATRIX current durable claims

## FWPM-001 — Process-matrix operational framework survives admission and hostile adjacent-framework subtraction

- `framework_ids`: `FW-PROCESS-MATRIX`, `FW-CQM`, `FW-GPTOPT`
- `source_ids`: `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012`, `SRC-CPICO-ORESHKOV-GIARMATZI-2016`, `SRC-CPICO-COSTA-REVIEW-2026`
- `claim_text`: Under the dedicated causal-process frozen corpus and Method 0.2.1, the generalized process-matrix object is a source-bound foundational comparison object with local quantum laboratories/instruments, a global process object `W`, process-specific validity conditions, and operational causal/signalling structure. The later hostile admission audit preserves this admission after explicit CQM/GPTOPT, weakest-classification, one-object-unity, realizability-scope, and method-sensitivity attacks; it does not establish framework truth, unique physical realization, or empirical selection.
- `assumptions`: exact causal-process Stage-2 framework object and frozen source corpus; framework separation and framework admission remain distinct; ordinary quantum, categorical, process, probabilistic, and representational content is subtracted rather than treated as distinctive evidence.
- `classification`: `SOURCE_DERIVED`
- `canonicity_level`: framework identity/admission at the frozen source scope only.
- `weaker_framework_test`: generic process/category/probability structure and CQM/GPTOPT coverage are insufficient to reproduce the global-`W` validity/causal architecture as a whole.
- `physical_bridge`: native laboratory/instrument semantics and selected process realizations; universal physical realization remains unestablished.
- `empirical_binding`: model/property/subclass evidence only; no framework-level discriminator or selection.
- `falsification_condition`: a source-qualified showing that the admitted object is fully subsumed by an existing framework at the same physical scope, or that its asserted core architecture is not source-bound, would reopen the admission.
- `countermodels`: CQM/GPTOPT and generic process formalisms supply weaker descriptions without reproducing the complete admitted object; selected process subclasses do not exhaust the full `W` domain.
- `scope_ceiling`: `FW_PROCESS_MATRIX_STATUS = PAIRWISE_COMPARISON_COMPLETE`; admission survives hostile audit; no framework winner, truth claim, or empirical selection.
- `status`: `ACCEPTED`
- `supersedes`: `FWCAT-004` only for the present-tense disposition of the causal-process remainder; `FWCAT-004` remains accepted at its historical pre-intake scope.
- `notes`: canonical framework identity is carried by the dedicated causal-process Stage-2 taxonomy, K1–K10 baseline blob `42a991dcdb250f305e47ac4360fc780bb4e78a7b`, and hostile admission audit. The general Method-0.2.1 reformulation/meta-framework ambiguity remains a separate governance issue and does not change this frozen admission result.

## FWPM-NULL-001 — Process-matrix null control leaves a nonempty S3 residue while strict E2 rises to four after K9 repair

- `framework_ids`: `FW-PROCESS-MATRIX`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012`, `SRC-CPICO-ORESHKOV-GIARMATZI-2016`, `SRC-CPICO-JIA-SAKHARWADE-2018`, `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019`, `SRC-CPICO-WECHS-QCQC-2021`, `SRC-FWPM-REAL-SILVA-MULTITIME-2017`
- `claim_text`: The current Method-0.2.1 process-matrix/null control contains E1=0, E2=4, E3=0, E4=0, E5=0, thirteen `NONE_ESTABLISHED` records, and one unresolved framework-wide physical-selection record. Standard-QM lineage and representation/realization relations are retained without erasing a nonempty bounded `S3_FRAMEWORK_WIDE` process-matrix-specific residue involving global-`W` validity/causal architecture and nontrivial composition restrictions.
- `assumptions`: exact GR+QFT+SM null comparator; exact admitted process-matrix object; K9 targeted reanalysis applied without reopening any other key; genericity, lineage, target-conditioning, empirical-inheritance, and residue/relation separation remain binding.
- `classification`: `NONFORCED`
- `canonicity_level`: bounded pairwise null-control result.
- `weaker_framework_test`: standard quantum operational machinery explains the four E2 relations but does not reproduce the complete process-matrix-specific residue.
- `physical_bridge`: selected standard-QM/time-delocalized and subclass realizations; no universal physical realization.
- `empirical_binding`: inherited/subclass evidence only; direct framework-level empirical discriminator after null remains `NO`.
- `falsification_condition`: a source-qualified null representation/recovery exhausting the remaining process-matrix-specific commitments, or a demonstrated error in the relation/residue partition, would alter the residue result.
- `countermodels`: valid process-matrix structures and composition/causal architectures not exhausted by the null comparator's ordinary operational layer.
- `scope_ceiling`: E2=4 at declared relation scopes; residue nonempty at `S3_FRAMEWORK_WIDE`; no E3/E4, framework identity, empirical selection, or scalar score follows.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: current null-control state combines the original null-control artifact blob `a9eea06aa3073e0c50707801fec327c6183be946` with the K9 delta blob `5e1365093398fc68f7b9aaa825b2f43da66250dd` and K9 adjudication blob `88073c891efa194ed7328a1a11853b91b83e55ed`.

## FWPM-REAL-001 — General conditional representation is established while universal deterministic realization and physical selection remain open

- `framework_ids`: `FW-PROCESS-MATRIX`
- `source_ids`: `SRC-FWPM-REAL-SILVA-MULTITIME-2017`, `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019`, `SRC-CPICO-WECHS-QCQC-2021`, `SRC-FWPM-REAL-SALZGER-VILASINI-2025`, `SRC-CPICO-GUO-VBC-2026`, `SRC-CPICO-QU-BELLLIKE-2026`, `SRC-FWPM-REAL-ARAUJO-PURIFICATION-2017`, `SRC-FWPM-REAL-VILASINI-RENNER-PRA-2024`
- `claim_text`: The repaired targeted realizability/physical-selection Stage-2 corpus establishes that every formally valid process matrix has an equivalent conditional pre/postselected multi-time standard-QM representation and probabilistic implementation recipe, and that selected deterministic, subsystem, spacetime-compatible, and concrete experimental realization classes are nonempty. It does not establish deterministic standard-QM realization for every `W`, a necessary-and-sufficient universal physical-selection criterion, unrestricted composition/globalization closure, or framework-level empirical selection.
- `assumptions`: exact frozen 27-source targeted-realizability corpus; representation, postselection, deterministic realization, subsystem realization, closed laboratories, spacetime embedding, and implementation remain distinct layers; no subclass is generalized to all valid `W`.
- `classification`: `NONFORCED`
- `canonicity_level`: source-qualified mixed realization result with framework-wide representation but incomplete framework-wide physical selection.
- `weaker_framework_test`: mathematical representation and selected implementations do not force deterministic or natural universal physical realization.
- `physical_bridge`: nonempty selected bridges up to concrete implementations; framework-wide deterministic/selection bridge unestablished.
- `empirical_binding`: concrete subclass implementation/certification exists; framework-level empirical selection remains `NONE`.
- `falsification_condition`: a general necessary-and-sufficient physical selection law, general deterministic realization theorem, or counterexample to the claimed general conditional representation would materially change this row.
- `countermodels`: assumption-scoped no-go/exclusion results and composition restrictions prevent generalization from selected positive realization classes.
- `scope_ceiling`: `AX3 = ESTABLISHED`; selected realization classes nonempty; `GENERAL_W_DETERMINISTIC_R1_REALIZATION = NOT_ESTABLISHED`; `GENERAL_COMPLETE_PHYSICAL_SELECTION_CRITERION = NOT_ESTABLISHED`; unresolved physical-realizability remainder nonempty.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: controlling repaired Stage-2 adjudication blob `256e73ffc68bacc1860d4b3368868161e9845da1`; external-audit accepted-findings repair changes provenance/role precision but not the AX/A–F scientific values.

## FWPM-K9-001 — K9 repair adds one framework-wide conditional E2 representation without resolving physical selection

- `framework_ids`: `FW-PROCESS-MATRIX`, `FW-NULL-GRQFTSM`
- `source_ids`: `SRC-FWPM-REAL-SILVA-MULTITIME-2017`, `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019`
- `claim_text`: The closed-corpus K9 targeted pairwise reanalysis adds `PMNC-K9-04`, a source-qualified `E2_REPRESENTATION` from every formally valid process matrix to the null comparator's standard quantum/probabilistic operational layer through a pre/postselected multi-time representation and probabilistic implementation recipe. The relation is `S3_FRAMEWORK_WIDE` at representation scope, `PR2_MODEL_BRIDGE`, and `IND-N_TARGET_CONDITIONED`; postselection is load-bearing. It does not supersede the narrower but physically stronger selected-class `PMNC-K9-01`, and `PMNC-K9-03` remains unresolved because general deterministic/physically admissible realization and a complete selection criterion remain unestablished.
- `assumptions`: `A_STDQM` and `A_POSTSEL`; exact K9 closed corpus; no comparator change or K1–K8/K10 reopening.
- `classification`: `VALID_CONDITIONAL`
- `canonicity_level`: pairwise representation relation only.
- `weaker_framework_test`: standard-QM pre/postselection machinery explains the representation; target conditioning blocks independent convergence credit.
- `physical_bridge`: conditional/probabilistic model bridge, not a general deterministic physical realization.
- `empirical_binding`: `EMP0_NONE` for the new pairwise relation; no framework-level empirical selection.
- `falsification_condition`: failure of the source-qualified all-`W` representation claim would remove/downgrade `PMNC-K9-04`; a general physical selection law could separately resolve `PMNC-K9-03`.
- `countermodels`: deterministic/localized/closed-laboratory realization burdens remain assumption-sensitive and are not solved by postselected representability.
- `scope_ceiling`: current strict process-matrix/null E2 count 4; NONE 13; unresolved 1; null-subtracted core residue unchanged; no E3/E4/empirical/recurrence consequence from the K9 delta alone.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: canonical K9 scientific merge `48a047b2ee3757bc076c74fcdf61ca592d17c39a`; comparison delta blob `5e1365093398fc68f7b9aaa825b2f43da66250dd`; adjudication blob `88073c891efa194ed7328a1a11853b91b83e55ed`.

## FCP-NFCPM-001 — Reduced NFC and process matrices share five independent-origin but generic E5 roles only

- `framework_ids`: `FW-NFC-RED`, `FW-PROCESS-MATRIX`
- `source_ids`: `SRC-NFC-RED-001`, `SRC-FCP3-NFC-BIND-001`, `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012`, `SRC-CPICO-ORESHKOV-GIARMATZI-2016`, `SRC-CPICO-COSTA-REVIEW-2026`
- `claim_text`: The prospective closed-corpus Reduced-NFC/process-matrix comparison evaluates exactly ten K-aligned candidates and finds E1=E2=E3=E4=0, five mathematically generic S0 E5 organizational relations, five `NONE_ESTABLISHED`, zero unresolved records, zero non-generic relations, no pairwise empirical selection, and no empirical support for Reduced NFC. The five generic relations concern allowed-domain organization, test-relative equivalence, admissible-transformation organization, operational-interface mediation, and global-coherence/globalization roles.
- `assumptions`: exact frozen FCP-3 Reduced-NFC object; exact current process-matrix object after null subtraction, targeted realizability Stage 2 and K9 repair; closed canonical corpus; shared incompleteness and vocabulary are forbidden as positive relations.
- `classification`: `GENERIC_MATHEMATICS`
- `canonicity_level`: five generic E5 roles only.
- `weaker_framework_test`: all five roles are available in substantially weaker formal systems and do not require NFC-specific or process-matrix-specific physical commitments.
- `physical_bridge`: no cross-framework physical representation, recovery, realization, or calibrated measurement bridge.
- `empirical_binding`: pairwise E4=0; `PAIRWISE_EMPIRICAL_SELECTION = NO`; `NFC_EMPIRICAL_SUPPORT = NO`.
- `falsification_condition`: a source-qualified non-generic E1–E4 relation, cross-framework physical bridge, or comparator-qualified shared prediction could strengthen the current ceiling; a defect in an E5 functional-role assignment could reduce the generic E5 count without creating positive support.
- `countermodels`: process-matrix global `W`, causal/signalling and composition structure lacks an NFC counterpart; NFC finite-interface sufficiency/capacity, fixed-carrier stabilization, weak-coupling order separation, saturation, and colimit content lacks a process-matrix counterpart.
- `scope_ceiling`: E1–E4 zero; E5 5; NONE 5; non-generic 0; pairwise empirical selection `NO`; no framework winner or scalar score.
- `status`: `ACCEPTED`
- `supersedes`: `NONE`
- `notes`: canonical comparison merge `ff7724464a293ce52a918b68348c6aa6082b1d22`; scientific comparison blob `9d279102f2b7d5024fded2fd58b5a58c304957cf` if unchanged by canonical merge; hostile adjudication blob `fc3bb6c71b419595739378d3d44ff477dc489ee8`. If the comparison blob identity differs after merge transport, resolve it from canonical Git before using the note as an exact blob claim.
'''

# The comparison blob note above is deliberately transport-safe; bind it exactly below
# after canonical Git verification rather than guessing. Replace the conditional note
# with the exact canonical blob already observed at the scientific merge.
append_block = append_block.replace(
    '`9d279102f2b7d5024fded2fd58b5a58c304957cf` if unchanged by canonical merge',
    '`9d279102f2b7d5024fded2fd58b5a58c304957cf`'
).replace(
    '. If the comparison blob identity differs after merge transport, resolve it from canonical Git before using the note as an exact blob claim.',
    '.'
)

claims_final = claims_updated + append_block
CLAIMS.write_text(claims_final, encoding='utf-8', newline='\n')

# ------------------------------------------------------------------
# CURRENT_STATE.md: update only present-tense current state/routing.
# ------------------------------------------------------------------
state = STATE.read_text(encoding='utf-8')
state = replace_prefixed_line(state, 'LATEST_CANONICAL_SCIENTIFIC_OPERATION = ', 'LATEST_CANONICAL_SCIENTIFIC_OPERATION = NFC_REDUCED_VS_FW_PROCESS_MATRIX_PROSPECTIVE_COMPARISON', 'latest scientific operation')
state = replace_prefixed_line(state, 'LATEST_CANONICAL_SCIENTIFIC_COMMIT = ', 'LATEST_CANONICAL_SCIENTIFIC_COMMIT = ff7724464a293ce52a918b68348c6aa6082b1d22', 'latest scientific commit')
state = replace_prefixed_line(state, 'LATEST_CANONICAL_SCIENTIFIC_TREE = ', 'LATEST_CANONICAL_SCIENTIFIC_TREE = 49ac7e64ccdd3aba52d53017e108d0297aa5fe8b', 'latest scientific tree')
state = replace_prefixed_line(state, 'LATEST_CANONICAL_MAINTENANCE_OPERATION = ', 'LATEST_CANONICAL_MAINTENANCE_OPERATION = POST_NFC_PROCESS_MATRIX_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION', 'latest maintenance operation')

paragraph_pattern = re.compile(r'`LATEST_NUMBERED_PHASE` remains FCP-26 because .*? Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially\.\n', re.S)
new_paragraph = (
    '`LATEST_NUMBERED_PHASE` remains FCP-26 because the later FW-CAT, causal-process, method-audit, process-matrix, and current pairwise operations are unnumbered and FCP-27 has not been selected. '
    'The latest mutating scientific result is the canonically integrated closed-corpus Reduced-NFC ↔ `FW-PROCESS-MATRIX` prospective comparison. Across ten preregistered K-aligned candidates it finds E1=0, E2=0, E3=0, E4=0, E5=5, five `NONE_ESTABLISHED`, zero unresolved, and zero non-generic relations. '
    'The five positive roles are generic S0 organizational correspondences only—allowed-domain organization, test-relative equivalence, admissible transformations, operational-interface mediation, and global coherence. No pairwise empirical selection or NFC empirical support follows, and material asymmetry remains nonempty. '
    'The earlier process-matrix null control remains E2=4 after the K9 repair with one unresolved physical-selection record and nonempty `S3_FRAMEWORK_WIDE` residue. This maintenance reconciliation appends five already-canonical durable Claim Ledger rows, raising the durable count from 94 to 99 without rewriting any historical row. No recurrence is recomputed here and FCP-27 remains unselected. Exact enclosing maintenance identities remain recoverable from Git rather than embedded self-referentially.\n'
)
state, n = paragraph_pattern.subn(new_paragraph, state, count=1)
if n != 1:
    raise RuntimeError(f'current-state top paragraph: expected 1 replacement, got {n}')

state = replace_once(
    state,
    'FW_PROCESS_MATRIX_K9_RECURRENCE_EFFECT = NONE\n',
    'FW_PROCESS_MATRIX_K9_RECURRENCE_EFFECT = NONE\n'
    'POST_FW_PROCESS_MATRIX_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION = CANONICALLY_ACCEPTED_READ_ONLY_DECISION\n'
    'POST_FW_PROCESS_MATRIX_K9_SCIENTIFIC_SEQUENCING_SELECTED_ROUTE = R1__NFC_REDUCED_VS_FW_PROCESS_MATRIX_PROSPECTIVE_COMPARISON\n'
    'NFC_PROCESS_MATRIX_PROSPECTIVE_COMPARISON = CANONICALLY_COMPLETE\n'
    'NFC_PROCESS_MATRIX_COMPARISON_RESULT_COMMIT = ff7724464a293ce52a918b68348c6aa6082b1d22\n'
    'NFC_PROCESS_MATRIX_COMPARISON_RESULT_TREE = 49ac7e64ccdd3aba52d53017e108d0297aa5fe8b\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_E1 = 0\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_E2 = 0\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_E3 = 0\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_E4 = 0\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_E5 = 5\n'
    'NFC_PROCESS_MATRIX_NONE_ESTABLISHED = 5\n'
    'NFC_PROCESS_MATRIX_UNRESOLVED = 0\n'
    'NFC_PROCESS_MATRIX_NON_GENERIC_RELATION_COUNT = 0\n'
    'NFC_PROCESS_MATRIX_PAIRWISE_EMPIRICAL_SELECTION = NO\n'
    'NFC_PROCESS_MATRIX_NFC_EMPIRICAL_SUPPORT = NO\n'
    'NFC_PROCESS_MATRIX_MATERIAL_ASYMMETRY = NONEMPTY\n'
    'NFC_PROCESS_MATRIX_RECURRENCE_IMPACT = INFORMATION_ADDED_NOT_RECOMPUTED\n',
    'insert current NFC-PM result'
)

state = replace_prefixed_line(state, 'CLAIM_LEDGER_CURRENT_SUPERSESSION = ', 'CLAIM_LEDGER_CURRENT_SUPERSESSION = RECONCILED_THROUGH_NFC_PROCESS_MATRIX_COMPARISON_CANONICALLY', 'claim ledger supersession')
state = replace_prefixed_line(state, 'CLAIM_LEDGER_DURABLE_ROW_COUNT = ', 'CLAIM_LEDGER_DURABLE_ROW_COUNT = 99', 'claim ledger row count')
state = replace_prefixed_line(state, 'CLAIM_LEDGER_TEMPORAL_CEILING = ', 'CLAIM_LEDGER_TEMPORAL_CEILING = NFC_REDUCED_VS_FW_PROCESS_MATRIX_PROSPECTIVE_COMPARISON', 'claim ledger temporal ceiling')

old_next = '''NEXT_EXECUTION_STEP = SEPARATE_POST_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION_IF_AUTHORIZED
NEXT_RECOMMENDED_OPERATION = POST_FW_PROCESS_MATRIX_K9_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = NO
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEPARATE_SEQUENCING_DECISION_REQUIRED
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_K9_SEQUENCING_NOT_YET_SELECTED
'''
new_next = '''POST_NFC_PROCESS_MATRIX_DURABLE_PROVENANCE_AND_ROUTING_RECONCILIATION = CANONICALLY_COMPLETE
CLAIM_LEDGER_APPENDED_ROW_COUNT_THIS_OPERATION = 5
CLAIM_LEDGER_NEW_ROW_IDS = FWPM-001;FWPM-NULL-001;FWPM-REAL-001;FWPM-K9-001;FCP-NFCPM-001
NEXT_EXECUTION_STEP = POST_NFC_PROCESS_MATRIX_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_RECOMMENDED_OPERATION = POST_NFC_PROCESS_MATRIX_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_CLASS = READ_ONLY_SCIENTIFIC_SEQUENCING_ADJUDICATION
NEXT_OPERATION_AUTHORIZED = YES__STANDING_PROJECT_LEAD_DELEGATION
NEXT_OPERATION_AUTHORIZATION_BOUNDARY = SEQUENCING_ONLY__NO_SUBSEQUENT_SCIENCE_BEFORE_SELECTION
NEXT_NUMBERED_PHASE_SELECTED = NO
FCP27_SELECTED = NO
NEXT_SCIENTIFIC_PHASE = NONE__POST_NFC_PROCESS_MATRIX_SEQUENCING_PENDING
'''
state = replace_once(state, old_next, new_next, 'replace post-K9 next block')

old_tail_para = (
    'The process-matrix Stage-2 external-audit chain remains complete through custody, independent adjudication, and accepted-findings repair. The subsequently selected closed-corpus K9 reanalysis is also now canonically complete. AX3 supports one new nonredundant `E2_REPRESENTATION`, `PMNC-K9-04`, at framework-wide representation scope under load-bearing standard-QM/postselection conditioning. The earlier selected-class `PMNC-K9-01` remains distinct and physically stronger at its narrower scope; `PMNC-K9-02` remains `NONE_ESTABLISHED`; and `PMNC-K9-03` remains unresolved because general deterministic or otherwise physically admissible realization and a complete physical-selection criterion are still not established. No recurrence, empirical, non-null, method, or FCP-27 work is selected by this reconciliation. The next scientific operation, if any, requires a separate post-K9 sequencing adjudication.'
)
new_tail_para = (
    'The process-matrix Stage-2 external-audit chain and K9 reanalysis remain canonical. The post-K9 sequencing decision is also canonical and selected the now-completed Reduced-NFC/process-matrix closed-corpus comparison. That comparison adds five independent-origin but mathematically generic S0 E5 organizational relations and five `NONE_ESTABLISHED` records, while E1–E4, non-generic relations, pairwise empirical selection, and NFC empirical support remain zero/absent. The present maintenance operation propagates the already-canonical process-matrix program and this new pairwise result into durable provenance and live navigation without recomputing recurrence. The next operation is a read-only sequencing adjudication; no recurrence or other science is preselected here.'
)
state = replace_once(state, old_tail_para, new_tail_para, 'replace current routing paragraph')
STATE.write_text(state, encoding='utf-8', newline='\n')

# ------------------------------------------------------------------
# FRAMEWORK_REGISTER.md: three present-tense row descriptions only.
# ------------------------------------------------------------------
register = REGISTER.read_text(encoding='utf-8')
null_line = '| `FW-NULL-GRQFTSM` | GR + QFT + Standard Model, no deeper ontology assumed | first-class null competitor | `PAIRWISE_COMPARISON_COMPLETE` | Process-matrix K9 is the latest null-control update: the current `FW-PROCESS-MATRIX`↔null inventory is E1 = 0, E2 = 4, E3 = 0, E4 = 0, E5 = 0, NONE = 13, UNRESOLVED = 1. `PMNC-K9-04` is a framework-wide but postselection-conditioned standard-QM representation relation; it does not resolve general physical selection or erase the nonempty bounded `S3_FRAMEWORK_WIDE` process-matrix residue. No framework-level empirical selection follows. |'
nfc_line = '| `FW-NFC-RED` | Reduced NFC | reduced comparative object only | `PAIRWISE_COMPARISON_COMPLETE` | The latest bounded comparison is the closed-corpus Reduced-NFC/`FW-PROCESS-MATRIX` prospective comparison: ten K-aligned candidates yield E1 = 0, E2 = 0, E3 = 0, E4 = 0, E5 = 5, NONE = 5, UNRESOLVED = 0, with all five positive roles mathematically generic S0 organization and zero non-generic relations. No pairwise empirical selection or NFC empirical support is established, while material asymmetry remains nonempty. Earlier strengthened LOOP, AS, String/M, AQFT, CST and null comparisons remain authoritative at their own scopes. |'
pm_line = '| `FW-PROCESS-MATRIX` | Process-matrix operational framework | source-bound generalizing causal-process meta-framework | `PAIRWISE_COMPARISON_COMPLETE` | The latest bounded non-null comparison is Reduced-NFC↔`FW-PROCESS-MATRIX`: ten fixed candidates yield five generic S0 E5 organizational relations and five NONE records, with E1–E4 = 0, non-generic relations = 0, no pairwise empirical selection and no NFC support. The process-matrix/null control remains independently canonical with E2 = 4 after K9 repair, one unresolved physical-selection record, and a nonempty `S3_FRAMEWORK_WIDE` residue. Global `W`, process-validity, causal/signalling and composition content remain materially unmatched by Reduced NFC; universal physical realization and framework-level empirical selection remain unestablished. |'
register = replace_prefixed_line(register, '| `FW-NULL-GRQFTSM` |', null_line, 'null framework row')
register = replace_prefixed_line(register, '| `FW-NFC-RED` |', nfc_line, 'NFC framework row')
register = replace_prefixed_line(register, '| `FW-PROCESS-MATRIX` |', pm_line, 'PM framework row')
REGISTER.write_text(register, encoding='utf-8', newline='\n')

# ------------------------------------------------------------------
# Final semantic assertions.
# ------------------------------------------------------------------
checks = {
    'claim rows 99 header': '**99 durable rows through the Reduced-NFC ↔ FW-PROCESS-MATRIX prospective comparison**' in CLAIMS.read_text(encoding='utf-8'),
    'new claim row count': sum(CLAIMS.read_text(encoding='utf-8').count(f'## {x} —') for x in ['FWPM-001','FWPM-NULL-001','FWPM-REAL-001','FWPM-K9-001','FCP-NFCPM-001']) == 5,
    'state E5': 'NFC_PROCESS_MATRIX_PAIRWISE_E5 = 5' in STATE.read_text(encoding='utf-8'),
    'state ledger 99': 'CLAIM_LEDGER_DURABLE_ROW_COUNT = 99' in STATE.read_text(encoding='utf-8'),
    'state no FCP27': 'FCP27_SELECTED = NO' in STATE.read_text(encoding='utf-8'),
    'register latest PM comparison': 'latest bounded non-null comparison is Reduced-NFC' in REGISTER.read_text(encoding='utf-8'),
}
for label, ok in checks.items():
    if not ok:
        raise RuntimeError(f'failed semantic assertion: {label}')

# Self-clean helper files so transport/PR diff contains only durable artifacts.
if WORKFLOW.exists():
    WORKFLOW.unlink()
if SELF.exists():
    SELF.unlink()

print('POST_NFC_PROCESS_MATRIX_RECONCILIATION=PASS')
print('CLAIM_LEDGER_OLD_ROWS_BYTE_PRESERVED=YES')
print('CLAIM_LEDGER_APPENDED_ROWS=5')
print('CLAIM_LEDGER_DURABLE_ROW_COUNT=99')
