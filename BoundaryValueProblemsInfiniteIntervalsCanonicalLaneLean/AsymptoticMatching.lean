import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervals

structure AsymptoticMatchingPackage where
  decayCondition : Prop
  asymptoticExpansion : Prop
  boundaryLayerResolution : Prop
  matchingErrorEstimates : Prop

structure AsymptoticMatchingEvidence (A : AsymptoticMatchingPackage) where
  decayConditionClosed : A.decayCondition
  asymptoticExpansionClosed : A.asymptoticExpansion
  boundaryLayerResolutionClosed : A.boundaryLayerResolution
  matchingErrorEstimatesClosed : A.matchingErrorEstimates

def AsymptoticMatchingClosed (A : AsymptoticMatchingPackage) : Prop :=
  A.decayCondition ∧ A.asymptoticExpansion ∧ A.boundaryLayerResolution ∧ A.matchingErrorEstimates

theorem asymptotic_matching_closed_from_evidence (A : AsymptoticMatchingPackage)
    (E : AsymptoticMatchingEvidence A) : AsymptoticMatchingClosed A := by
  exact And.intro E.decayConditionClosed
    (And.intro E.asymptoticExpansionClosed
      (And.intro E.boundaryLayerResolutionClosed E.matchingErrorEstimatesClosed))

end BoundaryValueProblemsInfiniteIntervals
end HautevilleHouse