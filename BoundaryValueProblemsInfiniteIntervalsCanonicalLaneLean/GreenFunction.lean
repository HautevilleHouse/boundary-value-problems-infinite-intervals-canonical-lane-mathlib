import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure GreenFunction (X : InfiniteIntervalSpace) (L : DifferentialOperator X) where
  kernelFunction : X.carrier → X.carrier → ℝ
  representationFormula : Prop
  decayAtInfinity : Prop
  integrability : Prop
  symmetry : Prop
  positivity : Prop

structure PoissonIntegral (X : InfiniteIntervalSpace) where
  poissonKernel : X.carrier → X.carrier → ℝ
  harmonicExtension : Prop
  boundaryValueRecovery : Prop
  decayRate : Prop
  continuityUpToBoundary : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse