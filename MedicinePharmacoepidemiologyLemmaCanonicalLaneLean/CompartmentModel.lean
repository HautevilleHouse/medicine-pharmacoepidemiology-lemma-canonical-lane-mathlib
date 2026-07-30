import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CompartmentModel where
  numCompartment : Nat
  rateMatrix : Type
  initialConcentration : Type
  steadyStateConcentration : Prop
  linearKinetics : Prop

structure CompartmentModelEvidence (C : CompartmentModel) where
  steadyStateConcentrationClosed : C.steadyStateConcentration
  linearKineticsClosed : C.linearKinetics

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.steadyStateConcentration ∧ C.linearKinetics

theorem compartment_model_closed_from_evidence (C : CompartmentModel) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.steadyStateConcentrationClosed E.linearKineticsClosed

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse