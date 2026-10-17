import SU2BFSSPhysicalDomainS3L5J9ActualKineticFreeSpinorCovarianceProbe

/-!
# S3L5K1 — exact original cubic position-pair rotation

Gate #76 completed the literal 9×3×16 source kinetic charge.
The separate cubic source charge from S3L5A contains 2 original
coordinate multipliers for each monomial, with 1/2 * structureConstant
* gammaTwo coefficients. Before touching that 9×9×3×3×3×16 sum,
prove the Leibniz commutator on the ORIGINAL SmoothCore 2, then
instantiate both source position multipliers and the actual paired
48-Majorana combined rotation generator.

No hidden fiber hypothesis, new Fock representation, potential
coefficient contraction, Hamiltonian domain or spectrum assertion.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K1
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L3C
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F

/-- Exact composition commutator derivation on genuine original
SmoothCore 2 endomorphisms, with all hypotheses visible. -/
theorem sourceComm_comp
    (G P Q ΔP ΔQ : SourceEnd)
    (hP : G.comp P - P.comp G = ΔP)
    (hQ : G.comp Q - Q.comp G = ΔQ) :
    G.comp (P.comp Q) - (P.comp Q).comp G =
      ΔP.comp Q + P.comp ΔQ := by
  calc
    _ = (G.comp P - P.comp G).comp Q +
        P.comp (G.comp Q - Q.comp G) := by
          apply LinearMap.ext
          intro f
          simp only [LinearMap.add_apply, LinearMap.sub_apply,
            LinearMap.comp_apply, map_sub]
          abel
    _ = _ := by rw [hP, hQ]

/-- The literal original source position response for spatial plane
i,j. It is the S3L3C result, not a new position operator. -/
noncomputable def sourcePositionVariation
    (i j k : SpaceIndex) (B : ColorIndex 2) : SourceEnd :=
  if k = j then position (N := 2) i B
  else if k = i then -(position (N := 2) j B)
  else 0

/-- Original source combined orbital + arbitrary bounded fiber plane
commutator on a genuine coordinate multiplier. The fiber part
commutes with source position and is discharged without a premise. -/
theorem sourceCombined_comm_position
    (K : FockEnd) (i j k : SpaceIndex)
    (B : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane K i j).comp
        (position (N := 2) k B) -
      (position (N := 2) k B).comp
        (sourceParametricCombinedPlane K i j) =
      sourcePositionVariation i j k B := by
  have hL := pairedSourceOrbital_comm_position i j k B hij
  have hK :
      (sourcePostcomp K).comp (position (N := 2) k B) -
        (position (N := 2) k B).comp (sourcePostcomp K) =
        (0 : SourceEnd) :=
      sub_eq_zero.mpr (sourcePostcomp_comm_position K k B)
  change (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K).comp
      (position (N := 2) k B) -
    (position (N := 2) k B).comp
      (pairedSourceOrbitalPlaneGenerator i j + sourcePostcomp K) =
      sourcePositionVariation i j k B
  rw [sourceComm_sum_of_components
    (pairedSourceOrbitalPlaneGenerator i j) (sourcePostcomp K)
    (position (N := 2) k B) (sourcePositionVariation i j k B) 0
    (by simpa only [sourcePositionVariation] using hL) hK]
  simp

/-- The source-defined two-position potential factor transforms
by a Leibniz rule with EXACT source position variations and order. -/
theorem sourceCombined_comm_positionPair
    (K : FockEnd) (i j k l : SpaceIndex)
    (B C : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane K i j).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) -
    ((position (N := 2) k B).comp (position (N := 2) l C)).comp
      (sourceParametricCombinedPlane K i j) =
      (sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C) := by
  exact sourceComm_comp
    (sourceParametricCombinedPlane K i j)
    (position (N := 2) k B) (position (N := 2) l C)
    (sourcePositionVariation i j k B)
    (sourcePositionVariation i j l C)
    (sourceCombined_comm_position K i j k B hij)
    (sourceCombined_comm_position K i j l C hij)

/-- Concrete specialization: the ORIGINAL paired 48-Majorana
fermionic spin generator, not an invented independent fiber action. -/
theorem pairedActualCombined_comm_positionPair
    (i j k l : SpaceIndex) (B C : ColorIndex 2) (hij : i ≠ j) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)) -
    ((position (N := 2) k B).comp (position (N := 2) l C)).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      (sourcePositionVariation i j k B).comp (position (N := 2) l C) +
      (position (N := 2) k B).comp (sourcePositionVariation i j l C) := by
  exact sourceCombined_comm_positionPair
    (pairedFermionPlaneSpinGenerator i j) i j k l B C hij

#print axioms sourceComm_comp
#print axioms sourceCombined_comm_position
#print axioms sourceCombined_comm_positionPair
#print axioms pairedActualCombined_comm_positionPair

end
end FCP.BFSSSU2PhysicalDomainS3L5K1
