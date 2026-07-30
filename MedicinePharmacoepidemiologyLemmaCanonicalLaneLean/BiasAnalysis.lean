import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure BiasAnalysis where
  selectionBiasMinimized : Prop
  confoundingAdjusted : Prop
  measurementErrorModeled : Prop
  sensitivityAnalysisComplete : Prop

structure BiasAnalysisEvidence (B : BiasAnalysis) where
  selectionBiasMinimizedClosed : B.selectionBiasMinimized
  confoundingAdjustedClosed : B.confoundingAdjusted
  measurementErrorModeledClosed : B.measurementErrorModeled
  sensitivityAnalysisCompleteClosed : B.sensitivityAnalysisComplete

def BiasAnalysisClosed (B : BiasAnalysis) : Prop :=
  B.selectionBiasMinimized ∧ B.confoundingAdjusted ∧ B.measurementErrorModeled ∧ B.sensitivityAnalysisComplete

theorem bias_analysis_closed_from_evidence (B : BiasAnalysis) (E : BiasAnalysisEvidence B) :
    BiasAnalysisClosed B := by
  exact And.intro E.selectionBiasMinimizedClosed
    (And.intro E.confoundingAdjustedClosed
      (And.intro E.measurementErrorModeledClosed E.sensitivityAnalysisCompleteClosed))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse