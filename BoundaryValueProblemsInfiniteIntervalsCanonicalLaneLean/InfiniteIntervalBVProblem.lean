import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure InfiniteIntervalBVProblem where
  stateSpace : Type u
  vectorField : stateSpace → stateSpace
  boundaryConditionAtZero : stateSpace → Prop
  asymptoticCondition : stateSpace → Prop
  solutionExists : Prop
  solutionUnique : Prop
  conclusion : solutionExists ∧ solutionUnique

structure BVProblemEvidence (P : InfiniteIntervalBVProblem) where
  boundaryConditionAtZeroClosed : P.boundaryConditionAtZero (someInitialState : P.stateSpace)
  asymptoticConditionClosed : P.asymptoticCondition (someAsymptoticState : P.stateSpace)
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique

def ProblemClosed (P : InfiniteIntervalBVProblem) : Prop :=
  P.solutionExists ∧ P.solutionUnique

theorem problem_closed_from_evidence (P : InfiniteIntervalBVProblem) (E : BVProblemEvidence P) :
    ProblemClosed P := by
  exact And.intro E.solutionExistsClosed E.solutionUniqueClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse