import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AsymptoticBehavior

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure ExistenceUniquenessPackage {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} {A : AsymptoticBehaviorPackage B} where
  solutionExists : Prop
  solutionUnique : Prop
  continuousDependence : Prop
  asymptoticMatching : Prop

structure ExistenceUniquenessEvidence {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} {A : AsymptoticBehaviorPackage B} (E : ExistenceUniquenessPackage A) where
  solutionExistsClosed : E.solutionExists
  solutionUniqueClosed : E.solutionUnique
  continuousDependenceClosed : E.continuousDependence
  asymptoticMatchingClosed : E.asymptoticMatching

def ExistenceUniquenessClosed {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} {A : AsymptoticBehaviorPackage B} (E : ExistenceUniquenessPackage A) : Prop :=
  E.solutionExists ∧ E.solutionUnique ∧ E.continuousDependence ∧ E.asymptoticMatching

theorem existence_uniqueness_closed_from_evidence {I : InfiniteIntervalPackage} {B : BoundaryConditionPackage I} {A : AsymptoticBehaviorPackage B} (E : ExistenceUniquenessPackage A) (Ev : ExistenceUniquenessEvidence E) : ExistenceUniquenessClosed E := by
  exact And.intro Ev.solutionExistsClosed (And.intro Ev.solutionUniqueClosed (And.intro Ev.continuousDependenceClosed Ev.asymptoticMatchingClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse