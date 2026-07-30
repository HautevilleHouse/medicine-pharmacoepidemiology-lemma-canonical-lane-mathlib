import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure PharmacoepidemiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PharmacoepidemiologyAdmittedObject where
  space : PharmacoepidemiologySpace
  studyDesignValid : Prop
  inferenceClosed : Prop
  conclusion : inferenceClosed

structure PharmacoepidemiologyEndgameState where
  object : PharmacoepidemiologyAdmittedObject

def PharmacoepidemiologyWitnessClosed (O : PharmacoepidemiologyAdmittedObject) : Prop :=
  O.inferenceClosed

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse