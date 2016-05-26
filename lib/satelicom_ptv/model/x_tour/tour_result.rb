module SatelicomPtv
  module Model 
    module XTour
      class TourResult < SatelicomPtv::Model::Base
        property 'vehicleRequirements'
        property 'vehicleExclusions'
        property 'trainDescription'
        property 'trailerDescription'
        property 'maxLoadingArea'
        property 'minLoadingArea'
        
        coerce_key :maxLoadingArea, LoadingArea
        coerce_key :minLoadingArea, LoadingArea
      end
    end
  end
end