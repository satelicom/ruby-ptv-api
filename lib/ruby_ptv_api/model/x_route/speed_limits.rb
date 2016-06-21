module RubyPtvApi
  module Model
    module XRoute
      class SpeedLimits < RubyPtvApi::Model::Base
        property 'speedLimit'
        coerce_key :speedLimit, Array[SpeedLimit]
      end
    end
  end
end