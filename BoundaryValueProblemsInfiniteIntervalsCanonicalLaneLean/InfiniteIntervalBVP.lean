import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure InfiniteIntervalBVPPackage where
  operator : Type u
  linear : Prop
  nonlinearity : Type v
  interval : Type w
  intervalTopology : TopologicalSpace interval
  boundaryConditionAtMinusInfinity : Prop
  boundaryConditionAtPlusInfinity : Prop
  solutionSpace : Type x
  existenceResult : Prop
  uniquenessResult : Prop

structure InfiniteIntervalBVPEvidence (P : InfiniteIntervalBVPPackage) where
  linearClosed : P.linear
  boundaryAtMinusClosed : P.boundaryConditionAtMinusInfinity
  boundaryAtPlusClosed : P.boundaryConditionAtPlusInfinity
  existenceClosed : P.existenceResult
  uniquenessClosed : P.uniquenessResult

def InfiniteIntervalBVPClosed (P : InfiniteIntervalBVPPackage) : Prop :=
  P.linear ∧ P.boundaryConditionAtMinusInfinity ∧ P.boundaryConditionAtPlusInfinity ∧
  P.existenceResult ∧ P.uniquenessResult

theorem infinite_interval_bvp_closed_from_evidence
    (P : InfiniteIntervalBVPPackage) (E : InfiniteIntervalBVPEvidence P) :
    InfiniteIntervalBVPClosed P := by
  exact And.intro E.linearClosed
    (And.intro E.boundaryAtMinusClosed
      (And.intro E.boundaryAtPlusClosed
        (And.intro E.existenceClosed E.uniquenessClosed)))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse