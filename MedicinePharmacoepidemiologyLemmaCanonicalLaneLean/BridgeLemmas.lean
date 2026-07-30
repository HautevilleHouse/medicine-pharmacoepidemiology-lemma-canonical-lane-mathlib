import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicinePharmacoepidemiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedicineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse