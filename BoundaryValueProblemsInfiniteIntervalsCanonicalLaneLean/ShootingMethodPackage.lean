import HautevilleHouse.BoundaryValueProblemsInfiniteIntervals.InfiniteIntervalBVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervals

structure ShootingMethodPackage (B : InfiniteIntervalBVP) where
  initialValueProblem : Prop
  matchingCondition : Prop
  solutionExistsByShooting : Prop

structure ShootingMethodEvidence (B : InfiniteIntervalBVP) (S : ShootingMethodPackage B) where
  initialValueProblemClosed : S.initialValueProblem
  matchingConditionClosed : S.matchingCondition
  solutionExistsByShootingClosed : S.solutionExistsByShooting

def ShootingMethodClosed (B : InfiniteIntervalBVP) (S : ShootingMethodPackage B) : Prop :=
  S.initialValueProblem ∧ S.matchingCondition ∧ S.solutionExistsByShooting

theorem shooting_method_closed_from_evidence (B : InfiniteIntervalBVP) (S : ShootingMethodPackage B)
    (E : ShootingMethodEvidence B S) : ShootingMethodClosed B S := by
  exact And.intro E.initialValueProblemClosed
    (And.intro E.matchingConditionClosed E.solutionExistsByShootingClosed)

end BoundaryValueProblemsInfiniteIntervals
end HautevilleHouse