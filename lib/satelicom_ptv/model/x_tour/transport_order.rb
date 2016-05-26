module SatelicomPtv
  module Model 
    module XTour
      class TransportOrder < AbstractTransportOrder
        property 'vehicleId'
        property 'vehicleCategories'
        property 'vehicleRequirements'
        property 'vehicleExclusions'
        property 'areaNumber'
        property 'minLoadingArea'
        property 'maxLoadingArea'
        property 'trailerLoadingForbidden'

        coerce_key :minLoadingArea, LoadingArea
        coerce_key :minLoadingArea, LoadingArea
      end
    end
  end
end