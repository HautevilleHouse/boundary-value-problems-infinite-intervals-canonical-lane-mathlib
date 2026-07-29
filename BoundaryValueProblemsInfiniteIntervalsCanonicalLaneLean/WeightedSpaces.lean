import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.SobolevSpacesInfiniteIntervals

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure WeightedSpacePackage {S : SobolevSpacePackage} where
  weightFunction : S.domain → ℝ
  weightedNorm : Type
  compactEmbeddingWeighted : Prop
  poincareInequalityWeighted : Prop

structure WeightedSpaceEvidence {S : SobolevSpacePackage} (W : WeightedSpacePackage S) where
  compactEmbeddingWeightedClosed : W.compactEmbeddingWeighted
  poincareInequalityWeightedClosed : W.poincareInequalityWeighted

def WeightedSpaceClosed {S : SobolevSpacePackage} (W : WeightedSpacePackage S) : Prop :=
  W.compactEmbeddingWeighted ∧ W.poincareInequalityWeighted

theorem weighted_space_closed_from_evidence {S : SobolevSpacePackage} (W : WeightedSpacePackage S) (E : WeightedSpaceEvidence W) :
    WeightedSpaceClosed W := by
  exact And.intro E.compactEmbeddingWeightedClosed E.poincareInequalityWeightedClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse