import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicinePharmacoepidemiologyLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse