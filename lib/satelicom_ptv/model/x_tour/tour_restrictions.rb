module SatelicomPtv
  module Model 
    module XTour
      class TourRestrictions < SatelicomPtv::Model::Base
        property 'maxPeriod'
        property 'maxDrivingPeriod'
        property 'maxDistance'
        property 'maxDistanceFromFirstToLastTransportPoint'
        property 'maxDistanceBetweenTransportPoints'
      end
    end
  end
end
