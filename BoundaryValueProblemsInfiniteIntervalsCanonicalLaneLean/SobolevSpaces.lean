import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure SobolevSpacePackage where
  weightFunction : ℝ → ℝ
  exponent : ℝ≥0
  normDefinition : (ℝ → ℝ) → ℝ
  completeness : Prop
  embeddingCompactness : Prop
  weightPositivity : weightFunction x > 0 for all x

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.completeness ∧ S.embeddingCompactness

theorem sobolev_space_closed (S : SobolevSpacePackage) : SobolevSpaceClosed S := by
  exact And.intro S.completeness S.embeddingCompactness

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse
