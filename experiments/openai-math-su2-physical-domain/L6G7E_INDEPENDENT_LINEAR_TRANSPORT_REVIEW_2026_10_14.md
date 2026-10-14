# Issue #26: independent L6G7E linear transport investigation

Date: 2026-10-14. Result: `SOURCE_DERIVED` — strict kernel/axiom qualification passed. Review is confined to the original bounded Majorana commutator evolution.

## Frozen inputs

- Issue: https://github.com/etblink/Foundational-Convergence-Program/issues/26
- Project Lead branch frozen at `489051d4a284d1b2eb83bc28d708179ddcea7a4c`.
- Handoff: [L6G7E_ASTRA_INDEPENDENT_PROOF_HANDOFF_2026_10_14.md](L6G7E_ASTRA_INDEPENDENT_PROOF_HANDOFF_2026_10_14.md).
- Original mathematical source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Isolated branch: `research/openai-math-su2-l6g7e-independent-linear`. No active-branch merge, rebase or overwrite.

## Independent mathematical check

For fixed source color c and spin s, write J for the ORIGINAL source generator, theta_d for `pairedAlgebraData.theta s d`, F_bd for `pairedAlgebraData.structureConstant b d c`, and r_d(t) for the ORIGINAL `adjointCoefficient (sourcePlusIGaugeCurve c t) A d`. The already qualified exact commutator is

`J * theta_d - theta_d * J = sum_b (F_bd : complex) smul theta_b`.

Equivalently, with the source coefficient-to-operator map

$$\Phi_s(r)=\sum_b(r_b:\mathbb C)\theta_{s,b},\qquad
\operatorname{ad}_J(T)=JT-TJ,$$

with the original real matrix $C_c=(F_{bd})$, the finite-color identity is

$$\operatorname{ad}_J\Phi_s(r)=\Phi_s(C_c r).$$

This has the same output b/input d order as the accepted positive-i source coefficient equation `r'_b(t) = sum_d F_bd * r_d(t)`. Applying the linear map `L(T) = J*T - T*J` to `sum_d (r_d : complex) smul theta_d` therefore gives the exact named L6G7D derivative. No finite-time implementer or ODE uniqueness premise is needed for this finite-sum step.

## Different proof interface

The new `linear_finite_color_transport` theorem uses only an abstract complex module V and a complex linear map L. It handles `map_sum`, `map_smul`, finite-sum interchange and the entire real-to-complex scalar conversion before V is specialized. This avoids performing ring algebra or scalar-cast simplification on a sum of concrete Fock operators.

`sourceCommutator` is a proved linear map on the SAME `SourceFiberEnd = Fermion 2 →L[complex] Fermion 2`. Its linearity proof has arbitrary operator arguments. `sourceCommutator_theta` then supplies the already qualified exact source commutator through a small fixed-type bridge. The final evolution proof instantiates the module theorem and combines it with the unchanged L6G7D derivative.

Local `irreducible` attributes protect `pairedAlgebraData` and `sourceFiberFermionColorGenerator` from unnecessary elaborator unfolding during the final matching. These attributes do not remove their kernel definitions, introduce axioms or change their source values. They are local to the E file. No recursion limit is increased. Continuity of L is not assumed or required: the derivative was proved in D, and E establishes an equality of its values.

The original generic ring lemma is retained unchanged as qualified prior work. The source-specific `sourceGenerator_theta_comm_output` proof and all three public theorem statements are unchanged. L6G7B/C/D files are byte-identical to the frozen input:

| Module | Git source blob |
|---|---|
| L6G7B | `134544f53e0ab2be83d449604631440d744ffe98` |
| L6G7C | `dff6bd843854e0f9c23677bb54ab0c953c2bc146` |
| L6G7D | `c5de2032486a675ffc2aaf32ca7982e32edcd662` |

## Rechecked negative knowledge

The following are observations from the actual job logs, not just the handoff description.

| Gate | Source commit | Run / job | First actual Lean failure |
|---|---|---|---|
| #178 | `432cad810150824068fdd724d93989b265b10d45` | [38534755284](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38534755284) / `115756905811` | E `46:51`: unsolved goals in generic sum factorization. Also `128:14`: recursion at concrete specialization. |
| #179 | `5ed01bb9a4897816b17f9cd290fca6ff699c434f` | [38536640554](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38536640554) / `115761007307` | E `139:4`: maximum recursion depth matching the exact source commutator into local J/theta/F aliases. |
| #180 | `74e64f301cce16b63606cdc1db8ecd4730b8b6bf` | [38538675621](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38538675621) / `115767761008` | E `129:2`: maximum recursion depth at the enlarged literal-source calc block. |

In #179 and #180 both the generic ring lemma and exact source generator/theta theorem printed only `propext`, `Classical.choice`, `Quot.sound`. Both full evolution roots printed `sorryAx`; neither red gate qualified those roots. In #178 the generic lemma also printed `sorryAx`. There is no evidence in these logs of a mathematical sign contradiction.

Avoid repeating (1) polymorphic ring specialization followed by concrete cast cleanup, (2) reducible local aliases that ask Lean to unify enormous source terms, and (3) increasingly large literal-source calc expressions. Do not infer a specific internal Lean reduction bug from the recursion error alone; the logs identify the failed elaboration boundary, not a complete reduction trace.

## Qualification evidence

The full cold-build strict run **PASSED**, including the new E module and its public-root audits.

Qualified proof commit: `0f962050f41c86ee904390c2e593852987633365`.
Strict push run **#181**: [38541152731](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38541152731), job `115775941655`.

Exact qualified E source blob: `51789633ec1e6092b45a7672baed005cab2359a9`.

[Qualified Lean source at the tested commit](https://github.com/etblink/Foundational-Convergence-Program/blob/0f962050f41c86ee904390c2e593852987633365/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.lean).

The workflow checks pinned source identities and compiler/Mathlib versions, compiles accepted B/C/D, deletes any stale E object, compiles the exact E candidate to a new `.olean`, and audits the three public E roots against exactly `propext`, `Classical.choice`, `Quot.sound`. The full E log contained neither Lean errors nor `sorryAx`. The tested `.olean` was created after deleting any prior E object, and the source blob in the log matched the qualified blob above. It retains the exact tested source and blob alongside its logs in the run artifact. Both the new helpers and all public E roots printed exactly the three allowed axioms. No target-specific retry was needed in this investigation.

The tested public conclusion is the unchanged all-time ORIGINAL operator ODE:

```lean
sourceRotatedTheta_deriv_comm_all :
  ∀ (c : ColorIndex 2) (spin : SpinIndex) (A : ColorIndex 2) (t : ℝ),
    HasDerivAt (fun u => sourceRotatedTheta c spin A u)
      (sourceFiberFermionColorGenerator pairedAlgebraData c *
          sourceRotatedTheta c spin A t -
        sourceRotatedTheta c spin A t *
          sourceFiberFermionColorGenerator pairedAlgebraData c) t
```

The audit excerpt below is copied from the actual completed job log, with GitHub timestamps and unrelated dependency warnings removed:

```text
L6G7E_ORIGINAL_THETA_COMMUTATOR_EVOLUTION_BEGIN
'_private.SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.0.FCP.BFSSSU2PhysicalDomainL6G7E.linear_finite_color_transport' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'_private.SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.0.FCP.BFSSSU2PhysicalDomainL6G7E.sourceCommutator' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'_private.SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.0.FCP.BFSSSU2PhysicalDomainL6G7E.sourceCommutator_theta' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'_private.SU2BFSSPhysicalDomainL6G7ERotatedThetaCommutatorEvolutionProbe.0.FCP.BFSSSU2PhysicalDomainL6G7E.abstract_finite_color_commutator' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.BFSSSU2PhysicalDomainL6G7E.sourceGenerator_theta_comm_output' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.BFSSSU2PhysicalDomainL6G7E.sourceRotatedTheta_comm_evolution' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'FCP.BFSSSU2PhysicalDomainL6G7E.sourceRotatedTheta_deriv_comm_all' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
sourceRotatedTheta_deriv_comm_all : ∀ (c : ColorIndex 2) (spin : SpinIndex) (A : ColorIndex 2) (t : ℝ),
  HasDerivAt (fun u => sourceRotatedTheta c spin A u)
    (sourceFiberFermionColorGenerator pairedAlgebraData c * sourceRotatedTheta c spin A t -
      sourceRotatedTheta c spin A t * sourceFiberFermionColorGenerator pairedAlgebraData c)
    t
L6G7E_ORIGINAL_THETA_COMMUTATOR_EVOLUTION_QUALIFIED

```

The successful run validates this combined linear-map interface and local transparency control. It does not isolate which change alone was decisive, nor establish a unique internal Lean cause for the earlier recursion failures. The evidence-backed conclusion is that the unchanged exact source theorem can be proved without concrete Fock-vector evaluation, recursion-limit escalation or additional axioms.

## Review and application

The mathematical patch is confined to the E source file. The workflow change adds an isolated-branch push trigger and preserves its tested E source/blob after deleting stale E objects; it leaves all existing strict audits intact. The report is a documentation-only addition after qualification. The proof source is unchanged from the qualified commit, and no merge or rebase into the active Project Lead branch was performed.

For minimal integration, review the E-file diff against the frozen input and transfer only that file; the independent push trigger is specific to this investigation branch. Keep the earlier red-gate record rather than retroactively promoting #178–#180.

Scope remains bounded source operator evolution. Integrated finite-time covariance, original gauge-implementer equality, combined Gauss constraint and spectral statements retain their separate obligations.
