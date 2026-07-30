import HautevilleHouse.NeuroscienceAmygdalaTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure AmygdalaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AmygdalaAdmittedObject where
  space : AmygdalaSpace
  neuralCircuit : Prop
  hebbianPlasticity : Prop
  fearConditioning : Prop
  circuitModel : Type
  circuitTopology : TopologicalSpace circuitModel
  amygdalaCircuitRealized : Prop
  conclusion : amygdalaCircuitRealized

def AmygdalaWitnessClosed (O : AmygdalaAdmittedObject) : Prop :=
  O.amygdalaCircuitRealized

structure AmygdalaEndgameState where
  object : AmygdalaAdmittedObject

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse