import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure DiagnosticInference where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  areaUnderROC : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInference) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  areaUnderROCClosed : D.areaUnderROC

def DiagnosticInferenceClosed (D : DiagnosticInference) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.areaUnderROC

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInference) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed E.areaUnderROCClosed)))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse