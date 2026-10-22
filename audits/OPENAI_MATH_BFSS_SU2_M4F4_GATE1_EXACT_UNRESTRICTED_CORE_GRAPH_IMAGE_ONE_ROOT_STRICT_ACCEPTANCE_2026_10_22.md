# FCP BFSS SU(2) — M4F4 Exact Unrestricted Source Core Graph Image Strict Gate #1 ACCEPTANCE

**Acceptance date:** 2026-10-22 PDT. **Disposition:** `M4F4_GATE1_STRICT_PASS__ORIGINAL_FULL_SMOOTH_CORE_GRAPH_EQ_INDEPENDENT_TRANSPORT_IMAGE__ONE_PRINCIPAL_ROOT__293_CUMULATIVE`.

## Independently verified original GitHub Actions evidence

- [M4F4 Gate #1, run #39855230444](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39855230444), job `120091606230`, first attempt, both `completed/success`; immutable triggering branch commit `5005195d0b4e0a7e54786de86f629a6d92a185e0`.
- Source module `experiments/openai-math-su2-physical-domain/FCPIndependentFullCoreGraphImage.lean`, exact Git blob `06e98a1b867f21577b5b74033e411d27ba688985`; workflow `.github/workflows/bfss-m4f4-core-graph-image-gate1.yml`, exact blob `85fbe7e7ab1b15644eb454958b3259ae37c5e8c5`.
- Frozen original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; fail-closed source hashes, candidate hashes, original restoration and qualified compiled dependencies all passed.
- Restored the exact qualified M4F3 parent cache `bfss-fcp-m4f3-core-graph-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` and checked original and independent `.olean` closure.
- Fresh `lake env lean -DwarningAsError=true` compile succeeded under the strict 105-second process cap: **10.17 seconds wall**, **97% CPU**, peak process RSS **7,045,288 KB**, and nonempty `FCPIndependentFullCoreGraphImage.olean`.
- The strict source-declaration + `#print axioms` validator parsed precisely two new declarations: `sourceFullCoreGraph_transport_exists_independent` and `sourceFullCoreGraph_eq_independent_image`, with the only permitted axioms `propext`, `Classical.choice`, `Quot.sound`. Exact root/name counts matched, no `sorryAx` or unexpected compiler warnings/errors. Original job log confirms `M4F4_CORE_GRAPH_IMAGE_GATE1_SOURCE_EXACT_SIXTEEN_STRICT_AXIOMS_PASS`. Individual compiler axiom reports were redirected to the saved artifact log rather than separately printed in the job transcript.
- Qualified new cache saved: `bfss-fcp-m4f4-core-graph-image-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Uploaded original diagnostic `bfss-m4f4-core-graph-image-gate1-39855230444`, artifact ID `12459004686`, ZIP digest `sha256:90d7fcf69367a51ab140b969d30efe8fa360b9d61b5d9d14c8f00f4508eaf8dc`.

## Mathematically established

Define the independent J-free *unrestricted* smooth-core graph as the range of the actual independent `independentCoreToL2.prod independentChargeVector`. The already accepted M4F3 proof identifies every transformed independent graph point as a literal original source `pairedAlgebraData.fullCoreGraph` point.

The supporting `sourceFullCoreGraph_transport_exists_independent` proves the reverse witness. It constructs `f := (independentSmoothLinearEquiv J).symm g` for each original smooth test function `g` and uses the *accepted* M4F2 charge-vector intertwiner, M4C smooth-to-L² transport, and accepted M4D2 two-sided smooth-core equivalence to show the 17-component source graph point is the image of the independently generated point.

The **principal new root**, `sourceFullCoreGraph_eq_independent_image`, proves the **set-theoretic equality** of the actual original source unrestricted graph and the image of the J-free independent unrestricted core graph under genuine simultaneous input-and-sixteen-output fiber transport:
```lean
(pairedAlgebraData.fullCoreGraph : Set (FullL2 2 × (SpinIndex → FullL2 2))) =
  (fun p : Lp E 2 μ × (SpinIndex → Lp E 2 μ) =>
    (fiberTransport J p.1, fun α => fiberTransport J (p.2 α))) ''
  (independentFullCoreGraph color gamma theta : Set _)
```
under exact original `hColor`, `hGamma`, `hJ`. **This is equality of raw smooth-core graphs**, not merely the forward inclusion. The supporting reverse-witness theorem compiles and passes axiom checks but is not counted independently. Strict cumulative accepted principal roots **292 → 293**.

## Next proof obligation and scientific boundary

The accepted `fiberTransportUnitary J` from M4C2 is a genuine full-L² linear isometric equivalence. To deduce equality of **closures of unrestricted smooth-core graphs**, prove that the product-of-17-coordinate transport is a homeomorphism/linear isometric equivalence on the actual product of `Lp` spaces. Then apply continuity and inverse continuity to image of closure and use the now-accepted M4F4 source graph image equality. This result would concern **unrestricted charge-column graph closures**; it still does not establish the gauge-invariant physical graph/domain, closability of the charge graph as a single-valued operator, the paired Hamiltonian, or BFSS spectral claims.

Historical physical D3A/D3B preservation results were accepted but their compiled `.olean` chain is not present in the current M4F4 qualified cache. M4F1 gate #1 failed at pre-Lean D3B cache closure, and still requires recovery by the original dependency import path. Do not double-count historical D3A/D3B roots or bypass their original source hashes.

## Governance

All original BFSS, frozen Mathlib, accepted candidate blobs, and qualified caches unchanged. Audit-only commit to the scoped research branch does not trigger CI. `main` remains `cf06212a57db0ceffad74bd78280a8a240856a17`; PR #25 draft/unmerged, Issue #28 open.
