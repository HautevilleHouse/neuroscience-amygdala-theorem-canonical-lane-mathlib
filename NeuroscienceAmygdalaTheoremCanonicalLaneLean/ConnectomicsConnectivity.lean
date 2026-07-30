import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAmygdalaTheoremCanonicalLaneLean

structure ConnectomicsConnectivity where
  regionList : Type
  adjacencyMatrix : Type
  tractTracingVerified : Prop
  functionalCorrelation : Prop
  motifDistributionMatched : Prop

structure ConnectomicsConnectivityEvidence (C : ConnectomicsConnectivity) where
  tractTracingVerifiedClosed : C.tractTracingVerified
  functionalCorrelationClosed : C.functionalCorrelation
  motifDistributionMatchedClosed : C.motifDistributionMatched

def ConnectomicsConnectivityClosed (C : ConnectomicsConnectivity) : Prop :=
  C.tractTracingVerified ∧ C.functionalCorrelation ∧ C.motifDistributionMatched

theorem connectomics_connectivity_closed_from_evidence (C : ConnectomicsConnectivity)
    (E : ConnectomicsConnectivityEvidence C) : ConnectomicsConnectivityClosed C := by
  exact And.intro E.tractTracingVerifiedClosed
    (And.intro E.functionalCorrelationClosed E.motifDistributionMatchedClosed)

end NeuroscienceAmygdalaTheoremCanonicalLaneLean
end HautevilleHouse