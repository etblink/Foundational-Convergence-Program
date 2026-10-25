import SU2BFSSPhysicalDomainS3L3BSourceOperatorHeisenbergProbe

/-!
# BFSS SU(2) S3L3C — original-core orbital-position commutator

The actual upstream position maps are commuting coordinate multipliers.
Combining this fact with the exact accepted S3L3B derivative-position
commutator and S3L1 source orbital operator, prove the source endomorphism
identity [L_ij, x_k^B] = δ_jk x_i^B - δ_ik x_j^B.

Everything acts on the real pinned `SmoothCore 2` over ℂ. No extra
physical Hilbert-space assumptions, no abstract surrogate operators, no
claims about the closed Hamiltonian or point spectrum.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L3C
noncomputable section

open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L3B

private abbrev SourceEnd := SmoothCore 2 →ₗ[ℂ] SmoothCore 2

/-- Literal source position multipliers commute on the true test core. -/
theorem sourcePosition_comp_comm
    (i k : SpaceIndex) (A B : ColorIndex 2) :
    (position (N := 2) i A).comp (position (N := 2) k B) =
      (position (N := 2) k B).comp (position (N := 2) i A) := by
  apply LinearMap.ext
  intro f
  apply DFunLike.ext
  intro x
  change
    (((x (i, A) : ℝ) : ℂ) • (((x (k, B) : ℝ) : ℂ) • f x)) =
      (((x (k, B) : ℝ) : ℂ) • (((x (i, A) : ℝ) : ℂ) • f x))
  exact smul_comm _ _ _

/-- Pure linear-map derivation law, with the composition order visible. -/
private theorem product_comm_of_position_comm
    (P D Q T : SourceEnd)
    (hPQ : P.comp Q = Q.comp P)
    (hDQ : D.comp Q - Q.comp D = T) :
    (P.comp D).comp Q - Q.comp (P.comp D) = P.comp T := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.sub_apply, LinearMap.comp_apply]
  have hc : Q (P (D f)) = P (Q (D f)) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hPQ.symm
  have hd : D (Q f) - Q (D f) = T f := by
    simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hDQ
  calc
    P (D (Q f)) - Q (P (D f)) =
        P (D (Q f)) - P (Q (D f)) := by rw [hc]
    _ = P (D (Q f) - Q (D f)) := (map_sub P _ _).symm
    _ = P (T f) := by rw [hd]

private theorem sourceMonomial_comm_position
    (i j k : SpaceIndex) (A B : ColorIndex 2) :
    ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)).comp
        (position (N := 2) k B) -
      (position (N := 2) k B).comp
        ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) =
      if (j, A) = (k, B) then position (N := 2) i A else 0 := by
  rw [product_comm_of_position_comm
    (position (N := 2) i A) (coordinateDerivative (N := 2) j A)
    (position (N := 2) k B)
    (if (j, A) = (k, B) then (LinearMap.id : SourceEnd) else 0)
    (sourcePosition_comp_comm i k A B)
    (sourceCoordinateDerivative_position_commutator_operator j k A B)]
  split_ifs <;> simp only [LinearMap.comp_id, LinearMap.comp_zero]

/-- Source orbital summands transform each coordinate with the real
spatial rotation signs, without leaving the original smooth core. -/
private theorem sourceOrbitalSummand_comm_position
    (i j k : SpaceIndex) (A B : ColorIndex 2) :
    (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
      ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))).comp
        (position (N := 2) k B) -
      (position (N := 2) k B).comp
        (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
         ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))) =
      (if (j, A) = (k, B) then position (N := 2) i A else 0) -
      (if (i, A) = (k, B) then position (N := 2) j A else 0) := by
  rw [LinearMap.sub_comp, LinearMap.comp_sub]
  have h :=
    sourceMonomial_comm_position i j k A B
  have h' :=
    sourceMonomial_comm_position j i k A B
  -- Additive rearrangement of the two original operator products.
  calc
    _ = (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)).comp
          (position (N := 2) k B) -
        (position (N := 2) k B).comp
          ((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A))) -
        (((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A)).comp
          (position (N := 2) k B) -
        (position (N := 2) k B).comp
          ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))) := by abel
    _ = _ := by rw [h, h']

private theorem sourceOrbital_comm_sum
    (i j k : SpaceIndex) (B : ColorIndex 2) :
    (pairedSourceOrbitalPlaneGenerator i j).comp (position (N := 2) k B) -
      (position (N := 2) k B).comp (pairedSourceOrbitalPlaneGenerator i j) =
      ∑ A : ColorIndex 2,
        ((if (j, A) = (k, B) then position (N := 2) i A else 0) -
         (if (i, A) = (k, B) then position (N := 2) j A else 0)) := by
  apply LinearMap.ext
  intro f
  simp only [pairedSourceOrbitalPlaneGenerator,
    LinearMap.sub_apply, LinearMap.comp_apply, LinearMap.sum_apply,
    map_sum]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro A _
  simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
    congrArg (fun H : SourceEnd => H f) (sourceOrbitalSummand_comm_position i j k A B)

private theorem sourceColorDeltaSum
    (a k b : SpaceIndex) (B : ColorIndex 2) :
    (∑ A : ColorIndex 2,
       if (a, A) = (k, B) then position (N := 2) b A else 0) =
      if a = k then position (N := 2) b B else 0 := by
  classical
  by_cases h : a = k
  · subst k
    simp
  · have hneq : ∀ A : ColorIndex 2, (a, A) ≠ (k, B) := by
      intro A hab
      exact h (congrArg Prod.fst hab)
    simp [h, hneq]

/-- The actual source spatial orbital generator rotates the original
position operators by the exact SO(9) plane convention. -/
theorem pairedSourceOrbital_comm_position
    (i j k : SpaceIndex) (B : ColorIndex 2) (hij : i ≠ j) :
    (pairedSourceOrbitalPlaneGenerator i j).comp (position (N := 2) k B) -
      (position (N := 2) k B).comp (pairedSourceOrbitalPlaneGenerator i j) =
      if k = j then position (N := 2) i B
      else if k = i then -(position (N := 2) j B)
      else 0 := by
  rw [sourceOrbital_comm_sum]
  rw [Finset.sum_sub_distrib,
    sourceColorDeltaSum j k i B, sourceColorDeltaSum i k j B]
  by_cases hkj : k = j
  · subst k
    simp [hij, hij.symm]
  · by_cases hki : k = i
    · subst k
      simp [hij]
    · simp [hkj, hki, Ne.symm hkj, Ne.symm hki]

#print axioms sourcePosition_comp_comm
#print axioms pairedSourceOrbital_comm_position

end
end FCP.BFSSSU2PhysicalDomainS3L3C
