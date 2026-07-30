import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CausalInferenceModel where
  confoundingControl : Prop
  propensityScore : Prop
  instrumentalVariable : Prop
  marginalStructuralModel : Prop
  directedAcyclicGraph : Prop

structure CausalInferenceEvidence (C : CausalInferenceModel) where
  confoundingControlClosed : C.confoundingControl
  propensityScoreClosed : C.propensityScore
  instrumentalVariableClosed : C.instrumentalVariable
  marginalStructuralModelClosed : C.marginalStructuralModel
  directedAcyclicGraphClosed : C.directedAcyclicGraph

def CausalInferenceClosed (C : CausalInferenceModel) : Prop :=
  C.confoundingControl ∧ C.propensityScore ∧ C.instrumentalVariable ∧ C.marginalStructuralModel ∧ C.directedAcyclicGraph

theorem causal_inference_closed_from_evidence (C : CausalInferenceModel) (E : CausalInferenceEvidence C) : CausalInferenceClosed C := by
  exact And.intro E.confoundingControlClosed (And.intro E.propensityScoreClosed (And.intro E.instrumentalVariableClosed (And.intro E.marginalStructuralModelClosed E.directedAcyclicGraphClosed)))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse