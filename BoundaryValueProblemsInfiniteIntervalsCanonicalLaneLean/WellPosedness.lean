import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure WellPosedness {X : InfiniteIntervalSpace} (P : BVProblem X) where
  existence : P.existence
  uniqueness : P.uniqueness
  continuousDependence : Prop
  stabilityAtInfinity : Prop
  coercivityEstimate : Prop
  aPrioriBound : Prop
  approximationScheme : Prop

structure WellPosednessEvidence {X : InfiniteIntervalSpace} {P : BVProblem X} (W : WellPosedness P) where
  existenceClosed : W.existence
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence
  stabilityAtInfinityClosed : W.stabilityAtInfinity
  coercivityEstimateClosed : W.coercivityEstimate
  aPrioriBoundClosed : W.aPrioriBound
  approximationSchemeClosed : W.approximationScheme

def WellPosednessClosed {X : InfiniteIntervalSpace} {P : BVProblem X} (W : WellPosedness P) : Prop :=
  W.existence ∧ W.uniqueness ∧ W.continuousDependence ∧ W.stabilityAtInfinity ∧
  W.coercivityEstimate ∧ W.aPrioriBound ∧ W.approximationScheme

theorem well_posedness_closed_from_evidence {X : InfiniteIntervalSpace} {P : BVProblem X} (W : WellPosedness P) (E : WellPosednessEvidence W) : WellPosednessClosed W := by
  exact And.intro E.existenceClosed (And.intro E.uniquenessClosed (And.intro E.continuousDependenceClosed (And.intro E.stabilityAtInfinityClosed (And.intro E.coercivityEstimateClosed (And.intro E.aPrioriBoundClosed E.approximationSchemeClosed)))))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse