import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure AmygdalaFearConditioningPackage where
  conditionedStimulus : Prop
  unconditionedStimulus : Prop
  fearResponse : Prop
  synapticPlasticityLateralAmygdala : Prop
  thalamicInputPathway : Prop
  corticalInputPathway : Prop
  amygdalaHippocampusInteraction : Prop

structure AmygdalaFearConditioningEvidence (A : AmygdalaFearConditioningPackage) where
  conditionedStimulusClosed : A.conditionedStimulus
  unconditionedStimulusClosed : A.unconditionedStimulus
  fearResponseClosed : A.fearResponse
  synapticPlasticityLateralAmygdalaClosed : A.synapticPlasticityLateralAmygdala
  thalamicInputPathwayClosed : A.thalamicInputPathway
  corticalInputPathwayClosed : A.corticalInputPathway
  amygdalaHippocampusInteractionClosed : A.amygdalaHippocampusInteraction

def AmygdalaFearConditioningClosed (A : AmygdalaFearConditioningPackage) : Prop :=
  A.conditionedStimulus ∧ A.unconditionedStimulus ∧ A.fearResponse ∧ A.synapticPlasticityLateralAmygdala ∧ A.thalamicInputPathway ∧ A.corticalInputPathway ∧ A.amygdalaHippocampusInteraction

theorem amygdala_fear_conditioning_closed_from_evidence (A : AmygdalaFearConditioningPackage) (E : AmygdalaFearConditioningEvidence A) : AmygdalaFearConditioningClosed A := by
  exact And.intro E.conditionedStimulusClosed (And.intro E.unconditionedStimulusClosed (And.intro E.fearResponseClosed (And.intro E.synapticPlasticityLateralAmygdalaClosed (And.intro E.thalamicInputPathwayClosed (And.intro E.corticalInputPathwayClosed E.amygdalaHippocampusInteractionClosed)))))

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse