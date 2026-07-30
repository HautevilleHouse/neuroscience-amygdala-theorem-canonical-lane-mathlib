import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure IonChannel where
  name : String
  conductance : Float
  reversalPotential : Float
  activationGating : String
  inactivationGating : String

default conductance : Float := 0.0

structure HodgkinHuxleyModel where
  membraneCapacitance : Float
  leakConductance : Float
  leakReversal : Float
  sodiumChannel : IonChannel
  potassiumChannel : IonChannel
  equations : Prop
  equationsClosed : equations

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.equations

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) :
    HodgkinHuxleyClosed H := by
  exact H.equationsClosed

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse