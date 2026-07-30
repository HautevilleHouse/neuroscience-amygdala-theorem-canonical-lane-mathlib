import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Prop
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialClosed : H.membranePotential
  sodiumChannelGatingClosed : H.sodiumChannelGating
  potassiumChannelGatingClosed : H.potassiumChannelGating
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membranePotential ∧ H.sodiumChannelGating ∧ H.potassiumChannelGating ∧ H.leakageCurrent ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialClosed (And.intro E.sodiumChannelGatingClosed (And.intro E.potassiumChannelGatingClosed (And.intro E.leakageCurrentClosed E.actionPotentialGenerationClosed)))

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse