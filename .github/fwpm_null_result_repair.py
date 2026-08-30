from pathlib import Path

p = Path('comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md')
s = p.read_text(encoding='utf-8')

repls = [
('PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 5\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nREALIZABILITY_OPEN_INCIDENCE = 5',
 'PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 3\nPROCESS_MATRIX_SPECIFIC_STRUCTURAL_LIMITATION_INCIDENCE = 1\nREALIZABILITY_OPEN_INCIDENCE = 5'),
('| `PMNC-K8-02` | K8 | `NONE_ESTABLISHED` | CR-CB; qualified CR-FC | nontrivial failure of arbitrary process tensor-product closure is an object-specific globalization/composition restriction | core additional commitment |',
 '| `PMNC-K8-02` | K8 | `NONE_ESTABLISHED` | CR-CB; qualified CR-FC | nontrivial failure of arbitrary process tensor-product closure is an object-specific globalization/composition restriction | core structural limitation |'),
('CANDIDATE_SOURCE_IDS = FROZEN_CORPUS_ABSENCE_RECORD_AS_SYNTHESIZED_IN_CAUSAL_PROCESS_STAGE2_AND_K1_K10_BASELINE',
 'CANDIDATE_SOURCE_IDS = NONE__CORPUS_LEVEL_ABSENCE_FINDING\nCORPUS_SCOPE_AUTHORITIES = frameworks/causal_process/CAUSAL_PROCESS_ICO_SOURCE_INTAKE_0_1_0.md;frameworks/causal_process/FW_PROCESS_MATRIX_K1_K10_BASELINE_0_1_0.md'),
('GENERICITY_PROVENANCE_TAGS = PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT;REALIZABILITY_OPEN\nLINEAGE_STATUS = DISTINCT_PROCESS_MATRIX_COMPOSITION_CONSTRAINT',
 'GENERICITY_PROVENANCE_TAGS = PROCESS_MATRIX_SPECIFIC_STRUCTURAL_LIMITATION;REALIZABILITY_OPEN\nLINEAGE_STATUS = DISTINCT_PROCESS_MATRIX_COMPOSITION_CONSTRAINT'),
('RESIDUE_CONTRIBUTION = YES__CORE_ADDITIONAL_COMMITMENT\n```\n\nThe S3 ceiling refers only to the framework-wide **negative** conclusion',
 'RESIDUE_CONTRIBUTION = YES__CORE_STRUCTURAL_LIMITATION\n```\n\nThe S3 ceiling refers only to the framework-wide **negative** conclusion'),
('NULL_SOURCE_IDS = FCP1_NULL_COMPETITOR_BASELINE__QUANTUM_COMPONENT',
 'NULL_SOURCE_IDS = FCP1_NULL_COMPETITOR_BASELINE'),
('CANDIDATE_SOURCE_IDS = SRC-CPICO-COSTA-REVIEW-2026;FW_PROCESS_MATRIX_K1_K10_BASELINE\nNULL_PROPOSITION = The null retains extensive calibrated empirical success in its tested GR/QFT/SM domains.',
 'CANDIDATE_SOURCE_IDS = SRC-CPICO-COSTA-REVIEW-2026;SRC-FW-CAT-STAGE1-RUBINO-2017;SRC-CPICO-PURVES-SHORT-2021;SRC-CPICO-VANDERLUGT-DI-2023;SRC-CPICO-GUO-VBC-2026;SRC-CPICO-QU-BELLLIKE-2026\nCORPUS_SCOPE_AUTHORITY = frameworks/causal_process/FW_PROCESS_MATRIX_K1_K10_BASELINE_0_1_0.md\nNULL_PROPOSITION = The null retains extensive calibrated empirical success in its tested GR/QFT/SM domains.'),
('Five claim records retain process-matrix-specific additional commitments after null, genericity, standard-QM-lineage, target-conditioning and inherited-empirical subtraction:\n\n```text\nPMNC-K1-01 = generalized global W carrier/domain\nPMNC-K3-01 = process-matrix-typed transformation restrictions beyond generic supermap machinery__SECTOR_OR_EXTENSION_SCOPE\nPMNC-K6-01 = generalized operational causal/signalling/separability architecture\nPMNC-K8-01 = global W validity/consistency architecture against arbitrary allowed local interventions\nPMNC-K8-02 = nontrivial restriction on arbitrary process tensor-product closure\n```\n\nFour of these define the core/framework-level residue. `PMNC-K3-01` is retained as a sector/extension-level additional commitment only.\n\n```text\nPROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 5\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nNULL_SUBTRACTED_RESIDUE = NONEMPTY',
 'Four claim records retain process-matrix-specific additional commitments after null, genericity, standard-QM-lineage, target-conditioning and inherited-empirical subtraction:\n\n```text\nPMNC-K1-01 = generalized global W carrier/domain\nPMNC-K3-01 = process-matrix-typed transformation restrictions beyond generic supermap machinery__SECTOR_OR_EXTENSION_SCOPE\nPMNC-K6-01 = generalized operational causal/signalling/separability architecture\nPMNC-K8-01 = global W validity/consistency architecture against arbitrary allowed local interventions\n```\n\nOne further claim records a process-matrix-specific structural limitation rather than an assumption or commitment:\n\n```text\nPMNC-K8-02 = nontrivial restriction on arbitrary process tensor-product closure\n```\n\nThree of the four additional commitments define core/framework-level residue; `PMNC-K3-01` is sector/extension level. `PMNC-K8-02` independently contributes a core S3 structural limitation to the residue.\n\n```text\nPROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 3\nPROCESS_MATRIX_SPECIFIC_STRUCTURAL_LIMITATION_INCIDENCE = 1\nNULL_SUBTRACTED_RESIDUE = NONEMPTY'),
('PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 5\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nREALIZABILITY_OPEN_INCIDENCE = 5\n```\n\nDefinitions for this result:',
 'PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4\nCORE_PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 3\nPROCESS_MATRIX_SPECIFIC_STRUCTURAL_LIMITATION_INCIDENCE = 1\nREALIZABILITY_OPEN_INCIDENCE = 5\n```\n\nDefinitions for this result:'),
("- `REALIZABILITY_OPEN_INCIDENCE = 5` counts `PMNC-K1-01`, `PMNC-K6-01`, `PMNC-K8-01`, `PMNC-K8-02`, and `PMNC-K9-03`.",
 "- `PROCESS_MATRIX_SPECIFIC_ADDITIONAL_COMMITMENT_INCIDENCE = 4` counts `PMNC-K1-01`, `PMNC-K3-01`, `PMNC-K6-01`, and `PMNC-K8-01`; three are core S3 commitments and `PMNC-K3-01` is sector/extension level.\n- `PROCESS_MATRIX_SPECIFIC_STRUCTURAL_LIMITATION_INCIDENCE = 1` counts `PMNC-K8-02`, a source-bound counterexample to arbitrary tensor-product closure rather than an assumed commitment.\n- `REALIZABILITY_OPEN_INCIDENCE = 5` counts `PMNC-K1-01`, `PMNC-K6-01`, `PMNC-K8-01`, `PMNC-K8-02`, and `PMNC-K9-03`."),
]

for old, new in repls:
    n = s.count(old)
    if n != 1:
        raise SystemExit(f'REPLACEMENT_COUNT_FAIL count={n} old={old[:100]!r}')
    s = s.replace(old, new, 1)

p.write_text(s, encoding='utf-8', newline='\n')
print('BOUNDED_REPAIR=PASS')
