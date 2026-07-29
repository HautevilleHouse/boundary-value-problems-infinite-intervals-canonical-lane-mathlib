import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ExistenceProofObligations where
  wellPosedness : Prop
  aPrioriBounds : Prop
  continuationAtInfinity : Prop
  approximateSolution : Prop

structure ExistenceEvidence (E : ExistenceProofObligations) where
  wellPosednessClosed : E.wellPosedness
  aPrioriBoundsClosed : E.aPrioriBounds
  continuationAtInfinityClosed : E.continuationAtInfinity
  approximateSolutionClosed : E.approximateSolution

def ExistenceClosed (E : ExistenceProofObligations) : Prop :=
  E.wellPosedness ∧ E.aPrioriBounds ∧ E.continuationAtInfinity ∧ E.approximateSolution

theorem existence_closed_from_evidence
    (E : ExistenceProofObligations) (Ev : ExistenceEvidence E) :
    ExistenceClosed E := by
  exact And.intro Ev.wellPosednessClosed
    (And.intro Ev.aPrioriBoundsClosed
      (And.intro Ev.continuationAtInfinityClosed Ev.approximateSolutionClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse