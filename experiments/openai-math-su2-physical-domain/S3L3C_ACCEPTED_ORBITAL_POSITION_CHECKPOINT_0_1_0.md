# BFSS SU(2) S3L3C — accepted original-core orbital-position covariance

**Status: S3L3C QUALIFIED. S3L3D derivative transformation and full supercharge covariance OPEN.**

**Qualified exact proof commit:** `7264c3fcc51f7c8249e8f58722d987e27f53697f`  
**Pinned gate:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38122588331 — BFSS S3L Source Rotation Coefficients **#19 GREEN**  
**Pin:** OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact accepted result

`FCP.BFSSSU2PhysicalDomainS3L3C.sourcePosition_comp_comm` proves that actual source `position` endomorphisms commute pointwise on `SmoothCore 2`.

`FCP.BFSSSU2PhysicalDomainS3L3C.pairedSourceOrbital_comm_position` proves for distinct axes i,j, all k, and SU(2) color B:
```text
(L_ij.comp (position k B)) - ((position k B).comp L_ij)
  = if k = j then position i B
    else if k = i then -(position j B)
    else 0
```
where `L_ij` is precisely the earlier kernel-qualified source operator
```text
sum_A (position i A ∘ coordinateDerivative j A
     - position j A ∘ coordinateDerivative i A)
```
The proof uses the fully qualified S3L3B `[coordinateDerivative, position]` operator equality, the verified commuting source position multipliers, the Leibniz rule for operator composition, and the exact color-index sum. No new physical assumptions, replacement Hilbert spaces, surrogate operator definitions or weaker pointwise target were used.

`#print axioms` checks in #19 passed with only `propext`, `Classical.choice`, `Quot.sound` and no `sorryAx`. S3L3B and immutable upstream source chain also requalified in the same run.

## Red gate #18: negative knowledge

Gate https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38122326399 compiled both target theorem bodies except the transverse case closing step: `hkj.symm` / `hki.symm` were used on `Ne` propositions, which require `Ne.symm`. This was an explicit Lean syntax/interface error; exact same theorem statement with `Ne.symm` passed gate #19. Do not revisit this merely to reprove the same source identity.

## Next work: S3L3D

Prove `[coordinateDerivative i A, coordinateDerivative j B]=0` on the original test core from equality of mixed second `fderiv` derivatives; Mathlib pinned `ContDiffAt.isSymmSndFDerivAt` and the genuine `TestFunction.contDiff` may help, but no hidden commutation hypothesis is admissible. Then combine this with S3L3B and the source orbital definition to prove
```text
[L_ij, coordinateDerivative k B]
 = (if k = j then coordinateDerivative i B else 0)
   - (if k = i then coordinateDerivative j B else 0)
```
as a source operator identity; check the sign from direct commutator calculus. In this convention the derivative rotates with the opposite transpose to the position vector; the exact conditional expression should be recomputed directly before freezing the theorem statement.

Only then assemble the combined original 16-supercharge column (kinetic plus cubic term plus S3E fermionic spin generator). Physical closure and Hamiltonian symmetry, spectral properties and positive eigenvalues are *still unproved*.

## External release status

Owner fork `etblink/math` contains a staged 130-module dependency-closed candidate; its consolidated gate #1 stopped at the missing sparse-checkout `lean/patches/iut-lean4341.patch` before Lean module compilation. Keep bulk publication mechanics parked. FCP draft PRs remain unmerged, canonical main is unchanged. Research attribution: Evan T. Kotler; DOI https://doi.org/10.5281/zenodo.23291242. Do not open upstream PR or merge without explicit owner authorization.
