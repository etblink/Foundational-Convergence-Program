# H5E8BF — original gauge-restricted source graph and paired Hamiltonian, Gate #12

**2026-10-17 Pacific / accepted 2026-10-18 03:26 UTC.**
Disposition: `PASS__SOURCE_AY_CORE_GRAPH_EQ_PINNED_DEFORMED_1_0__PAIRED_H_SELFADJOINT_WEAK_FORM__9_AXIOM_CLEAN_ROOTS`.

## Immutable acceptance evidence

- [Original Paired Hamiltonian Source Graph #12](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39092193590), job `117571106320`, source/workflow commit **`9d1a47f4864d892cc8553d7d484a73f9fb5be6ca`**, job **success**.
- Exact H5E8BF source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8BFOriginalSourceGraphAndPairedHamiltonianProbe.lean`, source blob **`2f280ec5f84c03c39d70156e8e3053ffca662b42`**. Compared byte-for-byte to workflow source pin in job.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Recompiled prior source AY/BA–BE kernel-qualified roots, plus exact prior **20 G4K** and **22 original Haar/Gauge physical density** modules, permitted-axiom checks all pass.
- The BF step compiled an actual importable new `.olean`, printed precisely 9 axiom reports in `FCP.BFSSSU2PhysicalDomainL6H5E8BF`, each only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, Lean errors or unknown identifiers.
- Final strict marker **`L6H5E8BF_ORIGINAL_EXACT_SOURCE_GAUGE_GRAPH_PAIRED_H_9_ROOTS_KERNEL_PASS`**, job log 2026-10-18 03:26:50 UTC.

## Qualified results and limits

- The literal original AY invariant-core minimal closed charge graph `originalMinimalClosedGraph M G` is **exactly** `G.deformedModelGraph 1 0`, using independently accepted D1 source identity `M.deformedChargeVector 1 0 = M.chargeVector`. This does **not** assert equality to the unrestricted fullClosedGraph.
- The AY original physical-input/PiLp16-output minimal operator graph equals the exact source-restricted (1,0) graph pulled back by original gauge-invariant physical Hilbert inclusion and canonical 16-output continuous linear equivalence.
- For concrete paired SU2 `pairedAlgebraData` / `pairedGaugeData` with nonzero physical Hilbert space, BF constructs `pairedOriginalPhysicalNormalizedHamiltonian` and proves actual native `IsSelfAdjoint`, unchanged natural `T†T` domain and exact 1/16 weak-form representing-vector characterization.
- The paired physical space nontriviality theorem is about a nonzero SU(2)-invariant L² state; **not** an eigenvector.

## Negative knowledge from #11

[Gate #11](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39090658923) red with first causal unknown identifiers `originalPhysicalHilbertComplete` (BB namespace) and `originalMinimalPhysicalHilbertChargeAdjointSquare` (BC namespace); Lean recovered and introduced `sorryAx` on two purported definitions. The precise unchanged-mathematics repair added only `open FCP.BFSSSU2PhysicalDomainL6H5E8BB` and `open FCP.BFSSSU2PhysicalDomainL6H5E8BC`, preserving all nine target statements. Separate [#11 negative audit](./OPENAI_MATH_BFSS_SU2_H5E8BF_GATE_11_NAMESPACE_RESOLUTION_NEGATIVE_2026_10_17.md). Gate #12 co-compiled and axiom-checked all nine roots, resolving the namespace defect; do not describe #11 as mathematical evidence against any theorem.

## Next strictly bounded target

Rebuild historically accepted exact-source D2B11–17 (7 modules, byte-pin each), then qualify a **full native typed graph/LinearPMap equality** `AY.originalMinimalPhysicalHilbertChargeColumn M G = D2B17.sourcePhysicalHilbertChargeColumn M G` on genuine `G.physicalSpace` and PiLp16 output. Both are in principle rebasings of the same kernel-qualified source restricted graph, but a formal typed equality is **still unproved** until H5E8BG's independent strict gate. Do not silently infer their adjoint/Hamiltonian identity before that bridge is accepted. Independent manuscript Cl(48)/Spin(48), global Spin(9) spectral argument, positive-energy eigenvalues and mass gap all remain OPEN.

**Governance:** draft PR #25 open/unmerged on original S3K base; no changes to main, original source, pinned toolchains or qualified BA–BF proofs.
