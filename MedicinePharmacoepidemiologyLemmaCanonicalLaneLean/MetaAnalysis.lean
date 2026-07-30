import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure MetaAnalysisModel where
  studySelection : Prop
  effectSize : Type u
  heterogeneity : Prop
  publicationBias : Prop
  studySelectionTerm : studySelection
  heterogeneityTerm : heterogeneity
  publicationBiasTerm : publicationBias

structure MetaAnalysisEvidence (M : MetaAnalysisModel) where
  studySelectionClosed : M.studySelection
  heterogeneityClosed : M.heterogeneity
  publicationBiasClosed : M.publicationBias

def MetaAnalysisClosed (M : MetaAnalysisModel) : Prop :=
  M.studySelection ∧ M.heterogeneity ∧ M.publicationBias

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisModel)
    (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M :=
  And.intro E.studySelectionClosed (And.intro E.heterogeneityClosed E.publicationBiasClosed)

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse