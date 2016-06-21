module RubyPtvApi
  module Model
    module XRoute
      class WaypointDesc < RubyPtvApi::Model::Base
        property 'coords'
        property 'linkType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::LINK_TYPE, value)
        end
        property 'nodeID'
        property 'segmentID'
        property 'fuzzyRadius'
        property 'heading'
        property 'street'
        property 'routingOptions'
        property 'vehicleOptions'
        property 'viaType'
        property 'combinedTransportID'

        coerce_key :coords        , Array[Point]
        coerce_key :nodeID        , UniqueGeoID
        coerce_key :segmentID     , Array[UniqueGeoID]
        coerce_key :routingOptions, Array[RoutingOption]
        coerce_key :vehicleOptions, Array[VehicleOption]
        coerce_key :viaType       , ViaType
      end
    end
  end
end