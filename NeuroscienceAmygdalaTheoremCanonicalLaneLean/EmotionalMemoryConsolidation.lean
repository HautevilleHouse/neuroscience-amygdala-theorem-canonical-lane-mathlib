import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure AmygdalaSubnuclei where
  lateralamgdala : Prop
  basalamgdala : Prop
  centralamygdala : Prop
  intercalatedCells : Prop

structure EmotionalMemoryPackage where
  fearConditioning : Prop
  extinctionLearning : Prop
  reconsolidation : Prop
  fearConditioningClosed : fearConditioning
  extinctionLearningClosed : extinctionLearning
  reconsolidationClosed : reconsolidation

def EmotionalMemoryClosed (E : EmotionalMemoryPackage) : Prop :=
  E.fearConditioning ∧ E.extinctionLearning ∧ E.reconsolidation

theorem emotional_memory_closed_from_evidence (E : EmotionalMemoryPackage) :
    EmotionalMemoryClosed E := by
  exact And.intro E.fearConditioningClosed
    (And.intro E.extinctionLearningClosed E.reconsolidationClosed)

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse