import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AmygdalaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse