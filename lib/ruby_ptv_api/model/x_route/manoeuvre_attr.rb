module RubyPtvApi
  module Model
    module XRoute
      class ManoeuvreAttr < RubyPtvApi::Model::Base
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