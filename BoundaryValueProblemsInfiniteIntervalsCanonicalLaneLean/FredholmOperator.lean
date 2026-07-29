import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.ResolventOperator

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure FredholmOperator {k : ℕ} {p : ℝ} {w : WeightFunction} (X : WeightedSobolevSpace k p w) where
  index : ℤ
  kernelBound : Prop
  cokernelBound : Prop
  closedRange : Prop

structure FredholmEvidence {k : ℕ} {p : ℝ} {w : WeightFunction} (F : FredholmOperator (X := WeightedSobolevSpace k p w)) where
  indexClosed : F.index = 0
  kernelBoundClosed : F.kernelBound
  cokernelBoundClosed : F.cokernelBound
  closedRangeClosed : F.closedRange

def FredholmClosed {k : ℕ} {p : ℝ} {w : WeightFunction} (F : FredholmOperator (X := WeightedSobolevSpace k p w)) : Prop :=
  F.index = 0 ∧ F.kernelBound ∧ F.cokernelBound ∧ F.closedRange

theorem fredholm_closed_from_evidence {k : ℕ} {p : ℝ} {w : WeightFunction} (F : FredholmOperator (X := WeightedSobolevSpace k p w)) (E : FredholmEvidence F) : FredholmClosed F := by
  exact And.intro E.indexClosed (And.intro E.kernelBoundClosed (And.intro E.cokernelBoundClosed E.closedRangeClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse