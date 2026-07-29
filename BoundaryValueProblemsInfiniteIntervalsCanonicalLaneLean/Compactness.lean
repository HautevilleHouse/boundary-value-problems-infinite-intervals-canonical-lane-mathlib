import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.InfiniteIntervalBVProblem

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure CompactnessPackage (P : InfiniteIntervalBVProblem) where
  sequenceCompact : Prop
  limitSolution : P.stateSpace → Prop
  compactnessArg : Prop
  compactnessArgTerm : compactnessArg

structure CompactnessEvidence (P : InfiniteIntervalBVProblem) (C : CompactnessPackage P) where
  sequenceCompactClosed : C.sequenceCompact
  limitSolutionClosed : C.limitSolution (someState : P.stateSpace)
  compactnessArgClosed : C.compactnessArg

def CompactnessClosed (P : InfiniteIntervalBVProblem) (C : CompactnessPackage P) : Prop :=
  C.compactnessArg

theorem compactness_closed_from_evidence (P : InfiniteIntervalBVProblem) (C : CompactnessPackage P) (E : CompactnessEvidence P C) :
    CompactnessClosed P C := by
  exact E.compactnessArgClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse