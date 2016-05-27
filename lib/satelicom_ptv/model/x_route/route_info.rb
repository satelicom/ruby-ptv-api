module SatelicomPtv
  module Model
    module XRoute
      class RouteInfo < SatelicomPtv::Model::Base
        property 'distance'
        property 'time'
        property 'cost'
        property 'travelTrend'
        property 'hasViolations'
        
        coerce_key :travelTrend, Array[CommuterTravelTrend]
      end
    end
  end
end