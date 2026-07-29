import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure AsymptoticBehaviorPackage {I : InfiniteIntervalPackage} (B : BoundaryConditionPackage I) where
  growthBoundAtInfinity : Prop
  decayRate : Prop
  boundednessAtEndpoint : Prop
  oscillationControl : Prop

structure AsymptoticBehaviorEvidence {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} (A : AsymptoticBehaviorPackage B) where
  growthBoundAtInfinityClosed : A.growthBoundAtInfinity
  decayRateClosed : A.decayRate
  boundednessAtEndpointClosed : A.boundednessAtEndpoint
  oscillationControlClosed : A.oscillationControl

def AsymptoticBehaviorClosed {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} (A : AsymptoticBehaviorPackage B) : Prop :=
  A.growthBoundAtInfinity ∧ A.decayRate ∧ A.boundednessAtEndpoint ∧ A.oscillationControl

theorem asymptotic_behavior_closed_from_evidence {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} (A : AsymptoticBehaviorPackage B) (E : AsymptoticBehaviorEvidence A) : AsymptoticBehaviorClosed A := by
  exact And.intro E.growthBoundAtInfinityClosed (And.intro E.decayRateClosed (And.intro E.boundednessAtEndpointClosed E.oscillationControlClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse