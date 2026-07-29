import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure UniquenessEvidencePackage where
  comparisonPrinciple : Prop
  energyEstimates : Prop
  asymptoticDecay : Prop
  stability : Prop

structure UniquenessEvidence (U : UniquenessEvidencePackage) where
  comparisonPrincipleClosed : U.comparisonPrinciple
  energyEstimatesClosed : U.energyEstimates
  asymptoticDecayClosed : U.asymptoticDecay
  stabilityClosed : U.stability

def UniquenessClosed (U : UniquenessEvidencePackage) : Prop :=
  U.comparisonPrinciple ∧ U.energyEstimates ∧ U.asymptoticDecay ∧ U.stability

theorem uniqueness_closed_from_evidence
    (U : UniquenessEvidencePackage) (Ev : UniquenessEvidence U) :
    UniquenessClosed U := by
  exact And.intro Ev.comparisonPrincipleClosed
    (And.intro Ev.energyEstimatesClosed
      (And.intro Ev.asymptoticDecayClosed Ev.stabilityClosed))

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse