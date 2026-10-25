import SU2BFSSPhysicalDomainS3L5J7OriginalFullResponseCoefficientTransportProbe

/-!
# S3L5J8 — contract the exact original -i gamma/J kinetic coefficient

Gate #73 established the exact full 9×3×16 genuine-source response as
one indexed sum with pairedKineticResponseCoefficient. Gate #64
established the real-to-complex Clifford coefficient identity with the
literal original -Complex.I coefficient. This gate connects them using
small scalar identities only, without elaborating any full Fock operator.

The final operator-valued free-spinor sum exchange and identification
with the true source kinetic charge remain a separate gate.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J8
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5J2
open FCP.BFSSSU2PhysicalDomainS3L5J7

/-- The orbital coefficient from accepted J6 is exactly the source
Clifford real orbital correction multiplied by original -Complex.I. -/
theorem pairedOrbitalCoefficient_isMinusI
    (i j k : SpaceIndex) (α γ : SpinIndex) (A : ColorIndex 2) :
    (if k = i then kineticWeight pairedAlgebraData α j A γ
     else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
     else 0) =
      -Complex.I *
        (((if k = i then pairedAlgebraData.gamma j α γ
          else if k = j then -(pairedAlgebraData.gamma i α γ)
          else (0 : ℝ))) : ℂ) := by
  by_cases hki : k = i
  · simp [hki, kineticWeight]
  · by_cases hkj : k = j
    · simp [hkj, kineticWeight, mul_neg]
    · simp [hki, hkj]

/-- Exchange original -i factor with the exact source 16-spinor
fermionic gamma/J coefficient sum. -/
theorem pairedFiberCoefficient_isMinusI
    (i j k : SpaceIndex) (α γ : SpinIndex) (A : ColorIndex 2) :
    (∑ β : SpinIndex,
      kineticWeight pairedAlgebraData α k A β *
        ((pairedPlaneSpinGenerator i j γ β : ℝ) : ℂ)) =
    -Complex.I * (∑ β : SpinIndex,
      (pairedAlgebraData.gamma k α β : ℂ) *
        (pairedPlaneSpinGenerator i j γ β : ℂ)) := by
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro β _
  dsimp [kineticWeight]
  ring

/-- The exact desired -J free-spinor coefficient is equal to -i
times the negative real Clifford J-gamma contraction. -/
theorem pairedFreeSpinorCoefficient_isMinusI
    (i j k : SpaceIndex) (α γ : SpinIndex) (A : ColorIndex 2) :
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) *
        kineticWeight pairedAlgebraData β k A γ) =
    -Complex.I *
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          (pairedAlgebraData.gamma k β γ : ℂ))) := by
  calc
    _ = -(∑ β : SpinIndex,
      (-Complex.I) *
        ((pairedPlaneSpinGenerator i j α β : ℂ) *
         (pairedAlgebraData.gamma k β γ : ℂ))) := by
          congr 1
          apply Finset.sum_congr rfl
          intro β _
          dsimp [kineticWeight]
          ring
    _ = -((-Complex.I) * (∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) *
        (pairedAlgebraData.gamma k β γ : ℂ))) := by
          rw [Finset.mul_sum]
    _ = _ := by ring

/-- Actual SU(2) source coefficient contraction, with ALL original
kinetic gamma and color/spinor coefficients. The J2 Clifford input is
fully qualified; this theorem has no added source representation or
physical assumption. Operator-level sum transport remains separate. -/
theorem pairedOriginalKineticResponseCoefficient_contract
    (i j k : SpaceIndex) (hij : i ≠ j)
    (α γ : SpinIndex) (A : ColorIndex 2) :
    pairedKineticResponseCoefficient i j α k A γ =
      -(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          kineticWeight pairedAlgebraData β k A γ) := by
  calc
    pairedKineticResponseCoefficient i j α k A γ =
      -Complex.I *
        ((∑ β : SpinIndex,
          (pairedAlgebraData.gamma k α β : ℂ) *
            (pairedPlaneSpinGenerator i j γ β : ℂ)) +
          (((if k = i then pairedAlgebraData.gamma j α γ
            else if k = j then -(pairedAlgebraData.gamma i α γ)
            else (0 : ℝ))) : ℂ)) := by
              dsimp only [pairedKineticResponseCoefficient]
              rw [pairedOrbitalCoefficient_isMinusI i j k α γ A,
                pairedFiberCoefficient_isMinusI i j k α γ A]
              ring
    _ = -Complex.I *
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          (pairedAlgebraData.gamma k β γ : ℂ))) :=
        pairedMinusI_KineticCoefficient_reindexed i j k α γ hij
    _ = _ :=
      (pairedFreeSpinorCoefficient_isMinusI i j k α γ A).symm

#print axioms pairedOrbitalCoefficient_isMinusI
#print axioms pairedFiberCoefficient_isMinusI
#print axioms pairedFreeSpinorCoefficient_isMinusI
#print axioms pairedOriginalKineticResponseCoefficient_contract

end
end FCP.BFSSSU2PhysicalDomainS3L5J8
