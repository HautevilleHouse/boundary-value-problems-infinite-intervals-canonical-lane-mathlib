import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.InfiniteIntervalBVProblem
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AsymptoticCondition
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.ShootingMethod
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.Compactness

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ExistenceResultPackage (P : InfiniteIntervalBVProblem) where
  existenceProof : Prop
  proofTerm : existenceProof

def ExistenceResultClosed (P : InfiniteIntervalBVProblem) : Prop :=
  ProblemClosed P

theorem existence_result_closed (P : InfiniteIntervalBVProblem) (E : BVProblemEvidence P) :
    ExistenceResultClosed P := by
  exact problem_closed_from_evidence P E

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse