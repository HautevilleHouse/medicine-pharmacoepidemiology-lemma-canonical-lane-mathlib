import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  transferRates : Vector ℝ (compartments * compartments)
  eliminationRate : Vector ℝ compartments
  volumeDistribution : Vector ℝ compartments
  wellMixed : Prop
  linearKinetics : Prop
  initialConditions : Prop
  wellMixedTerm : wellMixed
  linearKineticsTerm : linearKinetics
  initialConditionsTerm : initialConditions

structure PharmacokineticEvidence (C : CompartmentModel) where
  wellMixedClosed : C.wellMixed
  linearKineticsClosed : C.linearKinetics
  initialConditionsClosed : C.initialConditions

def PharmacokineticClosed (C : CompartmentModel) : Prop :=
  C.wellMixed ∧ C.linearKinetics ∧ C.initialConditions

theorem pharmacokinetic_closed_from_evidence (C : CompartmentModel)
    (E : PharmacokineticEvidence C) : PharmacokineticClosed C :=
  And.intro E.wellMixedClosed (And.intro E.linearKineticsClosed E.initialConditionsClosed)

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse