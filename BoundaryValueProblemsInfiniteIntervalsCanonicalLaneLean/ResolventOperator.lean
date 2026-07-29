import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.WeightedSobolevSpaces

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ResolventOperator {k : ℕ} {p : ℝ} {w : WeightFunction} (X : WeightedSobolevSpace k p w) where
  domain : Prop
  boundedness : Prop
  compactness : Prop
  spectralProperties : Prop

structure ResolventClosed {k : ℕ} {p : ℝ} {w : WeightFunction} (R : ResolventOperator (X := WeightedSobolevSpace k p w)) : Prop :=
  domainClosed : R.domain
  boundednessClosed : R.boundedness
  compactnessClosed : R.compactness
  spectralPropertiesClosed : R.spectralProperties

theorem resolvent_closed_from_evidence {k : ℕ} {p : ℝ} {w : WeightFunction} (R : ResolventOperator (X := WeightedSobolevSpace k p w)) (E : ResolventClosed R) : ResolventClosed R := E

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse