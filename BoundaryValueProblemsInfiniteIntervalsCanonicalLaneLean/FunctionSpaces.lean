import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure WeightedSobolevSpace (X : InfiniteIntervalSpace) where
  weightFunction : X.carrier → ℝ
  weightDecayAtInfinity : Prop
  sobolevNorm : Type u
  completeness : Prop
  continuousEmbedding : Prop
  compactEmbedding : Prop

structure WeightedLebesgueSpace (X : InfiniteIntervalSpace) where
  weightFunction : X.carrier → ℝ
  weightDecayAtInfinity : Prop
  norm : Type u
  completeness : Prop
  dualSpace : Type u
  reflexivity : Prop

structure BesovSpace (X : InfiniteIntervalSpace) where
  smoothnessParameter : ℝ
  integrabilityParameter : ℝ
  norm : Type u
  embeddingProperties : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse