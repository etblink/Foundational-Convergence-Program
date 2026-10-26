# BFSS S4B10 / Gate98 — exact original complex Fock restriction bridge

**26 October 2026 · Project Lead · candidate, NOT yet accepted.**

Original science remains immutable: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and source DeformedCharge/MixedEnergy, pinned Lean 4.34.1/Mathlib d13f23b. Research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Gate97 #1 [run 40365451342](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40365451342) **strictly accepted** 2/2 original real source fermion-field contraction and Fock-vector-action theorems, scoped S4 total **21**. Gate97 exact candidate SHA `4da5780b101dfb40dcf17a84ceefc29142a0d6d7`; Gate98 parent strictly recompiles that blob with allowed axioms. Canonical `main` and PR #25 untouched.

## Scientific reason for Gate98

The October-5 manuscript `positive-eigenvalues-relative-su2-bfss.tex`, original blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`, equation `eq:potential` (lines 236–255), defines **complex Fock** `B(x) = (i/2) f_{abc} x_i^a γ^i_{βδ} θ_β^b θ_δ^c`. Gate97's verified original `M.deformedFermionField 1 0 x` is a **real-linear** operator, built from `M.kineticSkewSymbol α p := ((-i) • M.kineticComplexSymbol α p).restrictScalars ℝ` and real `sourceMasslessRealFieldVariation`. It is invalid to equate these until both have been transported through precisely the same scalar restriction, finite-sum, and ordered composition conventions. This stage explicitly does NOT claim the full manuscript `B(x)` gamma/color contraction or any spectral consequence.

## Candidate three strict principal roots

1. `originalComplexFockRestriction_mul`: exact restriction of multiplication (operator composition) for actual source complex Fock CLMs.
2. `originalComplexFockRestriction_sum`: same for finite sums, via pointwise operator extensionality.
3. `originalMasslessFermionField_complexRestriction`: equality between the actual massless `M.deformedFermionField 1 0 x` and restriction of a public original complex-linear Clifford contraction `sourceMasslessComplexFermionContraction M x`. Copies the verified source S4B7 coefficient verbatim, preserves `(-i)` kinetic factor, ordered multiplication, and `1/16` complex normalization.

Source blob `dfe25c9e39133a7e84f0afe2fdfb0e9bfaf61669`; strict workflow blob `b246b5ed404d4cbc3c30072cdc55d269622dbd11`. Workflow retains exact source SHA/manifest pins, G4K9C provenance preflight, rechecks original Core/MassiveCoercivity/ColorMatrices/MixedEnergy/DeformedCharge and S4B3–S4B9 accepted parents including Gate97, fresh candidate .olean and warnings-as-errors, exactly three candidate axiom reports and only `propext, Classical.choice, Quot.sound`, no `sorryAx`. All candidate results remain **unaccepted** until a full successful CI verdict. An error or counterexample must be preserved, not explained away.

**High-value further boundary**: only after the complex scalar restriction is verified, try original normalized gamma and SU(2) color antisymmetry contractions to the *literal* October manuscript matrix (B(x)). The source label conventions, color factor `f_{abc}=sqrt(2) epsilon`, 48-Majorana representation, positive-i normalization, and possible fermion-operator ordering must all be independently checked. The closed physical high-Spin(9) domain, reducing-sector nonemptiness, compactness and positive spectral eigenpairs remain open.
