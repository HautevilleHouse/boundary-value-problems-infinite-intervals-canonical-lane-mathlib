import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.BVPCore

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure EndpointAnalysisPackage (I : InfiniteInterval) (bc : BoundaryCondition I) where
  asymptoticLimit : Type
  limitExists : Prop
  limitMatchesBoundary : Prop
  endpointClassification : Prop

structure EndpointAnalysisEvidence {I : InfiniteInterval} {bc : BoundaryCondition I}
    (E : EndpointAnalysisPackage I bc) where
  limitExistsClosed : E.limitExists
  limitMatchesBoundaryClosed : E.limitMatchesBoundary
  endpointClassificationClosed : E.endpointClassification

def EndpointAnalysisClosed {I : InfiniteInterval} {bc : BoundaryCondition I}
    (E : EndpointAnalysisPackage I bc) : Prop :=
  E.limitExists ∧ E.limitMatchesBoundary ∧ E.endpointClassification

theorem endpoint_analysis_closed_from_evidence {I : InfiniteInterval} {bc : BoundaryCondition I}
    (E : EndpointAnalysisPackage I bc) (Ev : EndpointAnalysisEvidence E) :
    EndpointAnalysisClosed E := by
  exact And.intro Ev.limitExistsClosed (And.intro Ev.limitMatchesBoundaryClosed Ev.endpointClassificationClosed)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse