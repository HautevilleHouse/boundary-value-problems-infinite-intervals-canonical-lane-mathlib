import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BVPSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BVPBoundaryCondition where
  boundaryType : String
  condition : Prop

structure BVPDifferentialOperator where
  operatorType : String
  order : Nat

structure BVPAdmittedObject where
  space : BVPSpace
  interval : Set ℝ
  boundary : BVPBoundaryCondition
  operator : BVPDifferentialOperator
  solutionExists : Prop
  uniquenessHolds : Prop
  stabilityUnderPerturbation : Prop
  conclusion : solutionExists ∧ uniquenessHolds ∧ stabilityUnderPerturbation

structure BVPEndgameState where
  object : BVPAdmittedObject

def BVPWitnessClosed (O : BVPAdmittedObject) : Prop :=
  O.solutionExists ∧ O.uniquenessHolds ∧ O.stabilityUnderPerturbation

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse