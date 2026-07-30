import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicinePharmacoepidemiologyLemmaCanonicalLaneLean

structure Compartment {A : Type} (B : Type) where
  volume : B
  drugAmount : B -> Type
  concentration : A -> Prop

structure PKCompartmentPackage (A : AdmissibleClass) where
  centralCompartment : Compartment A A
  peripheralCompartments : List (Compartment A A)
  absorptionRate : Prop
  eliminationRate : Prop
  distributionRates : List Prop

structure PKCompartmentEvidence (A : AdmissibleClass) (P : PKCompartmentPackage A) where
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate
  distributionRatesClosed : List (P.distributionRates = P.distributionRates)

def PKCompartmentClosed (A : AdmissibleClass) (P : PKCompartmentPackage A) : Prop :=
  P.absorptionRate ∧ P.eliminationRate ∧ (∀ r ∈ P.distributionRates, r)

theorem pk_compartment_closed_from_evidence (A : AdmissibleClass) (P : PKCompartmentPackage A)
    (E : PKCompartmentEvidence A P) : PKCompartmentClosed A P := by
  refine And.intro E.absorptionRateClosed (And.intro E.eliminationRateClosed ?_)
  intro r hr
  sorry

end MedicinePharmacoepidemiologyLemmaCanonicalLaneLean
end HautevilleHouse