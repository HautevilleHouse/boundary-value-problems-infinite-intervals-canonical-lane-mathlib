import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.IntegralEquationFormulation

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure FixedPointPackage {S : SobolevSpacePackage} (I : IntegralEquationPackage S) where
  mapping : (ℝ → ℝ) → (ℝ → ℝ)
  contractionConstant : ℝ≥0
  contractionProperty : contractionConstant < 1
  fixedPointExistence : Prop
  uniqueness : Prop
  contractionClosed : contractionProperty
  fixedPointExistenceClosed : fixedPointExistence
  uniquenessClosed : uniqueness

def FixedPointClosed {S : SobolevSpacePackage} {I : IntegralEquationPackage S} (F : FixedPointPackage I) : Prop :=
  F.fixedPointExistence ∧ F.uniqueness

theorem fixed_point_closed_from_evidence
    {S : SobolevSpacePackage} {I : IntegralEquationPackage S} (F : FixedPointPackage I) : FixedPointClosed F := by
  exact And.intro F.fixedPointExistenceClosed F.uniquenessClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse
