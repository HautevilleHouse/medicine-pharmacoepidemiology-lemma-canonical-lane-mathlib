import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure DiagnosticTest (A : AdmissibleClass) where
  sensitivity : A -> Prop
  specificity : A -> Prop
  positivePredictiveValue : A -> Prop
  negativePredictiveValue : A -> Prop

structure DiagnosticTestEvidence (A : AdmissibleClass) (D : DiagnosticTest A) where
  sensitivityClosed : D.sensitivity A
  specificityClosed : D.specificity A
  positivePredictiveValueClosed : D.positivePredictiveValue A
  negativePredictiveValueClosed : D.negativePredictiveValue A

def DiagnosticTestClosed (A : AdmissibleClass) (D : DiagnosticTest A) : Prop :=
  D.sensitivity A ∧ D.specificity A ∧ D.positivePredictiveValue A ∧ D.negativePredictiveValue A

theorem diagnostic_test_closed_from_evidence (A : AdmissibleClass) (D : DiagnosticTest A)
    (E : DiagnosticTestEvidence A D) : DiagnosticTestClosed A D := by
  exact And.intro E.sensitivityClosed (And.intro E.specificityClosed (And.intro E.positivePredictiveValueClosed E.negativePredictiveValueClosed))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse