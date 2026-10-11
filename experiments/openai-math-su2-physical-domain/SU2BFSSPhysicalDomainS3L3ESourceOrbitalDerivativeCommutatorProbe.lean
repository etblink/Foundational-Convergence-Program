import SU2BFSSPhysicalDomainS3L3DSourceMixedDerivativeCommutatorProbe

/-!
# BFSS SU(2) S3L3E — original orbital/derivative covariance

This is a prospective proof of [L_ij, ∂_(k,B)] on the true pinned
SmoothCore 2, using the S3L1 source L, S3L3B exact Heisenberg law,
and the S3L3D literal mixed derivative commutator.

Do not treat S3L3E as qualified before the exact pinned Lean gate.
No claim about closed Hamiltonian domains or the physical spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L3E
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L3B
open FCP.BFSSSU2PhysicalDomainS3L3D

private abbrev SourceEnd := SmoothCore 2 →ₗ[ℂ] SmoothCore 2

/-- The commutator of P∘D and Q when D commutes with Q
is the original commutator [P,Q] postcomposed with D. -/
private theorem sourceProduct_comm_derivative
    (P D Q T : SourceEnd)
    (hDQ : D.comp Q = Q.comp D)
    (hPQ : P.comp Q - Q.comp P = T) :
    (P.comp D).comp Q - Q.comp (P.comp D) = T.comp D := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.sub_apply, LinearMap.comp_apply]
  have hd : D (Q f) = Q (D f) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hDQ
  have hp : P (Q (D f)) - Q (P (D f)) = T (D f) := by
    simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hPQ
  calc
    P (D (Q f)) - Q (P (D f)) =
      P (Q (D f)) - Q (P (D f)) := by rw [hd]
    _ = T (D f) := hp

private theorem sourcePosition_comm_derivative
    (i k : SpaceIndex) (A B : ColorIndex 2) :
    (position (N := 2) i A).comp (coordinateDerivative (N := 2) k B) -
      (coordinateDerivative (N := 2) k B).comp (position (N := 2) i A) =
      -(if (k, B) = (i, A) then (LinearMap.id : SourceEnd) else 0) := by
  have h := sourceCoordinateDerivative_position_commutator_operator k i B A
  calc
    _ = -((coordinateDerivative (N := 2) k B).comp (position (N := 2) i A) -
          (position (N := 2) i A).comp (coordinateDerivative (N := 2) k B)) := by abel
    _ = _ := congrArg Neg.neg h

private theorem sourceMonomial_comm_derivative
    (i j k : SpaceIndex) (A B : ColorIndex 2) :
    ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)).comp
        (coordinateDerivative (N := 2) k B) -
      (coordinateDerivative (N := 2) k B).comp
        ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) =
      if (k, B) = (i, A) then -(coordinateDerivative (N := 2) j A) else 0 := by
  rw [sourceProduct_comm_derivative
    (position (N := 2) i A) (coordinateDerivative (N := 2) j A)
    (coordinateDerivative (N := 2) k B)
    (-(if (k, B) = (i, A) then (LinearMap.id : SourceEnd) else 0))
    (sourceCoordinateDerivative_comp_comm j k A B)
    (sourcePosition_comm_derivative i k A B)]
  split_ifs <;> simp only [LinearMap.neg_comp, LinearMap.id_comp,
    LinearMap.zero_comp, neg_zero]

private theorem sourceOrbitalSummand_comm_derivative
    (i j k : SpaceIndex) (A B : ColorIndex 2) :
    (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
      ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))).comp
        (coordinateDerivative (N := 2) k B) -
      (coordinateDerivative (N := 2) k B).comp
        (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
         ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))) =
      (if (k, B) = (i, A) then -(coordinateDerivative (N := 2) j A) else 0) -
      (if (k, B) = (j, A) then -(coordinateDerivative (N := 2) i A) else 0) := by
  rw [LinearMap.sub_comp, LinearMap.comp_sub]
  have h := sourceMonomial_comm_derivative i j k A B
  have h' := sourceMonomial_comm_derivative j i k A B
  calc
    _ = (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)).comp
          (coordinateDerivative (N := 2) k B) -
        (coordinateDerivative (N := 2) k B).comp
          ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A))) -
        (((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A)).comp
          (coordinateDerivative (N := 2) k B) -
        (coordinateDerivative (N := 2) k B).comp
          ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))) := by abel
    _ = _ := by rw [h, h']

private theorem sourceOrbital_comm_derivative_sum
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceOrbitalPlaneGenerator i j).comp
        (coordinateDerivative (N := 2) k B) -
      (coordinateDerivative (N := 2) k B).comp
        (pairedSourceOrbitalPlaneGenerator i j) =
      ∑ A : ColorIndex 2,
        ((if (k, B) = (i, A) then -(coordinateDerivative (N := 2) j A) else 0) -
         (if (k, B) = (j, A) then -(coordinateDerivative (N := 2) i A) else 0)) := by
  apply LinearMap.ext
  intro f
  simp only [pairedSourceOrbitalPlaneGenerator,
    LinearMap.sub_apply, LinearMap.comp_apply, LinearMap.sum_apply, map_sum]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro A _
  simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
    congrArg (fun H : SourceEnd => H f) (sourceOrbitalSummand_comm_derivative i j k A B)

private theorem sourceDerivativeColorDeltaSum
    (a k b : SpaceIndex) (B : ColorIndex 2) :
    (∑ A : ColorIndex 2,
      if (k, B) = (a, A) then -(coordinateDerivative (N := 2) b A) else 0) =
      if a = k then -(coordinateDerivative (N := 2) b B) else 0 := by
  classical
  by_cases h : a = k
  · subst k
    simp
  · have hneq : ∀ A : ColorIndex 2, (k, B) ≠ (a, A) := by
      intro A hab
      exact h (congrArg Prod.fst hab).symm
    simp [h, hneq]

/-- Exact source orbital-generator covariance of coordinate derivatives.
No artificial derivative-commutation assumption: S3L3D was derived on
the true smooth test core from C² mixed second derivatives. -/
theorem pairedSourceOrbital_comm_derivative
    (i j k : SpaceIndex) (B : ColorIndex 2) (hij : i ≠ j) :
    (pairedSourceOrbitalPlaneGenerator i j).comp
        (coordinateDerivative (N := 2) k B) -
      (coordinateDerivative (N := 2) k B).comp
        (pairedSourceOrbitalPlaneGenerator i j) =
      if k = j then coordinateDerivative (N := 2) i B
      else if k = i then -(coordinateDerivative (N := 2) j B)
      else 0 := by
  rw [sourceOrbital_comm_derivative_sum]
  rw [Finset.sum_sub_distrib,
    sourceDerivativeColorDeltaSum i k j B,
    sourceDerivativeColorDeltaSum j k i B]
  by_cases hkj : k = j
  · subst k
    simp [hij, hij.symm]
  · by_cases hki : k = i
    · subst k
      simp [hij, hij.symm]
    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]

#print axioms pairedSourceOrbital_comm_derivative

end
end FCP.BFSSSU2PhysicalDomainS3L3E
