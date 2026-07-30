import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MedicineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MedicineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse