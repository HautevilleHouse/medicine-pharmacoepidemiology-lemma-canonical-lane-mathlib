import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure ExposureResponseModel where
  exposureMetric : Type u
  responseMetric : Type v
  doseResponseCurve : Prop
  timeDependence : Prop
  confoundingAdjustment : Prop
  doseResponseCurveTerm : doseResponseCurve
  timeDependenceTerm : timeDependence
  confoundingAdjustmentTerm : confoundingAdjustment

structure ExposureResponseEvidence (E : ExposureResponseModel) where
  doseResponseCurveClosed : E.doseResponseCurve
  timeDependenceClosed : E.timeDependence
  confoundingAdjustmentClosed : E.confoundingAdjustment

def ExposureResponseClosed (E : ExposureResponseModel) : Prop :=
  E.doseResponseCurve ∧ E.timeDependence ∧ E.confoundingAdjustment

theorem exposure_response_closed_from_evidence (E : ExposureResponseModel)
    (Ev : ExposureResponseEvidence E) : ExposureResponseClosed E :=
  And.intro Ev.doseResponseCurveClosed (And.intro Ev.timeDependenceClosed Ev.confoundingAdjustmentClosed)

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse