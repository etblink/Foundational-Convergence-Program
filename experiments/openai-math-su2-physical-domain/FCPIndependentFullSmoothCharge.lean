import FCPIndependentCubicCharge

/-!
M4E5 — source-exact complete independent smooth sixteen-supercharge family.

For each α in SpinIndex = Fin 16, define the independent charge as
the SUM of the independently constructed kinetic and cubic operators.
The entire definition is J-free and uses independently specified
input color matrices, real gamma matrices and all 48 Majorana maps.

The exact source identification is a separate theorem, using only
strictly accepted M4E3 kinetic and M4E4B cubic summand bridges.
No physical gauge-core charge restriction, closed graph/domain,
Hamiltonian operator equality or spectral conclusion is implied.
-/

set_option autoImplicit false
set_option maxHeartbeats 600000

namespace FCP.IndependentSmoothSupercharge
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.IndependentSmoothCore

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
variable [FiniteDimensional ℂ E]

/-- Genuine E-valued smooth BFSS charge for EVERY α : Fin 16,
constructed as the correct independent kinetic PLUS cubic operators.
It does not use J, source Fock operators, or source charge. -/
def independentCharge
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (α : SpinIndex) :
    IndependentTestCore E →ₗ[ℂ] IndependentTestCore E :=
  independentKineticCharge gamma theta α +
    independentCubicCharge color gamma theta α

/-- Exact identification with the LITERAL original AlgebraData.charge,
simultaneously valid for all sixteen α, on the independent smooth
core under exact color, gamma, and Majorana generator matching. -/
theorem independentCharge_intertwining
    (color : ColorIndex 2 → ColorMatrix 2)
    (gamma : SpaceIndex → GammaMatrix)
    (theta : SpinIndex → ColorIndex 2 → Module.End ℂ E)
    (J : E ≃ₗᵢ[ℂ] Fermion 2)
    (hColor : color = pairedAlgebraData.color)
    (hGamma : gamma = pairedAlgebraData.gamma)
    (hJ : ∀ α A w, J (theta α A w) = pairedTheta α A (J w))
    (α : SpinIndex) (f : IndependentTestCore E) :
    independentSmoothTransport J (independentCharge color gamma theta α f) =
      pairedAlgebraData.charge α (independentSmoothTransport J f) := by
  have hk := independentKineticCharge_intertwining
    gamma theta J hGamma hJ α f
  have hc := independentCubicCharge_intertwining
    color gamma theta J hColor hGamma hJ α f
  simp only [independentCharge, LinearMap.add_apply, map_add]
  rw [hk, hc]
  rfl

#print axioms independentCharge
#print axioms independentCharge_intertwining

end
end FCP.IndependentSmoothSupercharge
