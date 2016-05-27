module SatelicomPtv
  module Model
    module XRoute
      class WaypointDesc < SatelicomPtv::Model::Base
        property 'coords'
        property 'linkType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::LINK_TYPE, value)
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

        coerce_key :coords        , Point
        coerce_key :nodeID        , UniqueGeoID
        coerce_key :segmentID     , Array[UniqueGeoID]
        coerce_key :routingOptions, Array[RoutingOption]
        coerce_key :vehicleOptions, Array[VehicleOption]
        coerce_key :viaType       , ViaType
      end
    end
  end
end