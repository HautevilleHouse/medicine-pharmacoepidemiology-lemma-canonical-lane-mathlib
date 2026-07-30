import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CausalEffectModel where
  counterfactualOutcomes : Prop
  instrumentalVariables : Prop
  propensityScore : Prop
  counterfactualOutcomesTerm : counterfactualOutcomes
  instrumentalVariablesTerm : instrumentalVariables
  propensityScoreTerm : propensityScore

structure CausalEffectEvidence (C : CausalEffectModel) where
  counterfactualOutcomesClosed : C.counterfactualOutcomes
  instrumentalVariablesClosed : C.instrumentalVariables
  propensityScoreClosed : C.propensityScore

def CausalEffectClosed (C : CausalEffectModel) : Prop :=
  C.counterfactualOutcomes ∧ C.instrumentalVariables ∧ C.propensityScore

theorem causal_effect_closed_from_evidence (C : CausalEffectModel)
    (E : CausalEffectEvidence C) : CausalEffectClosed C :=
  And.intro E.counterfactualOutcomesClosed (And.intro E.instrumentalVariablesClosed E.propensityScoreClosed)

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse