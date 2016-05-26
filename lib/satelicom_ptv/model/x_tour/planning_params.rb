module SatelicomPtv
  module Model 
    module XTour
      class PlanningParams < SatelicomPtv::Model::Base
        property 'restrictions'
        property 'loadingFunctions'
        property 'distanceMatrixCalculation'
        property 'directVelocity'
        property 'directDistanceFactor'
        property 'coDriverTransportPointLoadingFactor'
        property 'coDriverTransportPointsInSeparateTours'
        property 'regulations'
        property 'productIncompatibilities'

        coerce_key :restrictions, Restrictions
        coerce_key :loadingFunctions,  Array[LoadingFunction]
        coerce_key :distanceMatrixCalculation, Array[DistanceMatrixCalculation]
        coerce_key :regulations, Array[DistanceMatrixCalculation]
        coerce_key :productIncompatibilities, Array[ProductIncompatibility]
      end
    end
  end
end
