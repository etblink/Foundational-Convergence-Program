import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Topology.Algebra.Module.LinearPMap

/-!
FCP M4F7 B5 generic restricted product-range inclusion.

For arbitrary complex-linear input/charge maps and any opaque core
submodule, the restricted graph range lies in the true unrestricted
graph range. A separately named graph alias G is handled by explicit
hG equality. The proof has no BFSS Lp/fermion/charge definitions and
does not invoke C2's expensive literal Set equality.

These are supporting mathematics, not principal BFSS roots.
-/

set_option autoImplicit false
set_option maxHeartbeats 100000

namespace FCP.M4F7GenericRestrictedProductRangeInclusion
noncomputable section

/-- Restricting the input core of a graph does not create new graph
points. This statement is proved over completely abstract modules. -/
theorem restricted_product_range_le_named
    {X Y Z : Type*}
    [AddCommGroup X] [AddCommGroup Y] [AddCommGroup Z]
    [Module ℂ X] [Module ℂ Y] [Module ℂ Z]
    (a : X →ₗ[ℂ] Y) (b : X →ₗ[ℂ] Z)
    (S : Submodule ℂ X) (G : Submodule ℂ (Y × Z))
    (hG : G = LinearMap.range (a.prod b)) :
    LinearMap.range
      ((a.comp S.subtype).prod (b.comp S.subtype)) ≤ G := by
  intro p hp
  rcases hp with ⟨x, rfl⟩
  rw [hG]
  exact ⟨(x : X), rfl⟩

/-- The same inclusion at the level of topological graph closures,
still with no concrete BFSS specialization or new hypotheses. -/
theorem restricted_product_closure_le_named
    {X Y Z : Type*}
    [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedAddCommGroup Z]
    [NormedSpace ℂ X] [NormedSpace ℂ Y] [NormedSpace ℂ Z]
    (a : X →ₗ[ℂ] Y) (b : X →ₗ[ℂ] Z)
    (S : Submodule ℂ X) (G : Submodule ℂ (Y × Z))
    (hG : G = LinearMap.range (a.prod b)) :
    (LinearMap.range
      ((a.comp S.subtype).prod (b.comp S.subtype))).topologicalClosure ≤
      G.topologicalClosure := by
  exact Submodule.topologicalClosure_mono
    (restricted_product_range_le_named a b S G hG)

#print axioms restricted_product_range_le_named
#print axioms restricted_product_closure_le_named

end
end FCP.M4F7GenericRestrictedProductRangeInclusion
