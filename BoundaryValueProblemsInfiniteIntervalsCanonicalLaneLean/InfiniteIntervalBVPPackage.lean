import HautevilleHouse.BoundaryValueProblemsInfiniteIntervals.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervals

structure InfiniteIntervalBVP where
  differentialOperator : Type u
  boundaryConditions : Prop
  solvabilityCondition : Prop
  solutionFamily : Type v

structure BVPEvidence (B : InfiniteIntervalBVP) where
  boundaryConditionsClosed : B.boundaryConditions
  solvabilityConditionClosed : B.solvabilityCondition

def BVPClosed (B : InfiniteIntervalBVP) : Prop :=
  B.boundaryConditions ∧ B.solvabilityCondition

theorem bvp_closed_from_evidence (B : InfiniteIntervalBVP) (E : BVPEvidence B) :
    BVPClosed B := by
  exact And.intro E.boundaryConditionsClosed E.solvabilityConditionClosed

end BoundaryValueProblemsInfiniteIntervals
end HautevilleHouse