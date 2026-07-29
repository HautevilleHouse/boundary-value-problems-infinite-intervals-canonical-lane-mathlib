import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure CompactnessTransferPackage where
  approximatingSequence : Type u
  weakCompactness : Prop
  strongConvergence : Prop
  limitInClass : Prop

structure CompactnessTransferEvidence (C : CompactnessTransferPackage) where
  weakCompactnessClosed : C.weakCompactness
  strongConvergenceClosed : C.strongConvergence
  limitInClassClosed : C.limitInClass

def CompactnessTransferClosed (C : CompactnessTransferPackage) : Prop :=
  C.weakCompactness ∧ C.strongConvergence ∧ C.limitInClass

theorem compactness_transfer_closed_from_evidence
    (C : CompactnessTransferPackage) (E : CompactnessTransferEvidence C) :
    CompactnessTransferClosed C := by
  exact And.intro E.weakCompactnessClosed
    (And.intro E.strongConvergenceClosed E.limitInClassClosed)

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse