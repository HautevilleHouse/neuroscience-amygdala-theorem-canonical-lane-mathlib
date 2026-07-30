import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure AmygdalaNeuralPopulation where
  neuronCount : Nat
  connectivityMatrix : Type
  firingRates : Type
  synapticWeights : Type
  hebbianPlasticityRule : Prop
  hebbianPlasticityRuleTerm : hebbianPlasticityRule

structure NeuralPopulationPackage where
  population : AmygdalaNeuralPopulation
  rateEquations : Prop
  rateEquationsClosed : rateEquations
  learningDynamics : Prop
  learningDynamicsClosed : learningDynamics

def NeuralPopulationClosed (N : NeuralPopulationPackage) : Prop :=
  N.rateEquations ∧ N.learningDynamics

theorem neural_population_closed_from_evidence (N : NeuralPopulationPackage) :
    NeuralPopulationClosed N := by
  exact And.intro N.rateEquationsClosed N.learningDynamicsClosed

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse