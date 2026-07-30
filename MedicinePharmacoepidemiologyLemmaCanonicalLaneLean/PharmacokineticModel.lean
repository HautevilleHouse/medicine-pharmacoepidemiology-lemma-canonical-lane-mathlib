import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure PharmacokineticModel where
  absorptionRate : Prop
  distributionVolume : Prop
  clearance : Prop
  bioavailability : Prop
  halfLife : Prop

structure PharmacokineticEvidence (P : PharmacokineticModel) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  clearanceClosed : P.clearance
  bioavailabilityClosed : P.bioavailability
  halfLifeClosed : P.halfLife

def PharmacokineticClosed (P : PharmacokineticModel) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.clearance ∧ P.bioavailability ∧ P.halfLife

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticModel) (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.clearanceClosed (And.intro E.bioavailabilityClosed E.halfLifeClosed)))

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse