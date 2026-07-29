import BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type
  norm : Type
  embeddingTheorems : Prop
  compactEmbedding : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  embeddingTheoremsClosed : S.embeddingTheorems
  compactEmbeddingClosed : S.compactEmbedding

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.embeddingTheorems ∧ S.compactEmbedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.embeddingTheoremsClosed E.compactEmbeddingClosed

end BoundaryValueProblemsInfiniteIntervalsCanonicalLaneLean
end HautevilleHouse