import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure ConnectomicsAmygdalaPackage where
  amygdalaConnectivityMatrix : Prop
  basolateralAmygdalaNuclei : Prop
  centromedialAmygdalaNuclei : Prop
  corticalAmygdalaNuclei : Prop
  afferentProjections : Prop
  efferentProjections : Prop

structure ConnectomicsAmygdalaEvidence (C : ConnectomicsAmygdalaPackage) where
  amygdalaConnectivityMatrixClosed : C.amygdalaConnectivityMatrix
  basolateralAmygdalaNucleiClosed : C.basolateralAmygdalaNuclei
  centromedialAmygdalaNucleiClosed : C.centromedialAmygdalaNuclei
  corticalAmygdalaNucleiClosed : C.corticalAmygdalaNuclei
  afferentProjectionsClosed : C.afferentProjections
  efferentProjectionsClosed : C.efferentProjections

def ConnectomicsAmygdalaClosed (C : ConnectomicsAmygdalaPackage) : Prop :=
  C.amygdalaConnectivityMatrix ∧ C.basolateralAmygdalaNuclei ∧ C.centromedialAmygdalaNuclei ∧ C.corticalAmygdalaNuclei ∧ C.afferentProjections ∧ C.efferentProjections

theorem connectomics_amygdala_closed_from_evidence (C : ConnectomicsAmygdalaPackage) (E : ConnectomicsAmygdalaEvidence C) : ConnectomicsAmygdalaClosed C := by
  exact And.intro E.amygdalaConnectivityMatrixClosed (And.intro E.basolateralAmygdalaNucleiClosed (And.intro E.centromedialAmygdalaNucleiClosed (And.intro E.corticalAmygdalaNucleiClosed (And.intro E.afferentProjectionsClosed E.efferentProjectionsClosed))))

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse