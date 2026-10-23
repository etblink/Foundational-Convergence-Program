# FCP BFSS M4F1 — S1 original source-specialization Gate #1 formally accepted

**Local report date:** 2026-10-22 PDT; run completed 2026-10-23 UTC. **Verified strict green, 1/1 new principal theorem root. Cumulative strictly accepted principal roots: 295 (previous 294 + S1 1).**

## Immutable original evidence

- [GitHub Actions run #39885669948](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39885669948), job `120193159242`, **completed/success**; workflow commit `94a06b4c7dcc46fe7db828c0cba54cbe2750bcad`.
- Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Source and compatibility-adapter hash preflights, pinned toolchain and exact accepted M4F5 and G4 qualified source closure passed.
- Original source G4K10A, exact one-line compatible D3A, and immutable D3B `1aedd8b251c8b04f02f9d71e35594a8cc482d79b` were freshly compiled under `-DwarningAsError=true` with **5**, **2**, and **5** strict axiom reports respectively; D3B's five roots depend only on `propext`, `Classical.choice`, `Quot.sound`.
- **A separately qualified D3B dependency cache saved before S1 compilation:**
  `bfss-fcp-m4f1-qualified-d3b-source-s1-parent-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- The **exact S1 candidate** file `experiments/openai-math-su2-physical-domain/FCPM4F1PairedSourceSpecialization.lean`, frozen Git blob `3340c823c511a4202f2d15711a3d1b4396445230`, strictly compiled with **exactly one** requested source-specialization theorem, allowed axioms only. Original validator output:

```
SOURCE_EXACT_STRICT_AXIOMS_PASS FCPM4F1PairedSourceSpecialization 1
WALL_SECONDS 8.69 CPU 101% MAX_RSS_KB 6996984
M4F1_SOURCE_S1_EXACT_SPECIALIZATION_ONE_ROOT_STRICT_AXIOMS_PASS
```

- **A new exact S1 proof cache saved:**
  `bfss-fcp-m4f1-qualified-source-s1-3340c823-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- All workflow steps including artifact upload completed/success. No `sorryAx`, extra axiom, Lean warning or fallback hypothesis on the new root. The original source math, canonical `main`, and draft PR #25 were unchanged.

## Accepted theorem and scientific boundary

```lean
FCP.BFSSM4F1SourceSpecialization.pairedOriginalCharge_mem_invariantCore
    (α : SpinIndex) (g : pairedGaugeData.invariantCore) :
    pairedAlgebraData.charge α g.val ∈ pairedGaugeData.invariantCore
```

Its proof is literally the source-exact generic D3B invariance theorem, with named concrete `M := pairedAlgebraData` and `G := pairedGaugeData`. It imports D3B but no independent charge/transport modules, introduces no new assumptions or postulates, and leaves `maxRecDepth` unchanged.

**Discriminator passed:** applying D3B to paired SU(2) source objects is *not by itself* the recursion obstruction. Historical Gate #5 recursion arose when this source membership statement was assembled directly inside M4F1 with independent transports, subtype proof objects and rewriting. This strongly supports a staged, named-certificate approach but does not prove it will automatically succeed.

**Remaining unproved:** the independently constructed physical invariant-core preservation theorem M4F1; closable restricted 16-operator equality, source/manuscript Hamiltonian and domains, and any BFSS spectral result.

## Next experiment and stopping policy

Move to **S2 — typed intermediate independent M4F1 proof** importing the accepted source-specialization certificate, eliminating the generic D3B theorem from the body. Construct a source-invariant section `g`, obtain a typed source membership certificate via the S1 theorem, prove an explicit equality `g.val = independentSmoothTransport J f.val` (or its symmetric), and compose through the existing exact independent-charge intertwiner and invariant-core membership iff. Preserve the *original exact theorem statement*, strict axiom allowlist and qualified independent+S1 caches.

If S2 fails at a specific conversion, distinguish a genuine type mismatch from elaborator stack exhaustion before trying any recursion-depth tweak. Stop after a clear proof-interface diagnosis rather than re-running full G4 historical rebuilds or changing original source.

**No ledger increment for wrapper helpers, caches or old original source roots.**
