import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.BVPCore

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ShootingMethodPackage (I : InfiniteInterval) (bc : BoundaryCondition I) where
  initialValueProblem : Type
  targetCondition : Prop
  continuity : Prop
  existenceOfSolution : Prop
  uniquenessOfShot : Prop

structure ShootingMethodEvidence {I : InfiniteInterval} {bc : BoundaryCondition I}
    (S : ShootingMethodPackage I bc) where
  initialValueProblemDefined : S.initialValueProblem ≠ ∅
  targetConditionClosed : S.targetCondition
  continuityClosed : S.continuity
  existenceOfSolutionClosed : S.existenceOfSolution
  uniquenessOfShotClosed : S.uniquenessOfShot

def ShootingMethodClosed {I : InfiniteInterval} {bc : BoundaryCondition I}
    (S : ShootingMethodPackage I bc) : Prop :=
  S.targetCondition ∧ S.continuity ∧ S.existenceOfSolution ∧ S.uniquenessOfShot

theorem shooting_method_closed_from_evidence {I : InfiniteInterval} {bc : BoundaryCondition I}
    (S : ShootingMethodPackage I bc) (E : ShootingMethodEvidence S) :
    ShootingMethodClosed S := by
  exact And.intro E.targetConditionClosed (And.intro E.continuityClosed
    (And.intro E.existenceOfSolutionClosed E.uniquenessOfShotClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse