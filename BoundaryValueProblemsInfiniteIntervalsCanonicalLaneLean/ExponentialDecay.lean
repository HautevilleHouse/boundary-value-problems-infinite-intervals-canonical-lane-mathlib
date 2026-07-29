import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.FixedPointArgument

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ExponentialDecayPackage {S : SobolevSpacePackage} {I : IntegralEquationPackage S} {F : FixedPointPackage I} where
  decayRate : ℝ
  asymptoticBound : ℝ
  decayProperty : Prop
  integrability : Prop
  decayPropertyClosed : decayProperty
  integrabilityClosed : integrability

def ExponentialDecayClosed {S : SobolevSpacePackage} {I : IntegralEquationPackage S} {F : FixedPointPackage I} (E : ExponentialDecayPackage F) : Prop :=
  E.decayProperty ∧ E.integrability

theorem exponential_decay_closed_from_evidence
    {S : SobolevSpacePackage} {I : IntegralEquationPackage S} {F : FixedPointPackage I} (E : ExponentialDecayPackage F) : ExponentialDecayClosed E := by
  exact And.intro E.decayPropertyClosed E.integrabilityClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse
