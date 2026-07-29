import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.InfiniteIntervalBVProblem

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure AsymptoticConditionPackage (P : InfiniteIntervalBVProblem) where
  decayCondition : (t : ℝ) → P.stateSpace → Prop
  limitCondition : (P.stateSpace → P.stateSpace)
  asymptoticWellPosed : Prop
  asymptoticWellPosedTerm : asymptoticWellPosed

structure AsymptoticConditionEvidence (P : InfiniteIntervalBVProblem) (A : AsymptoticConditionPackage P) where
  decayConditionClosed : A.decayCondition 0 (someState : P.stateSpace)
  limitConditionClosed : A.limitCondition (someState) = someState
  asymptoticWellPosedClosed : A.asymptoticWellPosed

def AsymptoticConditionClosed (P : InfiniteIntervalBVProblem) (A : AsymptoticConditionPackage P) : Prop :=
  A.asymptoticWellPosed

theorem asymptotic_condition_closed_from_evidence (P : InfiniteIntervalBVProblem) (A : AsymptoticConditionPackage P) (E : AsymptoticConditionEvidence P A) :
    AsymptoticConditionClosed P A := by
  exact E.asymptoticWellPosedClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse