module RubyPtvApi
  module Model
    module XRoute
      class RouteInfo < RubyPtvApi::Model::Base
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