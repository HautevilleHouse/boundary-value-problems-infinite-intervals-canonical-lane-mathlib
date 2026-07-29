import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure IntegralEquationPackage {S : SobolevSpacePackage} where
  kernel : ℝ × ℝ → ℝ
  greenFunction : ℝ → ℝ
  integralOperator : (ℝ → ℝ) → (ℝ → ℝ)
  linearCombination : Prop
  compactness : Prop
  fredholmIndex : Int
  linearCombinationClosed : linearCombination
  compactnessClosed : compactness

structure IntegralEquationEvidence {S : SobolevSpacePackage} (I : IntegralEquationPackage S) where
  linearCombinationClosed : I.linearCombination
  compactnessClosed : I.compactness
  fredholmIndexCorrect : I.fredholmIndex = 0

def IntegralEquationClosed {S : SobolevSpacePackage} (I : IntegralEquationPackage S) : Prop :=
  I.linearCombination ∧ I.compactness

theorem integral_equation_closed_from_evidence
    {S : SobolevSpacePackage} (I : IntegralEquationPackage S)
    (E : IntegralEquationEvidence I) : IntegralEquationClosed I := by
  exact And.intro E.linearCombinationClosed E.compactnessClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse
