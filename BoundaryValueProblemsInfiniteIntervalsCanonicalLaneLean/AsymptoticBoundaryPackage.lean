import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure AsymptoticBoundaryPackage where
  functionSpace : Type u
  boundaryCondition : functionSpace → Prop
  asymptoticCondition : functionSpace → Prop
  regularityRequired : Prop

structure AsymptoticBoundaryEvidence (A : AsymptoticBoundaryPackage) where
  boundaryConditionClosed : A.boundaryCondition A.functionSpace
  asymptoticConditionClosed : A.asymptoticCondition A.functionSpace
  regularityRequiredClosed : A.regularityRequired

def AsymptoticBoundaryClosed (A : AsymptoticBoundaryPackage) : Prop :=
  A.boundaryCondition A.functionSpace ∧ A.asymptoticCondition A.functionSpace ∧ A.regularityRequired

theorem asymptotic_boundary_closed_from_evidence
    (A : AsymptoticBoundaryPackage) (E : AsymptoticBoundaryEvidence A) :
    AsymptoticBoundaryClosed A := by
  exact And.intro E.boundaryConditionClosed
    (And.intro E.asymptoticConditionClosed E.regularityRequiredClosed)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse