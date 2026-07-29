import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.WeightedSpaces

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure FredholmPackage {S : SobolevSpacePackage} {W : WeightedSpacePackage S} where
  operator : Type
  fredholmIndex : ℤ
  fredholmProperty : Prop
  indexComputed : Prop

structure FredholmEvidence {S : SobolevSpacePackage} {W : WeightedSpacePackage S} (F : FredholmPackage S W) where
  fredholmPropertyClosed : F.fredholmProperty
  indexComputedClosed : F.indexComputed

def FredholmClosed {S : SobolevSpacePackage} {W : WeightedSpacePackage S} (F : FredholmPackage S W) : Prop :=
  F.fredholmProperty ∧ F.indexComputed

theorem fredholm_closed_from_evidence {S : SobolevSpacePackage} {W : WeightedSpacePackage S} (F : FredholmPackage S W) (E : FredholmEvidence F) :
    FredholmClosed F := by
  exact And.intro E.fredholmPropertyClosed E.indexComputedClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse