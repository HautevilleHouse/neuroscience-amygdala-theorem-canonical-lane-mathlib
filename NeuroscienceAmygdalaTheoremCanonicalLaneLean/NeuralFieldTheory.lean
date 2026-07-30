import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure NeuralFieldTheory where
  activationFunction : Type
  connectivityKernel : Type
  fieldEquation : Prop
  stationarySolutionsExist : Prop
  stabilityCondition : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheory) where
  fieldEquationClosed : N.fieldEquation
  stationarySolutionsExistClosed : N.stationarySolutionsExist
  stabilityConditionClosed : N.stabilityCondition

def NeuralFieldTheoryClosed (N : NeuralFieldTheory) : Prop :=
  N.fieldEquation ∧ N.stationarySolutionsExist ∧ N.stabilityCondition

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheory)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.stationarySolutionsExistClosed E.stabilityConditionClosed)

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse