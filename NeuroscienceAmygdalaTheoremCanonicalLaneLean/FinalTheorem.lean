import GateLemmas

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

def ConstrainedAmygdalaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_amygdala_endgame (A : AdmissibleClass) :
    ConstrainedAmygdalaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse