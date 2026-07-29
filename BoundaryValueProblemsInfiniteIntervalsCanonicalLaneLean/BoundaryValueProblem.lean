import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure InfiniteIntervalSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier

structure BoundaryCondition (X : InfiniteIntervalSpace) where
  boundarySet : Set X.carrier
  prescribedValue : X.carrier → ℝ

structure BVProblem (X : InfiniteIntervalSpace) (h : X.metric.IsComplete) where
  space : X
  completeness : h
  differentialOperator : (X.carrier → ℝ) → (X.carrier → ℝ)
  boundaryCondition : BoundaryCondition X
  boundaryConditionSatisfied : Prop
  boundedSolution : Prop
  existence : Prop
  uniqueness : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse