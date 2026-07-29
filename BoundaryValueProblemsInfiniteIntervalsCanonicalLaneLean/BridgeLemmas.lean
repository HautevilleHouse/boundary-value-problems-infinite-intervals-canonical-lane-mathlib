import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundaryValueWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse