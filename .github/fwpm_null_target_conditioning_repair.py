from pathlib import Path

p = Path('comparisons/FW_PROCESS_MATRIX_VS_NULL_GRQFTSM_METHOD_0_2_1_0_1_0.md')
s = p.read_text(encoding='utf-8')

old_line = '\nTARGET_CONDITIONED_INCIDENCE = 2\n'
if s.count(old_line) != 2:
    raise SystemExit(f'TARGET_MACHINE_COUNT_BLOCK_FAIL={s.count(old_line)}')
s = s.replace(old_line, '\nTARGET_CONDITIONED_INCIDENCE = 0\n')

repls = [
('LINEAGE_STATUS = DIRECT_STANDARD_QUANTUM_ANCESTRY\nTARGET_CONDITIONING = YES__LOCAL_QUANTUM_MECHANICS_IS_AN_EXPLICIT_INPUT_PREMISE',
 'LINEAGE_STATUS = DIRECT_STANDARD_QUANTUM_IMPORT_AND_ANCESTRY\nTARGET_CONDITIONING = NO__DIRECT_INPUT_OR_LINEAGE_IS_NOT_TARGET_CONDITIONING'),
('INDEPENDENCE_STATUS = IND-N_LINEAGE\nEMPIRICAL_STATUS = EMP1_INHERITED_SUCCESS\nMODEL_OR_FORMULATION_DEPENDENCE = YES__DECLARED_QUANTUM_SUBDOMAIN',
 'INDEPENDENCE_STATUS = IND-N_DIRECT_IMPORT\nEMPIRICAL_STATUS = EMP1_INHERITED_SUCCESS\nMODEL_OR_FORMULATION_DEPENDENCE = YES__DECLARED_QUANTUM_SUBDOMAIN'),
('TARGET_CONDITIONING = YES__KNOWN_CAUSAL_QUANTUM_SITUATIONS_ARE_EXPLICITLY_RETAINED\nPHYSICAL_REALIZATION_STATUS = PR2_MODEL_BRIDGE',
 'TARGET_CONDITIONING = NO__RETAINED_LINEAGE_SECTOR_IS_NOT_A_TUNED_RECOVERY_TARGET\nPHYSICAL_REALIZATION_STATUS = PR2_MODEL_BRIDGE'),
('- `TARGET_CONDITIONED_INCIDENCE = 2` counts the explicit retention of local quantum mechanics and ordinary causal quantum situations in `PMNC-QM-01` and `PMNC-CAUSAL-01`.',
 '- `TARGET_CONDITIONED_INCIDENCE = 0`: no claim in this control is classified as an explicit reconstruction or tuning toward a compared target. Ordinary quantum input and the retained definite-order sector are instead recorded as direct import/lineage.'),
]
for old, new in repls:
    n=s.count(old)
    if n != 1:
        raise SystemExit(f'REPLACEMENT_FAIL count={n} old={old[:120]!r}')
    s=s.replace(old,new,1)

p.write_text(s, encoding='utf-8', newline='\n')
print('TARGET_CONDITIONING_REPAIR=PASS')
