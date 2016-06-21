module RubyPtvApi
  module Model 
    module XTour
      class TourRestrictions < RubyPtvApi::Model::Base
        property 'maxPeriod'
        property 'maxDrivingPeriod'
        property 'maxDistance'
        property 'maxDistanceFromFirstToLastTransportPoint'
        property 'maxDistanceBetweenTransportPoints'
      end
    end
  end
end
