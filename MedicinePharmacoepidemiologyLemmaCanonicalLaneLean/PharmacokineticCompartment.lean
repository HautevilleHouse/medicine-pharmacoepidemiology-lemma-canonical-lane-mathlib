import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  volumeDistribution : Prop
  transferRate : Prop
  eliminationRate : Prop
  concentrationTimeCurve : Prop

structure CompartmentEvidence (C : CompartmentModel) where
  volumeDistributionClosed : C.volumeDistribution
  transferRateClosed : C.transferRate
  eliminationRateClosed : C.eliminationRate
  concentrationTimeCurveClosed : C.concentrationTimeCurve

def CompartmentClosed (C : CompartmentModel) : Prop :=
  C.volumeDistribution ∧ C.transferRate ∧ C.eliminationRate ∧ C.concentrationTimeCurve

theorem compartment_closed_from_evidence (C : CompartmentModel) (E : CompartmentEvidence C) : CompartmentClosed C := by
  exact And.intro E.volumeDistributionClosed (And.intro E.transferRateClosed (And.intro E.eliminationRateClosed E.concentrationTimeCurveClosed))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse