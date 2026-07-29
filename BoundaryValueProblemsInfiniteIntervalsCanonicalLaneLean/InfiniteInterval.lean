import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure InfiniteIntervalPackage where
  intervalType : Type u
  endpointBehavior : Prop
  weightFunction : Prop
  compactnessProperty : Prop

structure InfiniteIntervalEvidence (I : InfiniteIntervalPackage) where
  endpointBehaviorClosed : I.endpointBehavior
  weightFunctionClosed : I.weightFunction
  compactnessPropertyClosed : I.compactnessProperty

def InfiniteIntervalClosed (I : InfiniteIntervalPackage) : Prop :=
  I.endpointBehavior ∧ I.weightFunction ∧ I.compactnessProperty

theorem infinite_interval_closed_from_evidence (I : InfiniteIntervalPackage) (E : InfiniteIntervalEvidence I) : InfiniteIntervalClosed I := by
  exact And.intro E.endpointBehaviorClosed (And.intro E.weightFunctionClosed E.compactnessPropertyClosed)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse