# FCP BFSS — R1 global Spin(9) lift: a bounded topology-first alternative

**October 24, 2026 Pacific / October 25 UTC. Project Lead research decision.**
**Status: mathematically conditional design observation, NOT a Lean-qualified BFSS theorem, NOT proof of original global Spin(9) covariance or spectral existence.**

## Exact scientific setting and provenance

Immutable original mathematics: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
Original 16 real spinor labels × 3 adjoint SU(2) color labels = 48 real Majoranas; source original `Fermion 2`, original `pairedAlgebraData.theta`, native original gauge action and color adjoint action; frozen Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No changes to source, `main` or draft PR #25. Spectral Issue #29 demands genuine GLOBAL, strongly continuous Spin(9) covariance and physical CLOSED q-form invariance, not isolated infinitesimal gamma identities.

Relevant preserved qualified/partial ancestry:
- Actual native SU(2)→Spin(48) realization, 48 Clifford generator and Fock transport: original S1V52 L7/L8/L9 sequence, notably L9E5F14–F20E; individual exact acceptance status must be checked per named declaration, not inferred from filenames.
- Original source spin/gauge bilinear commutation: S3G2/G3.
- Original kinetic source covariance S3L J-family; original cubic fixed-color R4C1/R4C2 qualified. R4D large concrete three-index source assembly historically RED with recursion-depth/kernel timeout, not established contradiction. See `experiments/openai-math-su2-physical-domain/BFSS_S3L_CUBIC_WEIGHTED_RESPONSE_SOURCE_GAP_AND_NEXT_PROOF_0_1_0.md`.
- S3E1 actual same-color Majorana commutator is independently STRICTLY ACCEPTED Gate13; S3E2 selector/contraction is still UNACCEPTED after Gates14–19. Newly launched Gate20 is a diagnostic-only original Fock CLM instance isolation, not a new source root.

## Useful precise mathematical lemma (conditional on genuine lifts)

Let `V` be a real finite-dimensional oriented Euclidean space, and let
`p : Spin(V) → SO(V)` be the standard continuous double-covering homomorphism with **discrete** kernel `{+1,-1}`. Let `G,H` be connected topological groups. Suppose `r : G → Spin(V)` and `s : H → Spin(V)` are **continuous** group homomorphisms satisfying

`p(r(g)) p(s(h)) = p(s(h)) p(r(g))` for ALL `g,h`.

Then `r(g)` and `s(h)` commute for ALL `g,h`.

Proof: the commutator `c(g,h)=r(g)s(h)r(g)^{-1}s(h)^{-1}` lies in the kernel of `p` for each pair by the given projected commutation. It is continuous as a map `G×H → {±1}`. The product is connected, and `c(e,e)=+1`; continuity into the discrete kernel forces `c≡+1`. Thus there is no surviving relative sign in the commutator. **This is an ordinary group-theoretic deduction with hypotheses, not a declaration checked in Lean.**

For BFSS, the *candidate* vector actions on the SAME original real 48-label space should be source-defined:
- `r₀(g)` acts on the 16-dimensional **real Spin(9) spinor-label representation** for each of the three original colors (spinor `⊗` identity color).
- `s₀(u)` acts by identity on 16 spinor labels and the **actual SU(2) adjoint 3-color matrix** on color.
- The tensor-factor actions commute algebraically. This only supplies projected `SO(48)` commutation after exact source basis/order and determinant are checked.

An exact continuous lift `r : Spin(9) → Spin(48)` and comparison with the existing **actual original** native `s : SU(2) → Spin(48)` are **not** supplied by this note. The simply-connectedness of both groups suggests a universal-cover construction but its continuity, group-homomorphism property and exact original-source realization must be proved rather than asserted. It is particularly important not to substitute an unrelated abstract Spin(48) action for the original 48-Majorana Fock representation.

## Central-sign and physical pitfalls to attack independently

- The central element `-1 ∈ Spin(9)` projects to the identity in spatial `SO(9)` yet acts as minus the identity on the real 16-spinor labels. Its induced conjugation on each genuine original Majorana should consequently flip sign. A candidate action that factors uncritically through `SO(9)` can LOSE the spinor sign and invalidate the supercharge covariance convention. Compare exact original Fock central parity and the (16 × 3) label basis, not only induced spatial rotations.
- Even projected commutation is insufficient if the source native lift is not shown continuous as an actual **group homomorphism** in the original source. Discreteness/connectedness cannot repair a merely pointwise chosen, discontinuous lift or a projective cocycle.
- The Fock implementation must be the genuine unitary source `Fermion 2` action, with exact 48 Majorana conjugacy; arbitrary choice of an equivalent representation requires a separately qualified original intertwiner.
- Spin(9)-to-SO(9) spatial pullback on bosonic L², true gauge invariance, strong Hilbert continuity and invariant dense smooth core must be established. The closed `q=(1/16)Σ‖Q_α ψ‖²` symmetry requires *all* 16 original kinetic AND cubic charge covariance relations and closed-form passage. Connectedness of lifts does **not** prove any of those operator/domain identities.
- Do not treat the conditional group lemma or a pointwise smooth-core equation as form-domain isotypic reduction, compact resolvent, point spectrum or a full-H mass gap.

## Bounded experiment and falsification checkpoints

1. Inventory the exact accepted S1V52L9E5F14–F20E and S3G3 original source declarations and their **literal** source theorem types; verify coherent Fock unitary and actual SU2 gauge lift. Identify any remaining continuity gap instead of equating algebraic Fock covariance with strong continuity.
2. On the exact 16×3 real-label vector space, establish projected tensor-factor commutation and orientation with the original source spinor and color matrices. Check the Spin9 central sign independently against S1V50 parity.
3. Only then invoke a source-faithful continuous double-cover lifting theorem for Spin9, with explicit group-law and basis matches. If unavailable in Lean, inventory that absence as an engineering barrier rather than add a free lift hypothesis and claim physical closure.
4. Independently continue exact original S3L cubic R4 response / source S3E2 coefficient work. A genuinely false coefficient or central-sign convention is a scientific stop and must be recorded with counterexample; repeated recursion / implicit-transparency reds demand smaller native source interfaces.
5. Extend to physical `FullL2 2` and the closed form only after the preceding original-source identities are qualified. The exact high-spin sector spectral S2–S8 chain in Issue #29 stays unpromoted.

**Accounting:** zero new mathematically qualified principal theorem roots; no positive eigenvectors constructed. Source/CI evidence must independently qualify every BFSS application of the conditional group lemma.
