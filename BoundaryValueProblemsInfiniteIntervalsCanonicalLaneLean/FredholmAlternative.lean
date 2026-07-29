import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.WeightedSobolevSpaces

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure FredholmAlternativePackage {W : WeightedSobolevSpacePackage}
    (O : NonlinearOperatorPackage) where
  indexZero : Prop
  cokernelDimension : ℕ
  kernelFinite : Prop
  solvabilityCondition : Prop
  alternativeStatement : Prop

structure FredholmAlternativeEvidence {W : WeightedSobolevSpacePackage}
    {O : NonlinearOperatorPackage} (F : FredholmAlternativePackage O) where
  indexZeroClosed : F.indexZero
  cokernelDimensionClosed : F.cokernelDimension = 0
  kernelFiniteClosed : F.kernelFinite
  solvabilityConditionClosed : F.solvabilityCondition
  alternativeStatementClosed : F.alternativeStatement

def FredholmAlternativeClosed {W : WeightedSobolevSpacePackage}
    {O : NonlinearOperatorPackage} (F : FredholmAlternativePackage O) : Prop :=
  F.indexZero ∧ F.cokernelDimension = 0 ∧ F.kernelFinite ∧
  F.solvabilityCondition ∧ F.alternativeStatement

theorem fredholm_alternative_closed_from_evidence
    {W : WeightedSobolevSpacePackage} {O : NonlinearOperatorPackage}
    (F : FredholmAlternativePackage O) (E : FredholmAlternativeEvidence F) :
    FredholmAlternativeClosed F := by
  exact And.intro E.indexZeroClosed
    (And.intro E.cokernelDimensionClosed
      (And.intro E.kernelFiniteClosed
        (And.intro E.solvabilityConditionClosed E.alternativeStatementClosed)))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse