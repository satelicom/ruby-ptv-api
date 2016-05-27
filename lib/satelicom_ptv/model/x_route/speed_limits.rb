module SatelicomPtv
  module Model
    module XRoute
      class SpeedLimits < SatelicomPtv::Model::Base
        property 'speedLimit'
        coerce_key :speedLimit, Array[SpeedLimit]
      end
    end
  end
end