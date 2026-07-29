import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure DifferentialOperator (X : InfiniteIntervalSpace) where
  operatorDomain : Type u
  operatorAction : (X.carrier → ℝ) → (X.carrier → ℝ)
  symmetry : Prop
  selfAdjointness : Prop
  coercivity : Prop

structure SpectralResolution (X : InfiniteIntervalSpace) (L : DifferentialOperator X) where
  eigenvalues : Type u
  eigenfunctions : Type u
  completeness : Prop
  spectralGap : Prop
  essentialSpectrum : Prop
  pointSpectrum : Prop
  resolventEstimate : Prop

structure FredholmProperty (X : InfiniteIntervalSpace) (L : DifferentialOperator X) where
  fredholmIndex : ℤ
  indexZero : Prop
  nullspaceFiniteDim : Prop
  rangeClosed : Prop
  codimensionFinite : Prop

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse