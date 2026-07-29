import HautevilleHouse.BoundaryValueProblemsInfiniteIntervals.InfiniteIntervalBVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervals

structure AsymptoticAnalysisPackage (B : InfiniteIntervalBVP) where
  asymptoticExpansion : Prop
  stabilityAtInfinity : Prop
  decayEstimates : Prop

structure AsymptoticAnalysisEvidence (B : InfiniteIntervalBVP) (A : AsymptoticAnalysisPackage B) where
  asymptoticExpansionClosed : A.asymptoticExpansion
  stabilityAtInfinityClosed : A.stabilityAtInfinity
  decayEstimatesClosed : A.decayEstimates

def AsymptoticAnalysisClosed (B : InfiniteIntervalBVP) (A : AsymptoticAnalysisPackage B) : Prop :=
  A.asymptoticExpansion ∧ A.stabilityAtInfinity ∧ A.decayEstimates

theorem asymptotic_analysis_closed_from_evidence (B : InfiniteIntervalBVP) (A : AsymptoticAnalysisPackage B)
    (E : AsymptoticAnalysisEvidence B A) : AsymptoticAnalysisClosed B A := by
  exact And.intro E.asymptoticExpansionClosed
    (And.intro E.stabilityAtInfinityClosed E.decayEstimatesClosed)

end BoundaryValueProblemsInfiniteIntervals
end HautevilleHouse