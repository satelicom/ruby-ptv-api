module RubyPtvApi
  module Model
    module XRoute
      class ExceptionPath < RubyPtvApi::Model::Base
        property 'nodes'
        property 'extSegments'
        property 'street'
        property 'binaryPathDesc'
        property 'relMalus'
        property 'polyline'
        
        coerce_key :nodes, Array[UniqueGeoID]
        coerce_key :polyline, LineString
      end
    end
  end
end