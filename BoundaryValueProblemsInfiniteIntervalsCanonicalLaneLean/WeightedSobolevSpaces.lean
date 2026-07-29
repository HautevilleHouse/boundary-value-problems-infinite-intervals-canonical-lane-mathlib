import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure WeightFunction where
  exponent : ℝ
  decayType : String
  locallyIntegrable : Prop

def standardWeight (α : ℝ) : WeightFunction :=
  { exponent := α, decayType := "exponential", locallyIntegrable := True }

structure WeightedSobolevSpace (k : ℕ) (p : ℝ) (w : WeightFunction) where
  norm : Prop
  completeness : Prop
  embeddingTheorem : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse