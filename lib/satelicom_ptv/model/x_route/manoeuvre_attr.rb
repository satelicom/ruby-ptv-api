module SatelicomPtv
  module Model
    module XRoute
      class ManoeuvreAttr < SatelicomPtv::Model::Base
        property 'isBorder'
        property 'tollRoadStart'
        property 'tollRoadEnd'
        property 'isBlockingStart'
        property 'isBlockingEnd'
        property 'isUrbanStart'
        property 'isUrbanEnd'
        property 'isBrunnelStart'
        property 'isBrunnelEnd'
      end
    end
  end
end