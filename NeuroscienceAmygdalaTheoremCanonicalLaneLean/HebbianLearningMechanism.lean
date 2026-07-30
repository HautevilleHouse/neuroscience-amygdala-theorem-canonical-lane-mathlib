import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  preSynapticActivity : Type
  postSynapticActivity : Type
  weightUpdateRule : Prop
  spikeTimingDependence : Prop
  weightUpdateRuleClosed : weightUpdateRule
  spikeTimingDependenceClosed : spikeTimingDependence

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.weightUpdateRule ∧ H.spikeTimingDependence

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) :
    HebbianLearningClosed H := by
  exact And.intro H.weightUpdateRuleClosed H.spikeTimingDependenceClosed

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse