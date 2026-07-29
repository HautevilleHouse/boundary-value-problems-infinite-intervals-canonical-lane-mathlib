import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure FixedPointFramework where
  operatorType : Type u
  contractionProperty : Prop
  fixedPointExistence : Prop
  uniqueness : Prop

structure FixedPointEvidence (F : FixedPointFramework) where
  contractionPropertyClosed : F.contractionProperty
  fixedPointExistenceClosed : F.fixedPointExistence
  uniquenessClosed : F.uniqueness

def FixedPointFrameworkClosed (F : FixedPointFramework) : Prop :=
  F.contractionProperty ∧ F.fixedPointExistence ∧ F.uniqueness

theorem fixed_point_framework_closed_from_evidence
    (F : FixedPointFramework) (E : FixedPointEvidence F) :
    FixedPointFrameworkClosed F := by
  exact And.intro E.contractionPropertyClosed
    (And.intro E.fixedPointExistenceClosed E.uniquenessClosed)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse