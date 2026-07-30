import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAmygdalaTheoremCanonicalLaneLean.AmygdalaAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage (A : AmygdalaAdmissibleClass) where
  membranePotential : Type
  ionChannels : Type
  sodiumActivation : Prop
  potassiumInactivation : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence {A : AmygdalaAdmissibleClass} (H : HodgkinHuxleyPackage A) where
  sodiumActivationClosed : H.sodiumActivation
  potassiumInactivationClosed : H.potassiumInactivation
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed {A : AmygdalaAdmissibleClass} (H : HodgkinHuxleyPackage A) : Prop :=
  H.sodiumActivation ∧ H.potassiumInactivation ∧ H.leakageCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence
    {A : AmygdalaAdmissibleClass} (H : HodgkinHuxleyPackage A) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumActivationClosed
    (And.intro E.potassiumInactivationClosed
      (And.intro E.leakageCurrentClosed E.actionPotentialGenerationClosed))

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse