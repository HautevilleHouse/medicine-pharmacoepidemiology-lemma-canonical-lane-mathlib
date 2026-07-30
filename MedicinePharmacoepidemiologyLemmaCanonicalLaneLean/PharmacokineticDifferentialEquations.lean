import canonicalLaneMathlib.AdmissibleClass
import MedicinePharmacoepidemiologyLemmaCanonicalLaneLean.PharmacokineticCompartmentModel

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure PKSingleDoseModel (A : AdmissibleClass) where
  dose : A
  absorptionOrder : Nat
  eliminationOrder : Nat
  odes : Prop
  initialConditions : Prop

structure PKSingleDoseEvidence (A : AdmissibleClass) (M : PKSingleDoseModel A) where
  odesClosed : M.odes
  initialConditionsClosed : M.initialConditions

def PKSingleDoseClosed (A : AdmissibleClass) (M : PKSingleDoseModel A) : Prop :=
  M.odes ∧ M.initialConditions

theorem pk_single_dose_closed_from_evidence (A : AdmissibleClass) (M : PKSingleDoseModel A)
    (E : PKSingleDoseEvidence A M) : PKSingleDoseClosed A M := by
  exact And.intro E.odesClosed E.initialConditionsClosed

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse