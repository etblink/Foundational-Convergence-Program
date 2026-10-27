# FCP BFSS K1D2 — exact original exterior basis coefficient separation

**2026-10-27; Project Lead.** Status: *OPEN* (no scalar-common-kernel theorem strictly accepted at the time of creating this audit).

## Mathematical target

The actual original 48-real source label is `Source48Label = Fin 24 × Fin 2`. The original source vector space `Source48Vector = Source48Label → ℝ` has literal coordinate basis `Pi.basisFun ℝ Source48Label`. The true exterior algebra `E := ExteriorAlgebra ℝ Source48Vector` is `CliffordAlgebra (0 : QuadraticForm ℝ Source48Vector)`.

**K1D2 target (still unproved):**
```lean
∀ x : E,
  (∀ j : Source48Label,
    CliffordAlgebra.contractLeft (Q := (0 : QuadraticForm ℝ Source48Vector))
      (LinearMap.proj j : Module.Dual ℝ Source48Vector) x = 0) →
  ∃ c : ℝ, x = algebraMap ℝ E c
```

Input is already genuine Lean-qualified: [K1D1 Gate4 #40503702666](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40503702666), blob `46cd08ee5124dae7160f6fa2135b9b01c73b1030`, shows each literal source coordinate contraction vanishes for original Spin48 real-vector-action kernel elements. Accepted K1D0, K1C, K1A precede it.

## Source-exact proven library interfaces, not a replacement theory

Pinned Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`.

- `Module.Basis.ExteriorAlgebra`: [ExteriorAlgebra/Basis.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/ExteriorAlgebra/Basis.lean). Basis indexed by `Finset Source48Label`, with `ExteriorAlgebra.basis_apply` yielding `ιMulti_family` in exact original label order. [`basis_mul_of_disjoint`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/ExteriorAlgebra/Basis.lean) gives an explicit **unit sign**, useful to avoid guessing wedge sign conventions when inserting a coordinate.
- `CliffordAlgebra.contractLeft_ι_mul`, `contractLeft_ι`, and `contractLeft_one` in pinned [Contraction.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Contraction.lean). Derivation formula: `d⌋(ι(v)*x) = d(v)•x - ι(v)*(d⌋x)`. For literal coordinate dual `LinearMap.proj j`, `d_j(Pi.single k 1)=δ_{jk}`.
- The F20B accepted PBW basis uses the same **real linear exterior** basis transported via `(CliffordAlgebra.equivExterior Q).symm`. Never treat `equivExterior` as multiplicative; K1D0 already qualifies its genuine contraction transport.
- Existing S1V38 polarization and K1D1 original coordinate-dual equality remove the factor-of-two ambiguity.

## Chosen bounded next theorem

Rather than invent an unqualified identity for every subset, first qualify **K1D2A** finite coordinate wedge-word derivative building blocks on the actual original 48-label type:

1. `originalExteriorCoordinateWord_cons` realizes leading generator multiplication on `List Source48Label` by its literal coordinate exterior `ι` product.
2. `originalExteriorCoordinateWord_contraction_zero_of_not_mem` proves that if original label `j` is absent from a coordinate word, its native `LinearMap.proj j` contraction vanishes.
3. `originalExteriorCoordinateWord_leading_contraction` proves that for `j ∉ xs`, contracting `ι e_j` multiplied by the ordered tail word returns *exactly* the tail word, with coefficient 1.

Candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52K1D2AOriginalExteriorCoordinateWordContractionProbe.lean`, exact Git blob `b99cd7c09b2c44e5282db7cd1549c5fa425d06a2`. Its [strict Gate1 #40510963306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40510963306) compiles with the **accepted K1D1 qualified cache**, literal F20B ancestor and pinned immutable Mathlib; original run result pending at audit creation. No +3 roots unless fresh Lean, axiom whitelist and binary save all succeed.

## K1D2B finite-subset coefficient strategy (unproved)

Let `B := (Pi.basisFun ℝ Source48Label).ExteriorAlgebra`. For each `I : Finset Source48Label` with `j∈I`, the ordered exterior basis monomial `B I` is a unit-sign multiple of `ι e_j * B(I.erase j)`, by the pinned `basis_mul_of_disjoint` and singleton-basis identification. If `j∉I`, the derivative identity kills `B I`; if `j∈I`, use K1D2A leading-contraction lemma to show `d_j⌋(B I) = u_{j,I} • B(I.erase j)` with invertible real scalar `u_{j,I}=±1`. The literal order/Unit sign must be proved, not guessed.

For arbitrary `x:E`, expand using `B.repr`'s finite support. Fix nonempty `I` and `j∈I`. The coefficient of `B(I.erase j)` in `d_j⌋x` is `u_{j,I}` times coefficient of `B I`: no other finite subset containing `j` has the same erased subset, and subsets not containing `j` have zero contraction. If every `d_j⌋x=0`, `u_{j,I} ≠0` forces `B.repr x I=0`. Therefore the only possible surviving subset is `∅`. The scalar `B ∅` must be source-proved equal to `1`; then `x=algebraMap ℝ E c`.

**Separately falsify** each required interface: singleton/empty exterior basis identity, sorted exterior-word equality, sign invertibility, no coefficient collisions, scalar-line equality, source label/coordinate alignment. Do not use unqualified `simp` shortcuts to obscure basis labels, and do not enumerate all 2^48 subsets. Stop at actual first Lean compiler error and preserve its run/statement/axon record.

## Scientific admission boundary

K1D2A alone is not K1D2B. K1D2B alone will not automatically establish the original Spin48 kernel `{±1}`: the scalar Clifford/Spin inclusion and genuine negative central Spin representative (K1B) are separately required. SO48 image/covering, source-exact global Spin9, actual physical BFSS symmetry and positive spectral existence remain distinct missing results. `main` and frozen `etblink/math` remain untouched.


## K1D2A Gate 1 — rejected under warning-as-error, no theorem roots

[Actions #40510963306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40510963306), job `122212441527`, terminal RED, source blob `b99cd7c09b2c44e5282db7cd1549c5fa425d06a2`. Immutable source, qualified K1D1 cache, original ancestry, pinned Lean 4.34.1/Mathlib and fresh compiler all passed. All three theorem declarations printed only `propext`, `Classical.choice`, `Quot.sound` (no `sorryAx`) but Lean rejected the source due to **two strictly fatal unused `simp` arguments**:

```text
line 63: unused simp argument Pi.single_apply; recommend simp [hjk]
line 81: unused simp argument Pi.single_apply; recommend simp
K1D2A_COMPILER_EXIT 1
```

Because source compiled non-cleanly, **all three candidate roots remain UNACCEPTED**; no binary was saved. Not a mathematical counterexample. The smallest safe correction removes only those two unneeded simp arguments. Source after exact two-line correction: Git blob `6797e53e43abf6e94c76612f91617169e224e831`, author commit `4ef1196d7e48cefcd46ed1fa1e0c9cdd9f0fb744`. Workflow source pin and cache key corrected at commit `d63cfb477b61c1df3b0b81a4d558041382e0421f`; corrects a stale TWO_ROOTS diagnostic to THREE_ROOTS, without touching mathematical theorem statements. [Gate2 Actions #40511851424](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40511851424) launched; check exact original terminal compiler/axiom outcome before accepting three source proofs.


## K1D2A Gate 2 — strict acceptance of three original-word contraction roots

[GitHub Actions #40511851424](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40511851424), job `122215542975`, **completed SUCCESS at job level** on candidate blob `6797e53e43abf6e94c76612f91617169e224e831`. The original mathematical source and frozen pinned environment remained unchanged from Gate1. Exact accepted K1D1 binary and F20B ancestors restored, fresh Lean 4.34.1 compiled a nonempty `.olean`, source warning-as-error clean, exactly three `#print axioms` roots with only `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`. Exact original CI compiler log:
```text
FCP.BFSSS1V52K1D2A.originalExteriorCoordinateWord_cons
FCP.BFSSS1V52K1D2A.originalExteriorCoordinateWord_contraction_zero_of_not_mem
FCP.BFSSS1V52K1D2A.originalExteriorCoordinateWord_leading_contraction
K1D2A_COMPILER_EXIT 0
K1D2A_ORIGINAL_EXTERIOR_WORD_CONTRACTION_THREE_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1d2a-original-exterior-word-contraction-6797e53e43abf6e94c76612f91617169e224e831-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**+3 new genuine source-exact theorem roots**. The Gate1 lint red is preserved. These are ordered-list word identities, not full finite exterior `Finset` basis scalar separation. This file is added to the partial reviewed acceptance registry as its **12th** source-hash-pinned receipt, not three new files.

## K1D2B next source-typed finite erasure proposal (still unaccepted)

Path `SU2BFSSPhysicalDomainS1V52K1D2BOriginalExteriorWordNonzeroEraseContractionProbe.lean`, source Git blob `4729b2fc79048454ca476aabdf3150d2dba29ac0`. Proposes a **single** structurally stronger theorem `originalExteriorCoordinateWord_contract_present_nonzero_erase`: for a `List Source48Label` of distinct original labels and `j∈xs`, the literal coordinate contraction is `c • word(xs.erase j)` for some **nonzero** `c:ℝ`. Induction on the actual list uses K1D2A's leading-contraction and absent-contraction lemmas; when `j` is not at head, derivative recursively incurs a negative scalar. No guessed order, surrogate source or enumeration.

[Strict K1D2B Gate1 #40512802963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40512802963), launched with exact K1D2A qualified cache and one-root axiom checks. **ZERO K1D2B roots accepted until its original terminal compiler and cache proof are verified.**

Still open *after* K1D2B would be identifying F20B's exact `Finset Source48Label` exterior basis words with the chosen sorted original coordinate lists and using `List.erase` uniqueness to isolate coefficients; then prove the scalar common kernel. Do not equate nonzero erasure of a word with scalar classification of an arbitrary multivector.


## K1D2B Gate 1 — actual Lean elaboration red, one root rejected

[GitHub Actions #40512802963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40512802963), job `122218684106`, terminal RED after actual frozen original source, qualified K1D2A cache/ancestry, Lean 4.34.1 and Mathlib restoration passed. Candidate source blob `4729b2fc79048454ca476aabdf3150d2dba29ac0`, one intended theorem.

First real compiler error at line 54: `simpa [heq] using hj` retained the disjunction `j=k ∨ j∈ks` even though `heq:k≠j`; explicit case analysis is needed. Second fatal warning-as-error at line 65: unused `mul_smul_comm` in simplifier arguments. One theorem printed `[propext,sorryAx,Classical.choice,Quot.sound]`, so **zero K1D2B theorem roots accepted**. This does not refute a sign-like nonzero erasure coefficient. The first-causal errors are proposition elaboration and strict lint.

**Gate 2 correction:** source blob `9a0a119273e3215f05105344ac64f0a9c74853ac`, author commit `bcdf637566a2eb168e30c901622a3cdb389c6f13`, replaces only membership `simpa` with `rcases List.mem_cons.mp hj` and discharges its impossible `j=k` branch using `heq`; removes only the unused `mul_smul_comm` argument. No theorem/hypothesis/source change. Workflow source hash and distinct qualified cache key pinned by `8a9c19b015467c48a297463e1759cd332d60e2c7`. Read Gate 2's actual completed strict compiler/axiom/binary result before promoting.


## K1D2C independent accepted-F20B order bridge candidate (unqualified pending strict gate)

To avoid assuming that original source 48-label ordering equals any color-major/lexicographic surrogate, candidate module `SU2BFSSPhysicalDomainS1V52K1D2COriginalExteriorPBWBasisOrderedWordProbe.lean`, blob `99a897829fbbc4fd69e678e6524fdf7e5c87b5cd`, **reuses the exact noncomputable local order `linearOrderOfSTO WellOrderingRel` found in accepted F20B**. It defines an exterior `Module.Basis (Finset Source48Label) ℝ E` exactly as F20B did before `equivExterior.symm`, plus the corresponding sorted finite-list of original source coordinate labels.

Two statements, still unaccepted:
1. `originalSourceExteriorPBWBasis_eq_originalCoordinateWord` — identifies every actual F20B-style exterior basis word at `I` with the ordered coordinate exterior word of the SAME local well-order, using pinned `ExteriorAlgebra.basis_apply` and the `Finset.orderEmbOfFin` enumeration.
2. `originalSourceExteriorPBWOrderedLabels_nodup` — the same original finite-label list is repetition-free, enabling the K1D2B nonzero-erasure lemma.

This is an **independent branch** from the K1D2B erasure proof; it imports strictly qualified K1D2A and accepted F20B, so it can run without treating the still-staged K1D2B as proved. [Strict CI #40514167527](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40514167527), source-hash-pinned against the accepted K1D2A cache and frozen original Mathlib, was launched; all claims remain unqualified until terminal fresh Lean/axiom evidence. An actual Lean mismatch in the PBW/ordered-list identity would be a valuable *source-definition or proof-interface* finding and must not be papered over by switching to a different order.


## K1D2B Gate 2 — final strict acceptance of genuine nonzero erasure theorem

[GitHub Actions #40513783572](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40513783572), job `122222245808`, completed **SUCCESS** at the exact original candidate Git blob `9a0a119273e3215f05105344ac64f0a9c74853ac`. Pinned original Lean 4.34.1 and Mathlib `d13f23b...`, exact accepted K1D2A source cache and ancestry, fresh new nonempty `.olean`, one exact `#print axioms` root with only `propext`, `Classical.choice`, `Quot.sound` and zero warnings/sorryAx passed. Compiler record:
```text
'FCP.BFSSS1V52K1D2B.originalExteriorCoordinateWord_contract_present_nonzero_erase'
depends on axioms: [propext, Classical.choice, Quot.sound]
K1D2B_COMPILER_EXIT 0
K1D2B_ORIGINAL_EXTERIOR_NONZERO_ERASURE_ONE_ROOT_STRICT_PASS
Cache saved with key:
bfss-k1d2b-original-exterior-nonzero-erasure-9a0a119273e3215f05105344ac64f0a9c74853ac-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**Exactly +1 NEW genuine original-source theorem root.** For any `xs : List Source48Label` with `xs.Nodup` and `j∈xs`, the exact original exterior `LinearMap.proj j` contraction of `originalExteriorCoordinateWord xs` equals `c • originalExteriorCoordinateWord (xs.erase j)` for a **proved (c:ℝ) with (c ≠ 0)**. No surrogate basis, no 2^48 enumeration, no assumed scalar commutant. This is the essential noncancellation ingredient for the original F20B `Finset` coefficient extraction, **not that extraction itself**. The source acceptance registry now has **13** reviewed source hash pins (K1D2A + K1D2B, historical prior 11).

The original K1D2B Gate 1 [#40512802963](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40512802963) remains red, with its exact list-membership `j=k∨j∈ks` error, an unused simplifier argument, and rejected `sorryAx`. Gate2 changed only the proof and source hash, not the theorem statement.

**Pending independent K1D2C:** exact source F20B exterior PBW basis `Finset` indexed ↔ original ordered word. Even if K1D2C succeeds, the common-contraction kernel scalar theorem still needs a strict coefficient-extraction and scalar `B∅=1` proof.


## K1D2C Gate 1 — accepted F20B well-order / Finset.sort interface red

[GitHub Actions #40514167527](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40514167527), job `122223606222`, terminal **RED**, candidate source blob `99a897829fbbc4fd69e678e6524fdf7e5c87b5cd`. Exact original source and qualified K1D2A binary ancestry passed; frozen Lean 4.34.1/Mathlib restored; fresh candidate compile failed.

**First causal failures:** file-local `I.sort (· ≤ ·)` in source exact `linearOrderOfSTO WellOrderingRel` scope lacked an instance of `Std.Total (fun x y => x ≤ y)`, because the chosen generic finset-sort algorithm demands that additional relation-class synthesis. Lean also flagged proof-local `letI` declarations by `linter.style.haveILetI`, and `Pi.basisFun_apply` as an unused simplifier argument. Both the proposed finite-subset basis/word equality and ordered-labels Nodup roots were rejected with `sorryAx`; **zero K1D2C theorem roots**. This is a deliberate source ordering/interface boundary and proof-engineering finding, not a nonexistence or alternative-basis proof. Never silently substitute lexicographic or color-major source order.

**Gate 2 correction:** source Git blob `a4f6717bd5ed72e04ec23595818cde2f64cbd860`, author commit `fac5a577a1b2b50da019211a1cf659fd2545dfe1`. The original F20B noncomputable well-order is installed as a local file-scope instance, and the label enumeration uses the pinned `Finset.orderEmbOfFin` evaluated by `List.ofFn` (not `Finset.sort`), avoiding the additional `Std.Total` requirement. The Nodup theorem now uses `List.nodup_ofFn` from injectivity of the exact original order embedding. Mathematical statements and the source `Finset Source48Label` basis are unchanged, no alternative order admitted. The unused simplifier argument and two misleading workflow diagnostic labels were corrected. Workflow pin commit `10e882824d61c2510c105cb81cd1182fdd77a890`, distinct hash-qualified cache key; require terminal Lean/axiom/binary proof before acceptance.


## Stronger full coefficient-separation plan: minimal occupied label, no global signed derivative matrix

A simpler exact mathematical argument is available even without deploying K1D2B's general nonzero-erasure theorem in every summand. Write `x = Σ_I c_I B I` using the genuine F20B-style exterior basis `B). The set of labels occurring in any **nonempty supported** `I` is finite. Suppose some `c_I` with `I≠∅` is nonzero. Choose `j` as the **least occupied label across the entire finite support**, using the EXACT source F20B order `linearOrderOfSTO WellOrderingRel`.

Then for **every basis subset `J` in the support**, either (i) `j∉J`, so `d_j⌋(B J)=0` by the K1D2A absent-label rule, or (ii) `j∈J` and **j is the first ordered label of J**, so `d_j⌋(B J)=B(J.erase j)` **with scalar +1** by the K1D2A matching-leading rule. No general signed deletion is required in this one derivative. For any fixed `J` containing j, `J↦J.erase j` is injective. Therefore the exterior coefficient at `I.erase j` in `d_j⌋x` equals `c_I` for each supported I containing j. The hypothesis `d_j⌋x=0` forces `c_I=0`, contradicting nonempty support. Hence x has only `∅` coefficient and is scalar.

**Formal obligation list remains strict:** identify true `B I` with the same-order `originalExteriorCoordinateWord` (K1D2C pending); prove sorted-list head/erase for the global least occupied label; prove finite `Finsupp` support union and existence of global minimum; prove `Basis.repr` coefficient uniqueness and `B∅=1`. This is a mathematical **plan**, not a kernel-checked K1D scalar theorem. It is more economical than a full signed contraction matrix and avoids accidental source basis order assumptions. K1D2B's accepted nonzero-erasure lemma remains independently useful, especially if the minimal-support strategy hits proof-interface issues.


## K1D2C Gate 2 — genuine original ordering typeclass/cast red, zero roots

[GitHub Actions #40515773704](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40515773704), job `122229217793`, terminal RED after exact source, accepted K1D2A cache, pinned Lean 4.34.1 and Mathlib restored. Candidate source blob `a4f6717bd5ed72e04ec23595818cde2f64cbd860`. Two precise first-causal issues:

1. File-local `local instance : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel` lacked the **classical decidable** instance needed to construct the exact source well-order, reported as `failed to synthesize DecidableRel WellOrderingRel`. Original F20B already invoked `classical` before `letI`; the new source must do likewise.
2. The old `rw [← Finset.listMap_orderEmbOfFin_finRange ...]` no longer matches after switching to a direct `List.ofFn` order embedding. Lean's elaborated basis word exposed a subtype/cardinality cast ambiguity if forced through that obsolete rewrite. Do not assume an alternate ordering or hide the mismatch.

Both K1D2C roots were rejected with `sorryAx`; no new accepted theorem. The change is not a mathematical counterexample.

**Gate 3 exact correction:** `local instance ... := by classical; exact linearOrderOfSTO WellOrderingRel`, eliminate the obsolete `Finset.sort` listMap rewrite, and normalize `List.ofFn_eq_map`, `List.map_map`, `Pi.basisFun_apply` directly. New source blob `4adcc4bd72975c720f6114002e63af0a9c8f5a1d`, author commit `fffc2e1e3e96bb5c45d3e80a4bca8d4d955a02b8`. Workflow source pin updated at `c752cbf8784157c8160da8a258d5042acd25772e`. Statements and real original ordered F20B basis unchanged. Require terminal original Lean compiler/axiom/binary evidence before formal acceptance.


## K1D2C Gate 3 pending verified-run handoff — exact current blocker

The actual source-pinned workflow [Actions #40516712399](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40516712399), job `122232329359`, was independently checked in GitHub after authoring commit `c752cbf8784157c8160da8a258d5042acd25772e`. **The job remained queued**, so no compiler/axiom result exists yet in the observed record. Exact prospective module blob `4adcc4bd72975c720f6114002e63af0a9c8f5a1d`. Preserve K1D2C as **UNACCEPTED, 0 roots** until that job has a successful terminal proof result; no progress claim is authorized by a queued or green graph-only run.

Project Lead critical path after this gate: verify the original exact local PBW order identity and Nodup; then formalize the finite-support coefficient-minimal-label argument (smallest original source label occurring in any supported nonempty exterior-basis index), with leading derivative (+1), absent derivative zero, injectivity of `I.erase j` restricted to `j∈I`, and scalar basis `∅`. Even after that K1B actual negative Spin scalar and 2-sign kernel require separate strict qualification.


## K1D2C Gate 3 — only the original powersetCard subtype / ordered embedding alignment remains

[GitHub Actions #40516712399](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40516712399), job `122232329359`, terminal **RED**, candidate blob `4adcc4bd72975c720f6114002e63af0a9c8f5a1d`. Pinned original source and qualified K1D2A ancestor compiled normally. The classical original F20B order instance now elaborates successfully, and the original `originalSourceExteriorPBWOrderedLabels_nodup` **separately reported permitted axioms** `[propext, Classical.choice, Quot.sound]`, but this root was not gate-accepted because the file as a whole failed.

One remaining unsolved Lean goal in `originalSourceExteriorPBWBasis_eq_originalCoordinateWord`: a list product of `Pi.single` generators indexed by `((↑(Set.powersetCard.ofCard rfl)).orderEmbOfFin ...)` must equal the same product indexed by `I.orderEmbOfFin rfl`, with `I:Finset Source48Label`. Both are the actual F20B ordered embedding; the left includes a redundant `ofCard` wrapper. The theorem had `sorryAx` in the rejected run; **0 new K1D2C roots**.

**Gate 4 bounded repair:** reduce the genuine `Set.powersetCard.ofCard`/ordered embedding representation (pinned `ofCard` is a subtype constructor `⟨I, ...⟩`, and `Set.powersetCard.ofFinEmbEquiv_symm_apply` gives literal `Finset.orderEmbOfFin`), then discharge the remaining equality by definitional equality. The original F20B well-order and actual source labels remain unchanged. If `rfl` does not normalize the implicit cast, inspect the exact new compiler goal and replace with explicit `Set.powersetCard.val_ofCard` rewriting; avoid any new axiom or alternative ordering.


## Independent K1D2D source Finset foundations — staged, not admitted

A second strictly scoped proof slice is now proposed without importing still-unqualified K1D2C. The candidate `SU2BFSSPhysicalDomainS1V52K1D2DOriginalExteriorPBWEmptyAndEraseInjectivityProbe.lean`, Git blob `6e8c864af957532e04c108cadf6eff96965a3ad4`, depends only on previously accepted source K1D2A and F20B plus pinned Mathlib. It preserves F20B's exact `linearOrderOfSTO WellOrderingRel` and states:
- `originalSourceExteriorPBWBasis_empty_eq_one`: the original exterior PBW basis element at `∅ : Finset Source48Label` is exactly `1:E` (not merely proportional or equal after an unqualified algebra equivalence).
- `originalSourceFinset_erase_injective_at_present_label`: for `j∈I,J`, `I.erase j=J.erase j` implies `I=J`, via literal `Finset.insert_erase`, which is required for coefficient uniqueness.

[Original source-hash-pinned strict K1D2D Gate1 #40529951449](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40529951449) launched. These two new roots are *not yet accepted*. Distinguish source-level truth from CI outcome and add to curated graph/acceptance receipt only after exact Lean compiler+axiom+cache qualification. K1D2D and K1D2C are independent, parallel **necessary but not sufficient** components for the original finite-support scalar-line theorem.

[Original K1D2C Gate4 #40529606061](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40529606061) tests exact source candidate `99ab3f78e12a31c365f83c1577db852327d3bc3a`, changing only final definitional equality `rfl` on the already normalized basis-to-ordered-word identities, with original F20B order and statements intact. Keep all three prior K1D2C reds independent and unaccepted.


## K1D2C Gate 4 — FINAL source-exact acceptance of two F20B ordered-basis roots

[Actions #40529606061](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40529606061), job `122278481137`, **completed SUCCESS** on unchanged statement pair and candidate source Git blob `99ab3f78e12a31c365f83c1577db852327d3bc3a`. Actual original `etblink/math@adc7f124`, Lean 4.34.1, Mathlib d13f23b, qualified K1D2A cache and accepted F20B ancestry passed, followed by fresh clean Lean source compilation, exact `#print axioms` reports limited to `[propext, Classical.choice, Quot.sound]`, no `sorryAx` or warnings, and genuine nonempty `.olean` binary save:
```text
K1D2C_COMPILER_EXIT 0
K1D2C_ORIGINAL_PBW_ORDERED_WORD_TWO_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1d2c-original-pbw-ordered-word-99ab3f78e12a31c365f83c1577db852327d3bc3a-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**Exactly TWO NEW genuine source-exact Lean theorem roots:**
```text
FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWBasis_eq_originalCoordinateWord
FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWOrderedLabels_nodup
```
The actual exterior PBW basis indexed by `Finset Source48Label` corresponds to the ordered list of genuine original source Majorana coordinate generators in the exact `linearOrderOfSTO WellOrderingRel` basis, rather than a presumed lexicographic/color-major representation. The list's no-duplicates property is strictly qualified.

Gate4 resolved the one remaining definitionally equal `powersetCard.ofCard` ordered-embedding representation by `rfl` **after** the pinned Mathlib basis and list normalizations. The three earlier RED gates (#40514167527, #40515773704, #40516712399) remain actual failures and are *not* double-counted or relabeled. The curated qualified source-hash registry now contains **14** reviewed modules, K1D2C +2.

**NOT ACCEPTED by this gate:** no full arbitrary exterior multivector coordinate coefficient-separation/scalar-line theorem has been proved. Combine now **accepted** K1D2A coordinate contractions, K1D2B nonzero erasure, K1D2C exact basis↔ordered word, and independent K1D2D empty-unit + erasure-injectivity (if qualified), to prove the finite-support coefficient result. Do not promote source Spin48 centralizer/kernel or BFSS spectral physical statements.


## K1D2D Gate 1 — source exterior zero-fold product lemma missing, no roots

[GitHub Actions #40529951449](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40529951449), job `122279709255`, **RED** after exact frozen original source pins, accepted K1D2A/F20B ancestor, Lean 4.34.1 and Mathlib restoration, fresh candidate compilation. Candidate Git blob `6e8c864af957532e04c108cadf6eff96965a3ad4`.

First compiler error: after unfolding the *actual* original F20B exterior basis `B∅`, simplification left `ExteriorAlgebra.ιMulti ℝ 0 (...) = 1` as an unsolved goal. Explicit `ExteriorAlgebra.ιMulti_zero_apply` was in a simp-argument list but flagged as unused (strict warning-as-error), rather than being applied to the remaining goal. `originalSourceExteriorPBWBasis_empty_eq_one` was rejected with `sorryAx`; `originalSourceFinset_erase_injective_at_present_label` reported only `propext`, `Classical.choice`, `Quot.sound` but was not accepted as a file due to the first error. **Zero new K1D2D roots** from Gate1. This is a proof application error, not a contradiction.

**Gate2 bounded correction:** preserve both exact theorem statements/source instance and use `simp only [ExteriorAlgebra.basis_apply, Finset.card_empty, ExteriorAlgebra.ιMulti_family]` followed by a separate `exact ExteriorAlgebra.ιMulti_zero_apply ℝ _`, avoiding an ineffective simp argument. Candidate Git blob `60aa138d7c55bb3375a9c7b1147eb4583c17fcd4`, author commit `6a9e80bac48ce58889f1078bdfe7ca3bb4a3e71f`, workflow source pin commit `07e011be899e5f4d3ce96739bfbf2f248fbdeca4`. No source mathematical assumption changed; full finite-support scalar classification remains open.


## K1D2D Gate 2 — explicit zero-fold lemma ring argument in wrong position, no roots

[Actions #40531343645](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40531343645), job `122284669102`, terminal RED on candidate blob `60aa138d7c55bb3375a9c7b1147eb4583c17fcd4`. Fresh Lean reached proof after frozen source and qualified K1D2A ancestry. Exact compiler error at the one `originalSourceExteriorPBWBasis_empty_eq_one` proof's terminal `exact ExteriorAlgebra.ιMulti_zero_apply ℝ _`: the lemma takes `v : Fin 0 → M` as its explicit argument, **NOT `R`**. Positional `ℝ` therefore had type `Type` where a zero-length vector family was expected. This is an arity/implicit-argument proof-engineering red, not a mathematical negative result. The second `originalSourceFinset_erase_injective_at_present_label` declaration printed only permitted axioms and remained not gate-accepted. **No K1D2D roots admitted.**

Gate3 candidate blob `b494be954703d29b9d70ad934546bebf9a55cbcf`, proof commit `61d43ff624691686c6ae2d4b42b18f273ac6f65b`, changes ONLY `exact ExteriorAlgebra.ιMulti_zero_apply ℝ _` to `exact ExteriorAlgebra.ιMulti_zero_apply (R := ℝ) _`; source theorem statements, original F20B source well-order, frozen math and accepted ancestor remain unchanged. Workflow exact candidate pin `7db454821a444b71ad4c6d3f8e5faa2e37b98fa1`. Check terminal original Lean compiler and axiom reports before acceptance.


## K1D2D Gate 3 final accepted original source unit/erase pair

[GitHub Actions #40532466604](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40532466604), job `122288688003`, terminal SUCCESS, exact frozen candidate source blob `b494be954703d29b9d70ad934546bebf9a55cbcf`, accepted qualified K1D2A/F20B ancestry, pinned Lean 4.34.1/Mathlib `d13f23b...`, fresh nonempty `.olean`, no warnings/sorryAx, both exact roots allowed only `[propext, Classical.choice, Quot.sound]`:
```text
FCP.BFSSS1V52K1D2D.originalSourceExteriorPBWBasis_empty_eq_one
FCP.BFSSS1V52K1D2D.originalSourceFinset_erase_injective_at_present_label
K1D2D_COMPILER_EXIT 0
K1D2D_ORIGINAL_EMPTY_UNIT_ERASE_INJECTIVITY_TWO_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1d2d-original-empty-unit-erase-injective-b494be954703d29b9d70ad934546bebf9a55cbcf-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
**Exactly +2 genuine roots accepted**, strictly different from Gate1's unsolved zero-fold product and Gate2's incorrect explicit `R` argument; those original reds remain permanent evidence. Mathematically this proves scalar unit equals the genuine F20B-style exterior basis `B∅`, and `I.erase j=J.erase j` for j in both original finite indices forces `I=J`. Neither alone establishes arbitrary exterior scalar common kernel. The curated evidence registry now has **15** qualified modules after this acceptance.

## K1D2E1 original PBW basis absent-coordinate contraction accepted

[GitHub Actions #40534646714](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40534646714), source blob `52b5ce32275839dc2bde947e29ad2e03ed108bb2`, strict original frozen source Lean/Mathlib, restored independently qualified K1D2C and K1D2D binary caches, fresh nonempty `.olean`, zero warnings/sorryAx, two permitted-axiom roots:
```text
FCP.BFSSS1V52K1D2E1.originalSourcePBWOrderedLabels_mem_finset
FCP.BFSSS1V52K1D2E1.originalSourceExteriorPBWBasis_coordinateContraction_zero_of_not_mem
K1D2E1_COMPILER_EXIT 0
K1D2E1_ORIGINAL_PBW_ABSENT_COORDINATE_TWO_ROOTS_STRICT_PASS
Cache saved with key:
bfss-k1d2e1-original-pbw-absent-coordinate-52b5ce32275839dc2bde947e29ad2e03ed108bb2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
**+2 new genuine original PBW source roots:** all labels actually present in F20B's exact ordered PBW word lie in its original finite index; a coordinate j absent from I annihilates `B I` under the actual exterior contraction. This directly qualifies the zero column of the needed coordinate-contraction matrix, beyond K1D2A's earlier list-word-only result. Total qualified exact source blobs **16** after E1; the graph CI is a separate zero-root infrastructure check.

## K1D2E2 least-coordinate first/erased ordered-list candidate — still unqualified

`SU2BFSSPhysicalDomainS1V52K1D2E2OriginalPBWLeastCoordinateHeadProbe.lean`, source Git blob `246bbaa21191f0c976f479ae5ae2cb578729dea5`, stages two source-exact statements:
- `originalSourcePBWOrderedLabels_eq_finsetSort`: exact `List.ofFn` enumeration built from the genuine `I.orderEmbOfFin rfl` equals the *canonical sorted list* under the **same original frozen F20B `linearOrderOfSTO WellOrderingRel`**.
- `originalSourcePBWOrderedLabels_cons_of_least`: if j∈I and j≤all elements of I, the actual ordered word indexed by I is exactly `j :: ordered(I.erase j)`, with no guessed source basis permutation.

[Strict Gate1 #40535506460](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40535506460) restores independently accepted C and D source-hash caches; the two target roots remain **unaccepted pending terminal exact compiler/axiom/binary evidence**. Combined with E1's absent-label result and the accepted K1D2A leading-label derivative, E2 is intended to allow a globally least occupied coordinate argument on any finite PBW expansion without expanding all 2^48 basis terms. Even E2 success is **not** the finished arbitrary-element scalar-line proof.


## K1D2E2 Gate 1 — exact source ordering inconsistency exposed (zero accepted roots)

[Run #40535506460](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40535506460) FAILED fresh Lean after independently qualified C/D ancestry. Source blob `246bbaa21191f0c976f479ae5ae2cb578729dea5`. The source `I.sort` selected the global product-label comparison `Prod.instLE_mathlib` while `I.orderEmbOfFin` used F20B's accepted `linearOrderOfSTO WellOrderingRel`. The compiler explicitly printed both incompatible `LE` instances. Anonymous sort `(· ≤ ·)` also lacked `Std.Total`, and a supposed `Finset.not_mem_erase` constant did not exist. Both roots were rejected with `sorryAx`, no binary saved.

Gate2 retains the original mathematical statements but adds a file-local `LE Source48Label` instance derived from the *same F20B LinearOrder*, uses the named `LE.le` relation rather than a new anonymous comparison, and discharges erase nonmembership by simplification. New source blob `ed3b405c1a1f7b33e44199ad5a635c3926d6b721`, workflow pin commit `98704203fa98ae21404dda8fc0d8a466862d0721`. Require fresh strict compiler/axiom proof; no new roots claimed yet.

## Project Lead succession execution — minimal E3/E4 source-interface repairs, 2026-10-27

The incoming lead independently re-read the original **terminal** compiler logs of [K1D2E3 run 40538199095](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40538199095) and [K1D2E4 run 40538317916](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40538317916). Both errors were compiler-level source-interface defects after qualified ancestry restoration, not mathematical counterexamples:

- E3: nonexistent \`Finset.not_mem_erase\` at line 53. The source proof now obtains \`j ∈ I.erase j\` through the **accepted original PBW word membership theorem** and closes that impossibility by \`simp at he\`. The exact E3 theorem statement, original source type/order and accepted parent declarations were unchanged. Candidate blob changed **844cd036b7ef727f64d52cf20d5f89543b45d134 → 05e8a4703fcfedb3fbb0d27b9b0c84e655ee130c**. Proof commit \`32d072be0657b2774f086ec285f0f59e486a824e\`; strict workflow/pin/cache-key commit \`8345c1b3e89a6e7b9a1c04c8e0ad8d42024307d5\`. Strict gate [run 40542776547](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40542776547) initiated; terminal acceptance **not asserted in this checkpoint**.
- E4: \`Finset.min'_le\` requires the member coordinate argument \`k\` before the membership evidence. The source now uses \`Finset.min'_le _ k (originalSourcePBWSupportedIndex_member_occupied x I hI k hk)\`. Both E4 theorem statements and the genuine F20B order remained unchanged. Candidate blob changed **857909dbc4424f01b193606a176f666c47bb28d1 → 96adf2cf80e5dd81c71220e0cb811cf9b8494cf3**. Proof commit \`1746894457e8499ed01f3e5a697e1c5150817bf1\`; strict workflow/pin/cache-key commit \`711c9d0590e4dd2d48de9d1a8aa8e0dfa5003589\`. Strict gate [run 40542794712](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40542794712) initiated; terminal acceptance **not asserted in this checkpoint**.

Both source-import-graph integrity workflows triggered by the source changes completed green ([40542770563](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40542770563), [40542785881](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40542785881)). These are **zero-root infrastructure checks**. The strict E3/E4 runs are the only admissible new theorem evidence. Frozen original \`etblink/math@adc7f124\`, Lean \`4.34.1\`, Mathlib \`d13f23b\`, canonical \`main\` and draft PRs remain unchanged.

### Prospective coefficient-extraction theorem, still OPEN

Let \`B\` be the **original** F20B-compatible exterior basis, \`c := B.repr x\`, and \`S := c.support\`. Assuming an occupied nonempty basis index, choose the least original occupied label \`j\` using E4. By E1, the original coordinate contraction annihilates each supported \`B J\` with \`j ∉ J\`. By E4's global minimum bound and E3, it sends each supported \`B J\` containing \`j\` **exactly** to \`B (J.erase j)\` with coefficient +1. By the accepted D erasure-injectivity theorem, \`J.erase j = I.erase j\` for \`j ∈ I ∩ J\` forces \`J=I\`. Thus the coordinate of the contracted \`x\` at \`I.erase j\` must equal \`c I\`. If every coordinate contraction of \`x\` is zero, every supported nonempty \`I\` is impossible; use accepted \`B ∅ = 1\` to conclude \`x\` is scalar.

The next strict gate should **first** prove the exact \`Basis.repr\` coefficient formula for finite support (using \`Basis.linearCombination_repr\`, \`Finsupp.sum\`/localized \`Finset.sum_eq_single\`, \`Basis.repr_self_apply\`, and \`LinearMap.map_sum/map_smul\`), then compose the arbitrary-element scalar theorem. Do not expand a formal sum over all \`2^48\` basis subsets; \`S\` is finite. No \`equivExterior\` multiplicativity is allowed. If E3 or E4 remains red, repair its first compiler error **before** a dependent scalar-kernel gate. K1B, the Spin48 two-sign kernel, covering, global Spin9, and BFSS spectrum stay separate and unproved.
