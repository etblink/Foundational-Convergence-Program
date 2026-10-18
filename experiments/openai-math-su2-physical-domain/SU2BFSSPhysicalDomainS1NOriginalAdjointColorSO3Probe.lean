import SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe
import SU2BFSSG3AAdjointColorRepresentationProbe
import Mathlib.LinearAlgebra.UnitaryGroup

/-!
S1N — the ACTUAL normalized-Pauli SU(2) color adjoint matrix has
determinant +1, not merely determinant squared equal to 1.

The old S1C determinant-squared lemma applies only to the 3×3
adjoint color matrix; S1J and S1K established SO(48) for duplicated
48 real generators, which does NOT imply orientation of the individual
three-dimensional color action.

Here we use the previously kernel-qualified S1E generic multiplicative
complex character theorem, together with the actual S1F/S1G positive-i
source gauge curves and source Euler factorization. The map
g ↦ (det (adjointColorMatrix g) : ℂ) is proved to be a character,
and that exact character must be trivial. No connectedness axiom,
surrogate group, sign convention change, or abstract homomorphism
existence premise is introduced.

No Spin(48) lift, independent manuscript Clifford representation,
unitary intertwiner, Hamiltonian equivalence, or spectrum follows.
-/

set_option autoImplicit false
set_option maxHeartbeats 260000

namespace FCP.BFSSSU2PhysicalDomainS1N
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2PhysicalDomainS1E
open FCP.BFSSSU2PhysicalDomainS1F
open FCP.BFSSSU2PhysicalDomainS1G
open FCP.BFSSSU2PhysicalDomainL6H5E8Y

/-- The determinant of the original real SU(2) adjoint color matrix,
embedded into ℂ so S1E's GENERAL source-character proof applies. -/
noncomputable def sourceAdjointDetCharacter (g : GaugeGroup 2) : ℂ :=
  ((adjointColorMatrix g).det : ℂ)

theorem sourceAdjointDetCharacter_one :
    sourceAdjointDetCharacter (1 : GaugeGroup 2) = 1 := by
  simp [sourceAdjointDetCharacter, adjointColorMatrix_one]

theorem sourceAdjointDetCharacter_mul (g h : GaugeGroup 2) :
    sourceAdjointDetCharacter (g * h) =
      sourceAdjointDetCharacter g * sourceAdjointDetCharacter h := by
  simp only [sourceAdjointDetCharacter, adjointColorMatrix_mul,
    Matrix.det_mul, Complex.ofReal_mul]

/-- Triviality of the actual source SU(2) determinant character;
all source-Euler and root-curve premises are discharged by the
previously qualified S1F/S1G theorems. -/
theorem sourceAdjointDetCharacter_trivial (g : GaugeGroup 2) :
    sourceAdjointDetCharacter g = 1 := by
  exact scalar_character_trivial_of_zyz
    sourceAdjointDetCharacter
    sourceAdjointDetCharacter_one
    sourceAdjointDetCharacter_mul
    sourceZ sourceY
    original_source_z_flip original_source_y_flip
    original_source_z_half original_source_y_half
    original_source_zyz_exists g

/-- TRUE 3×3 color orientation: S1C's squared determinant and
S1J/S1K's even duplication are no longer being mistaken for this. -/
theorem sourceAdjointColorMatrix_det_one (g : GaugeGroup 2) :
    (adjointColorMatrix g).det = 1 := by
  apply Complex.ofReal_injective
  simpa only [sourceAdjointDetCharacter, Complex.ofReal_one] using
    (sourceAdjointDetCharacter_trivial g)

/-- The exact original 3×3 adjoint color action lies in SO(3). -/
noncomputable def sourceAdjointColorSO (g : GaugeGroup 2) :
    Matrix.specialOrthogonalGroup (ColorIndex 2) ℝ := by
  refine ⟨adjointColorMatrix g, ?_⟩
  rw [Matrix.mem_specialOrthogonalGroup_iff]
  exact ⟨(Matrix.mem_orthogonalGroup_iff' (ColorIndex 2) ℝ).2
    (adjointColorMatrix_orthogonal g),
    sourceAdjointColorMatrix_det_one g⟩

/-- The original normalized-Pauli SU(2) adjoint color representation,
typed as an actual SU(2) → SO(3) group homomorphism. -/
noncomputable def sourceAdjointColorSOHom :
    GaugeGroup 2 →* Matrix.specialOrthogonalGroup (ColorIndex 2) ℝ where
  toFun := sourceAdjointColorSO
  map_one' := by
    apply Subtype.ext
    change adjointColorMatrix 1 = 1
    exact adjointColorMatrix_one
  map_mul' g h := by
    apply Subtype.ext
    change adjointColorMatrix (g*h) =
      adjointColorMatrix g * adjointColorMatrix h
    exact adjointColorMatrix_mul g h

#print axioms sourceAdjointDetCharacter
#print axioms sourceAdjointDetCharacter_one
#print axioms sourceAdjointDetCharacter_mul
#print axioms sourceAdjointDetCharacter_trivial
#print axioms sourceAdjointColorMatrix_det_one
#print axioms sourceAdjointColorSO
#print axioms sourceAdjointColorSOHom

end
end FCP.BFSSSU2PhysicalDomainS1N
