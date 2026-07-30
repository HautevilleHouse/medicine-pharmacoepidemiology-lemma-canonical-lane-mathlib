import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure SurvivalAnalysis where
  hazardFunction : Prop
  survivalCurve : Prop
  censoringMechanism : Prop
  proportionalHazards : Prop
  logRankTest : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysis) where
  hazardFunctionClosed : S.hazardFunction
  survivalCurveClosed : S.survivalCurve
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  logRankTestClosed : S.logRankTest

def SurvivalAnalysisClosed (S : SurvivalAnalysis) : Prop :=
  S.hazardFunction ∧ S.survivalCurve ∧ S.censoringMechanism ∧ S.proportionalHazards ∧ S.logRankTest

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysis) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalCurveClosed
      (And.intro E.censoringMechanismClosed
        (And.intro E.proportionalHazardsClosed E.logRankTestClosed)))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse