import HautevilleHouse.BoundaryValueProblemsInfiniteIntervals.InfiniteIntervalBVPPackage

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervals

structure GreenFunctionPackage (B : InfiniteIntervalBVP) where
  greenFunctionExists : Prop
  integralRepresentation : Prop
  boundedness : Prop

structure GreenFunctionEvidence (B : InfiniteIntervalBVP) (G : GreenFunctionPackage B) where
  greenFunctionExistsClosed : G.greenFunctionExists
  integralRepresentationClosed : G.integralRepresentation
  boundednessClosed : G.boundedness

def GreenFunctionClosed (B : InfiniteIntervalBVP) (G : GreenFunctionPackage B) : Prop :=
  G.greenFunctionExists ∧ G.integralRepresentation ∧ G.boundedness

theorem green_function_closed_from_evidence (B : InfiniteIntervalBVP) (G : GreenFunctionPackage B)
    (E : GreenFunctionEvidence B G) : GreenFunctionClosed B G := by
  exact And.intro E.greenFunctionExistsClosed
    (And.intro E.integralRepresentationClosed E.boundednessClosed)

end BoundaryValueProblemsInfiniteIntervals
end HautevilleHouse