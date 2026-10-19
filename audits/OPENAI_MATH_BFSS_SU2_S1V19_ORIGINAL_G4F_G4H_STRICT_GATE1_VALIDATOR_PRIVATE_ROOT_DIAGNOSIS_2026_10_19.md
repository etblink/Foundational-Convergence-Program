# BFSS S1V19 — strict original G4F/G4G/G4H gate #1 red: validator private-root false negative

**Date:** October 19, 2026 PDT. **Disposition:** `COMPILER_THREE_SOURCE_MODULES_SUCCEEDED__15_AXIOMS_ALLOWED__VALIDATOR_PRIVATE_NAME_MISMATCH__NO_ACCEPTED_CACHE__FIX_VALIDATOR_NOT_MATHEMATICS`.

## Primary evidence

- [GitHub Actions run #39300590971](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39300590971), job `118224454626`, conclusion **FAILURE** after original source compilation, failing action step “Strictly compile genuine original G4F G4G G4H and verify all 15 theta roots”.
- The original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` source and original G4E cache prerequisite checks ALL **succeeded**, including actual cached `OAI` `.olean` and all 3 original source hash checks.
- **All three unchanged Lean modules compiled** and fresh `.olean` were produced before Python validation. Original G4F `SU2BFSSG4FRealColorAnnihilatorForwardProbe.lean` produced **4** expected `#print axioms`; original G4G `SU2BFSSG4GMajoranaModeCovarianceProbe.lean` produced **6**; original G4H `SU2BFSSG4HExactThetaCovarianceProbe.lean` produced **5**. All 15 declarations' printed axioms were exactly `[propext, Classical.choice, Quot.sound]`, with some lists spanning multiple log lines. No source `error:` and no `sorryAx`.
- Python validator printed `SU2BFSSG4FRealColorAnnihilatorForwardProbe ORIGINAL_G4F_G4H_AXIOM_CLEAN_PASS 4` and then failed on the expected public root `FCP.BFSSSU2GaugeG4G.majorana1_phase`.
- **Exact first causal error**:
  ```
  AssertionError: ('SU2BFSSG4GMajoranaModeCovarianceProbe',
    'FCP.BFSSSU2GaugeG4G.majorana1_phase', {
    ...
    '_private.SU2BFSSG4GMajoranaModeCovarianceProbe.0.FCP.BFSSSU2GaugeG4G.majorana1_phase':
      {'propext', 'Classical.choice', 'Quot.sound'},
    ...
  })
  ```
  The original G4G source explicitly says `private theorem majorana1_phase`, hence Lean elaborates its qualified generated constant with the `_private.<module>.<number>.` prefix. The original source prints `#print axioms majorana1_phase` *inside* its file; the kernel reports the private constant correctly. **Proof compilation did not fail**.
- Due to fail-closed behavior, new G4H cache action **skipped**, so `bfss-s1v19-isolated-g4h-original-v1-adc7f124-lean4341-d13f23b-Linux-X64` does NOT yet have successful write evidence. The run uploaded diagnostic artifact `12210977279`.

## Narrow correction, not a theorem change

Amend ONLY the strict workflow validator: when `stem == SU2BFSSG4GMajoranaModeCovarianceProbe` and `name == majorana1_phase`, require **exactly one** key matching anchored regex
```regex
^_private\.SU2BFSSG4GMajoranaModeCovarianceProbe\.[0-9]+\.FCP\.BFSSSU2GaugeG4G\.majorana1_phase$
```
and require that key to have a subset of the same three trusted axioms. Keep all 15 roots and cardinality checks, original hashes, Lean + Mathlib pins, original accepted G4E cache restore, fresh `.olean`, disallowed axiom/error checks. Do not change source mathematics or silently count any similarly suffixed private declaration.

The workflow file itself is path-triggered solely on the isolated branch, so an exact validator-only update triggers **one** new verification. Inspect full new job/compiler evidence before recording formal acceptance.

## Scientific boundaries

Potential upcoming green would certify exact original fermion Majorana/theta gauge covariance `pairedAlgebraData_fermion_adjoint` and `fermion_adjoint_exact_field` in the original OAI GaugeData signature. That is *not* a manuscript Spin(48) Hilbert representation equivalence, sourceZ z-quarter equality, physical spectral mass-gap proof, or global Spin(48) rotor construction.

**Negative knowledge for successors:** `#print axioms` for `private theorem` produces an elaborated `_private.<module>.<index>.` qualified name, **not** the public namespace. Do not confuse strict audit-name failure with a theorem error or rerun unchanged workflow indefinitely; do not weaken axiom filtering.
