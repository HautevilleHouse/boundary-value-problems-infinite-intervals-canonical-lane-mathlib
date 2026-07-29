import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure NonlinearOperatorPackage (O : BVPDifferentialOperator) where
  monotonicityProperty : Prop
  compactnessProperty : Prop
  fixedPointExists : Prop
  aPrioriEstimate : Prop
  uniquenessUnderMonotonicity : Prop

structure NonlinearOperatorEvidence {O : BVPDifferentialOperator}
    (N : NonlinearOperatorPackage O) where
  monotonicityPropertyClosed : N.monotonicityProperty
  compactnessPropertyClosed : N.compactnessProperty
  fixedPointExistsClosed : N.fixedPointExists
  aPrioriEstimateClosed : N.aPrioriEstimate
  uniquenessUnderMonotonicityClosed : N.uniquenessUnderMonotonicity

def NonlinearOperatorClosed {O : BVPDifferentialOperator}
    (N : NonlinearOperatorPackage O) : Prop :=
  N.monotonicityProperty ∧ N.compactnessProperty ∧
  N.fixedPointExists ∧ N.aPrioriEstimate ∧ N.uniquenessUnderMonotonicity

theorem nonlinear_operator_closed_from_evidence
    {O : BVPDifferentialOperator} (N : NonlinearOperatorPackage O)
    (E : NonlinearOperatorEvidence N) : NonlinearOperatorClosed N := by
  exact And.intro E.monotonicityPropertyClosed
    (And.intro E.compactnessPropertyClosed
      (And.intro E.fixedPointExistsClosed
        (And.intro E.aPrioriEstimateClosed E.uniquenessUnderMonotonicityClosed)))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse