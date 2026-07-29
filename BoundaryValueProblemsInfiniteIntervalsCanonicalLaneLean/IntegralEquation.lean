import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure IntegralKernel (X : InfiniteIntervalSpace) where
  kernelFunc : X.carrier → X.carrier → ℝ
  integrable : Prop
  bounded : Prop

structure IntegralEquation (X : InfiniteIntervalSpace) where
  kernel : IntegralKernel X
  forcingTerm : X.carrier → ℝ
  unknownFunction : (X.carrier → ℝ) → (X.carrier → ℝ)
  fixedPointForm : Prop
  solvability : Prop

structure FredholmAlternative (X : InfiniteIntervalSpace) where
  compactOperator : Prop
  indexZero : Prop
  uniquenessImpliesExistence : Prop
  existenceImpliesUniqueness : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse