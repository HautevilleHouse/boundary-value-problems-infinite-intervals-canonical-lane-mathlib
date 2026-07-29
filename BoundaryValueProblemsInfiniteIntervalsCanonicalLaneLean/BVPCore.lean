import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure InfiniteInterval where
  intervalType : Type u
  leftEndpoint : intervalType
  rightEndpoint : intervalType
  isInfinite : Prop
  topology : TopologicalSpace intervalType

definition BoundaryCondition (I : InfiniteInterval) : Type v := sorry

definition SolutionSpace (I : InfiniteInterval) (bc : BoundaryCondition I) : Type w := sorry

structure BVPAdmittedObject where
  interval : InfiniteInterval
  boundaryCondition : BoundaryCondition interval
  solutionSpace : SolutionSpace interval boundaryCondition
  solutionExists : Prop
  solutionUnique : Prop
  asymptoticBehavior : Prop
  conclusion : solutionExists ∧ solutionUnique ∧ asymptoticBehavior

def BVPWitnessClosed (O : BVPAdmittedObject) : Prop :=
  O.solutionExists ∧ O.solutionUnique ∧ O.asymptoticBehavior

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse