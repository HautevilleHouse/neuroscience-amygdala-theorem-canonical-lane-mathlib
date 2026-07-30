import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure AmygdalaObject where
  neuralCircuit : Type
  connectivity : Prop
  plasticityRule : Prop
  fearConditioning : Prop
  extinctionLearning : Prop
  conclusion : connectivity ∧ plasticityRule ∧ fearConditioning ∧ extinctionLearning

structure AmygdalaAdmissibleClass where
  object : AmygdalaObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AmygdalaWitnessClosed (O : AmygdalaObject) : Prop :=
  O.conclusion

def admittedClosure (A : AmygdalaAdmissibleClass) : Prop :=
  AmygdalaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse