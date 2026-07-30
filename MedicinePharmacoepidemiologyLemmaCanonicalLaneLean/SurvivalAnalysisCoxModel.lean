import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CoxProportionalHazards (A : AdmissibleClass) where
  hazardFunction : A -> Prop
  baselineHazard : A -> Prop
  covariates : List A
  proportionalHazardsAssumption : Prop

structure CoxModelEvidence (A : AdmissibleClass) (C : CoxProportionalHazards A) where
  proportionalHazardsAssumptionClosed : C.proportionalHazardsAssumption

def CoxModelClosed (A : AdmissibleClass) (C : CoxProportionalHazards A) : Prop :=
  C.proportionalHazardsAssumption

theorem cox_model_closed_from_evidence (A : AdmissibleClass) (C : CoxProportionalHazards A)
    (E : CoxModelEvidence A C) : CoxModelClosed A C := by
  exact E.proportionalHazardsAssumptionClosed

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse