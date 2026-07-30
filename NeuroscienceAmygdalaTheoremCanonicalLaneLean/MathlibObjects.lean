import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AmygdalaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AmygdalaCircuit where
  nodes : Type
  edges : Type
  connectivity : Prop

structure AmygdalaAdmittedObject where
  space : AmygdalaSpace
  circuit : AmygdalaCircuit
  hebbianPlasticity : Prop
  fearConditioning : Prop
  extinctionCircuit : Prop
  conclusion : hebbianPlasticity ∧ fearConditioning ∧ extinctionCircuit

structure AmygdalaEndgameState where
  object : AmygdalaAdmittedObject

def AmygdalaWitnessClosed (O : AmygdalaAdmittedObject) : Prop :=
  O.conclusion

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse