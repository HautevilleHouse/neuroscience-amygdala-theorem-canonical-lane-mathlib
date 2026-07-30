import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAmygdalaTheoremCanonicalLaneLean.AmygdalaAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure HebbianLearningRule where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  learningRate : ℝ
  weightChange : ℝ
  ruleFormulated : Prop
  ruleValid : Prop

def HebbianRuleClosed (h : HebbianLearningRule) : Prop :=
  h.ruleFormulated ∧ h.ruleValid

structure HebbianRuleEvidence (h : HebbianLearningRule) where
  ruleFormulatedClosed : h.ruleFormulated
  ruleValidClosed : h.ruleValid

theorem hebbian_rule_closed_from_evidence (h : HebbianLearningRule) (e : HebbianRuleEvidence h) :
    HebbianRuleClosed h := by
  exact And.intro e.ruleFormulatedClosed e.ruleValidClosed

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse