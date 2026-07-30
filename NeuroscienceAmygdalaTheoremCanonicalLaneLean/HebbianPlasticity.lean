import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAmygdalaTheoremCanonicalLaneLean.AmygdalaAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure HebbianPlasticityPackage (A : AmygdalaAdmissibleClass) where
  synapticWeights : Type
  spikeTiming : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  learningRule : Prop

structure HebbianPlasticityEvidence {A : AmygdalaAdmissibleClass} (H : HebbianPlasticityPackage A) where
  spikeTimingClosed : H.spikeTiming
  ltpInductionClosed : H.ltpInduction
  ltdInductionClosed : H.ltdInduction
  learningRuleClosed : H.learningRule

def HebbianPlasticityClosed {A : AmygdalaAdmissibleClass} (H : HebbianPlasticityPackage A) : Prop :=
  H.spikeTiming ∧ H.ltpInduction ∧ H.ltdInduction ∧ H.learningRule

theorem hebbian_plasticity_closed_from_evidence
    {A : AmygdalaAdmissibleClass} (H : HebbianPlasticityPackage A) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingClosed
    (And.intro E.ltpInductionClosed
      (And.intro E.ltdInductionClosed E.learningRuleClosed))

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse