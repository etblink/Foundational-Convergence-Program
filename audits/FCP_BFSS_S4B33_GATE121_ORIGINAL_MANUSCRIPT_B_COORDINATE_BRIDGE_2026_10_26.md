# BFSS S4B33 — literal October 5 manuscript B(x) coordinate and original real source Fock field bridge

**Status: Gate121 #1 and #2 strict RED preserved; Gate121 #3 comprehensive syntax-only correction candidate, NOT ACCEPTED. Strictly accepted S4 unique principal roots: 57**, after independently verified [Gate120 run #40447095577](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40447095577), job `122000849241`, original source SHA `ba33abbde49fb44aa62b5569d66304688149c0cd` and acceptance audit `ce1e679d419398f946ae30320f3635bbf4f6719b`.

## Independent primary-manuscript source crosswalk

Directly read ORIGINAL upstream frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` TeX file `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, exact git source blob **`12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`** (889 lines), separately pinned in Gate121. **Lines 68–74:** chosen Pauli basis (T_a=\sigma_a/\sqrt2), `Tr(T_a T_b)=δ_ab`, `f_abc=√2 ε_abc`; lines **85–96**: 48 Majorana `{θ^a_α,θ^b_β}=δ_αβ δ_ab`, real symmetric Spin9 gamma; lines **113–121**: source supercharges, `q=1/16 Σ||Q_α Ψ||²`. **Lines 236–250**: manuscript fermion multiplication matrix `B(x)=(i/2) f_abc x_i^a gamma^i_{βδ} theta^b_β theta^c_δ`. **Lines 289–318**: original cross-term sign and antisymmetry reduction. DO NOT substitute an invented gamma, color or CAR convention.

Original Lean `Core.lean` source blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, lines 12–39, defines **arbitrary** `AlgebraData N` with original Hermitian orthonormal traceless `M.color`, symmetric `M.gamma`, original `M.theta` and CAR. Lines 45–49 define actual `M.structureConstant a b c` from the original `-i` color commutator trace. For arbitrary `M`, its color basis is not necessarily the paper's **positively oriented canonical Pauli basis**. The formula (f_{abc}) is basis-covariant, but the separate specialization `f_abc=√2 ε_abc` requires a **concrete orientation-specific N=2 source identification**; do not infer it from generic `AlgebraData N` alone. The physical Hilbert gauge and original smooth/closed-domain actions also require separate comparison.

Exact correspondence with strictly accepted Gate120 RHS: paper `a = C` (bosonic color), `b=A` (first/kinetic theta color), `c=q.2=D` (second theta color), `i=j`, `β=β`, `δ=q.1`. Paper `(+i/2)` and operator order `theta_β^b theta_δ^c` exactly match the source-derived real-scalar restricted complex Fock bilinear. Since finite sums are order-independent, no CAR theta exchange or coefficient sign change is warranted. Genuine gap is verifying the **independently written six-index manuscript coordinate formula** rather than silently renaming/defining the RHS of Gate120 and declaring equality.

## Proposed Lean statement and proof contract

[Gate121 source](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe.lean), Git blob `8e69ce262444e15237fd847e6f1de48e716b09f5`: independent definition `FCP.BFSSSU2PhysicalDomainS4B33.manuscriptCoordinateBComplex` transcribes TeX's `(i/2) Σ_b Σ_β Σ_δ Σ_c Σ_i Σ_a f[a,b,c] x[i,a] gamma[i,β,δ] θ[β,b] θ[δ,c]` into **genuine original complex Fock CLM**. Sum order differs but Einstein finite index contraction is the same. Exactly one principal new theorem `FCP.BFSSSU2PhysicalDomainS4B33.originalRealFockField_eq_manuscript_coordinate_B` aims to prove `M.deformedFermionField 1 0 x = (manuscriptCoordinateBComplex M x).restrictScalars ℝ`, with (M,x) the genuine source's data. Proof composes exact accepted Gate120 original real-linear equality, then a private **generic opaque complex module** `Fintype.sum_prod_type'` fermion-index (δ,c) expansion and `Complex.ofReal_sum` / `Finset.sum_smul` real-coefficient distribution; no theta commutation or special SU2 epsilon assertion. This is a math-carrying source identification, not merely a new `def` alias of Gate120.

[Gate121 strict workflow](../.github/workflows/bfss-form-original-manuscript-b-coordinate-bridge-strict-gate121.yml) preserves upstream immutable TeX/Lean source, Lean 4.34.1 and exact pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, G4K9C cache provenance, full fresh original source and accepted S4B3–S4B32 parent compilation (separate strict S4B32 parent theorem/axiom audit), candidate `8e69ce262444e15237fd847e6f1de48e716b09f5` Git-tree/worktree SHA double pin, candidate warning-as-error compile/new olean, **exactly one** source principal theorem with only `propext`, `Classical.choice`, `Quot.sound` and no `sorryAx`. A completed independently verified green may add exactly **one new scoped principal S4 root, 57→58**. Any red adds zero and is classified from first original Lean diagnostic.

**Scientific stop:** even strict acceptance does not construct the concrete positively oriented Pauli `AlgebraData 2` or a unitary identification with the manuscript's fixed Clifford module. Nor does it prove a global Spin9 action on the full physical closed form, true B operator equivalence on all closed graph domains, or any positive normalizable eigenpair. Those remain separate falsifiable proof obligations. Canonical main and original frozen upstream are untouched.


## Gate121 #1 — strict RED; failed source syntax isolated

Independently verified terminal [run #40448827399](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40448827399), job `122006443138`, exact immutable HEAD `e7d40ed39dd65c9d59a04f64c09d8ce4e568ebe4`, completed/failure. Source mathematical SHA/manuscript TeX blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`, original etblink/math, Lean 4.34.1, Mathlib, G4K9C qualified parent and all newly compiled S4B3–S4B32 accepted proofs passed. Last accepted parent `GATE121_ACCEPTED_S4B32_PARENT_FRESH_PASS 74360`. The candidate reported `GATE121_CANDIDATE_SOURCE_WARNINGS []`, `GATE121_COMPILER_EXIT 1`, named-root axiom report includes `sorryAx` because it was not parsed/proved. First exact errors:

```text
SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe.lean:95:42: error: unexpected token ':='; expected ')', ',' or ':'
SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe.lean:82:62: error: unsolved goals
```

Cause independently counted from the source: the `have hSum` LHS starts with a parenthesized finite `(∑ b, ...)` at line 84 but closes only the inner `(M.theta β b * M.theta q.1 q.2)` and scalar parentheses at line 89, not the outer summation wrapper. At line 95 the equality is consequently still missing one `)`, so Lean cannot parse the intended term, creating the derivative unsolved goal. This is a syntax error, not a counterexample to the independent six-index B(x) statement. No accepted principal S4 root: **57 remains**.

## Gate121 #2 — source-identical one-character parser recovery

The single source change is `(M.theta β b * M.theta q.1 q.2)) =` → `(M.theta β b * M.theta q.1 q.2))) =` at line 89 of the `hSum` type. Balanced-parentheses check confirms zero unmatched parentheses in the proposition. New exact Git blob `f7765c68d666a7037e0c375b19712f164e61e790` (previous immutable failed blob `8e69ce262444e15237fd847e6f1de48e716b09f5` untouched); both CI candidate SHA guards updated atomically with the immutable negative audit. No theorem statement, manuscript transcription, original source, proof tactics, axiom whitelist, or accepted parent changes. Qualification requires a terminal **completed/success** strict run, compiler exit 0, warning list empty, one exact root allowed axioms `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx` and a real fresh `.olean`. Do not promote beyond 57 until then.


## Gate121 #2 — verified terminal RED; second malformed source proposition

[GitHub Actions run #40450067450](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40450067450), job `122010458985`, exact HEAD `f620d451c0d6edfaad06ee08e1a59873873955ef`, `completed/failure`, all immutable original source and manuscript TeX SHA preflights, qualified G4K9C source cache and frozen Lean/Mathlib passed; all original source and accepted S4B3–S4B32 parents freshly compiled, including `GATE121_ACCEPTED_S4B32_PARENT_FRESH_PASS 74360`. Candidate source warnings `[]`; compiler exit **1** with forbidden `sorryAx`. Original first compiler diagnostics:

```text
SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe.lean:113:40: error: unexpected token ':='; expected ')', ',' or ':'
SU2BFSSPhysicalDomainS4B33OriginalManuscriptBCoordinateOperatorBridgeProbe.lean:82:62: error: unsolved goals
case hComplex
```

The previous #1 `hSum` parsing problem is fixed and its theorem source proceeds to `hComplex`. A source-only parenthesis audit shows `have hComplex :` left expression (lines 105–113) opens one more `(` than it closes. The final `calc` intermediate (lines 119–127) independently also has one unmatched opening parenthesis in the inner sum/coefficient annotations. That `calc` parsing defect had not yet surfaced because earlier `hComplex` syntax stopped elaboration. Do not waste another expensive strict run on just one detected error.

## Gate121 #3 — two literal parenthesis closures, no math change

The exact two single-character fixes are: in the `hComplex` LHS change `(M.theta β b * M.theta q.1 q.2))) =` to `(M.theta β b * M.theta q.1 q.2)))) =`; in the downstream `calc` source coefficient write `M.gamma i β q.1) : ℝ) : ℂ) •`, matching the independently accepted Gate120 original complex coefficient cast rather than the unclosed `M.gamma i β q.1 : ℝ) : ℂ) •`. The source `hSum` left unchanged. Static independent parenthesis balances for `hSum`, `hComplex` and `calc` type fragments now equal zero.

New candidate Git blob `8a15adf69545cee0e5d3b676def3e61342305663` replaces failed immutable candidate `f7765c68d666a7037e0c375b19712f164e61e790`; both exact source-tree/worktree SHA preflight references updated in the same atomic commit. All indexed color/gamma/Pauli source statements, manuscript TeX blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`, source operator identities and permitted axioms remain unchanged. **Not accepted** until full terminal strict Lean exit 0, warning list `[]`, one expected named root axiom set subset `propext, Classical.choice, Quot.sound`, no `sorryAx`. S4 **57**.
