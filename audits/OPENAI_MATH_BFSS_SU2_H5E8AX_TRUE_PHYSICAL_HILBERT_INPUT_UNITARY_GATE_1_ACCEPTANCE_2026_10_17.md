# BFSS SU(2) H5E8AX — true original gauge-physical Hilbert input parity unitary

**Date:** 2026-10-17 PDT. **Disposition:** `PASS__ACTUAL_SOURCE_PHYSICAL_SU2_INPUT_HILBERT_UNITARY_AND_OPPOSITE_GAMMA_TRANSPORT__SEVEN_AXIOM_CLEAN_ROOTS`.

## Exact strict qualification

- [H5E8AX Original Physical Hilbert Input Parity #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39062342663) **SUCCESS**, strict `exact-physical-hilbert-input-parity` job **117482750037**, source/workflow commit **`170eb9cce4db68a3fae78fad108fb474cc173d41`**.
- Actual original source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AXOriginalPhysicalHilbertParityUnitaryProbe.lean`, immutable Git blob **`54c236414f053d70b12036b40c8473160ca16a1a`**.
- Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**, original G1A/FullL2/Fock cache/source checks passed. The CI compiled all **19** staged parity/operator source modules through accepted AV plus new AX, produced AX OLEAN, and audited exactly seven root declarations. Each root depended only on `propext`, `Classical.choice`, and `Quot.sound`, no `sorryAx` or compiler `error:`. Marker `L6H5E8AX_TRUE_PHYSICAL_HILBERT_INPUT_UNITARY_SEVEN_ROOTS_CLEAN_PASS`.
- Exact evidence artifact **12111898282**, digest `sha256:829f316820546e2879f18620214b1afe09c54076db77313cffd86adacb2d0a21`, short retention October 31, 2026. Source and Actions run remain in GitHub.

## Seven exact source-theorem roots

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AX`:

1. `originalPhysicalSpace_parity_image_eq`: the literal **source gauge-invariant physical Hilbert submodule** `G.physicalSpace` is mapped **onto itself** by the previously qualified original source FullL2 parity unitary, not merely into itself. Reverse inclusion is proved by the exact involution.
2. `originalPhysicalSpaceParityUnitary`: constructs a **true complex-linear isometry equivalence** `G.physicalSpace ≃ₗᵢ[ℂ] G.physicalSpace` from pinned Mathlib `LinearIsometryEquiv.submoduleMap`, the actual source AL gauge preservation theorem, and `LinearIsometryEquiv.ofEq`. Does not assume a physical unitary or change the Hilbert inner product.
3. `originalPhysicalSpaceParityUnitary_apply`: the underlying original `FullL2 N` state is exactly spatial parity of the input state.
4. `originalPhysicalSpaceParityUnitary_twice`: true involution on the actual gauge-invariant physical Hilbert space.
5. `originalPhysicalSpaceParityUnitary_inner`: the **physical** Hilbert inner product is preserved.
6. `originalOppositeGammaPhysicalParityUnitary`: a true complex-linear Hilbert unitary `G.physicalSpace ≃ₗᵢ[ℂ] (originalOppositeGammaGaugeData M G).physicalSpace`, using the accepted AN theorem that the real gauge-physical subspace is unchanged by gamma orientation reversal (and the actual source reconstructed opposite-gamma GaugeData, not an invented model).
7. `originalOppositeGammaPhysicalParityUnitary_apply`: this **two-model physical-input unitary** is literally the original source FullL2 parity on underlying wavefunctions.

**Scientific boundary:** AX proves true physical-input Hilbert unitary of the exact original source gauge-fixed representation. The independently accepted [AW #1 polarized charge form parity](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39062003275) proves the original minimal closed charge operator domain's exact `(1/16)inner(Tu,Tv)` invariance in the genuine Hilbert-output direct sum. **These are two distinct accepted results, not yet an operator-theoretically qualified conjugation of the source normalized self-adjoint `(1/16)T†T` Hamiltonians on their natural domains.**

## CI governance and scientific next steps

- After passing #1, the AX workflow was changed to **manual-only strict requalification** by [commit `e85d6309d5c8c4821f01bd7a090fa32c16b75ebd`](https://github.com/etblink/Foundational-Convergence-Program/commit/e85d6309d5c8c4821f01bd7a090fa32c16b75ebd) to stop expensive repeat CI when cumulative pull-request path matching sees existing source changes. Its file hash, original source pins, and exact seven-root axiom checks were retained. No pending run is relabeled.
- NEXT: construct the genuine original minimal closed charge graph **rebased onto `G.physicalSpace × PiLp 2`**, not the unrestricted original input `FullL2`, and verify its exact natural operator domain and closure. Establish **density of that domain in physical Hilbert space** separately (it is not implied just by closure or the existence of the new physical unitary), then use proper Hilbert adjoints to transport the associated `(1/16)T†T` normalized self-adjoint operator with its entire natural domain.
- The historical D2B12/D2B17–D2B28 source graph alias and closed operator statements were accepted under their own strict Gate #93 but the compiled Gate #93 cache is not accessible from the S3L PR. H5E8AR remains unqualified/manual fail closed. No conflation of old source alias and current AU original minimal source operator without a pinned jointly checked identification.
- Independently specified 2026 manuscript Cl(48)/Spin(48) Clifford/gauge realization and global Spin(9) high-isotype positive-eigenvalue result remain OPEN as separate research. No BFSS global mass gap or manuscript positive-spectrum theorem established by AX.

**Governance:** all work on `research/openai-math-su2-s3l-combined-rotation`, draft PR #25 unmerged; no edits to `main`, upstream BFSS source, Mathlib pins, original source gamma signs, SU2 gauge action or previously accepted Lean modules.
