import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.FredholmAlternative

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure EndpointClassificationPackage {W : WeightedSobolevSpacePackage}
    {O : NonlinearOperatorPackage} {F : FredholmAlternativePackage O}
    (C : BVPBoundaryCondition) where
  solutionAtInfinity : Prop
  asymptoticDecay : Prop
  uniquenessAtEndpoint : Prop
  classificationResolved : Prop

structure EndpointClassificationEvidence {W : WeightedSobolevSpacePackage}
    {O : NonlinearOperatorPackage} {F : FredholmAlternativePackage O}
    {C : BVPBoundaryCondition} (E : EndpointClassificationPackage C) where
  solutionAtInfinityClosed : E.solutionAtInfinity
  asymptoticDecayClosed : E.asymptoticDecay
  uniquenessAtEndpointClosed : E.uniquenessAtEndpoint
  classificationResolvedClosed : E.classificationResolved

def EndpointClassificationClosed {W : WeightedSobolevSpacePackage}
    {O : NonlinearOperatorPackage} {F : FredholmAlternativePackage O}
    {C : BVPBoundaryCondition} (E : EndpointClassificationPackage C) : Prop :=
  E.solutionAtInfinity ∧ E.asymptoticDecay ∧
  E.uniquenessAtEndpoint ∧ E.classificationResolved

theorem endpoint_classification_closed_from_evidence
    {W : WeightedSobolevSpacePackage} {O : NonlinearOperatorPackage}
    {F : FredholmAlternativePackage O} {C : BVPBoundaryCondition}
    (E : EndpointClassificationPackage C) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.solutionAtInfinityClosed
    (And.intro Ev.asymptoticDecayClosed
      (And.intro Ev.uniquenessAtEndpointClosed Ev.classificationResolvedClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse