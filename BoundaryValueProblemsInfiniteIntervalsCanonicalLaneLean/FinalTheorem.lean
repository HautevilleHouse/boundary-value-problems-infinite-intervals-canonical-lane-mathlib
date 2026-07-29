import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

def ConstrainedBoundaryValueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_value_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryValueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse