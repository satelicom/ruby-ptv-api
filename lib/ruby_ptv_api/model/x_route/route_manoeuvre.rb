module RubyPtvApi
  module Model
    module XRoute
      class RouteManoeuvre < RubyPtvApi::Model::Base
        property 'exitAngle'
        property 'exitAngleNorth'
        property 'turnWeight', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::TURN_WEIGHT, value)
        end
        property 'turnOrient', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::TURN_ORIENT, value)
        end
        property 'exitNr'
        property 'manoeuvreType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::MANOEUVRE_TYPE, value)
        end
        property 'detailLevel', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::DETAIL_LEVEL, value)
        end
        property 'dirInfoNodeType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::INFO_NODE_TYPE, value)
        end
        property 'dirInfoIdx'
        property 'locInfoNodeType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::INFO_NODE_TYPE, value)
        end
        property 'locInfoIdx'
        property 'routeListSegmentIdx'
        property 'predSegmentIdx'
        property 'succSegmentIdx'
        property 'manoeuvreDesc'
        property 'manoeuvreAttr'
        property 'urbanlManoeuvre'
        property 'brunnelManoeuvre'
        property 'manoeuvreGroupIdx'
        property 'viaIdx'
        
        coerce_key :manoeuvreAttr, ManoeuvreAttr
        coerce_key :urbanlManoeuvre, UrbanManoeuvre
        coerce_key :brunnelManoeuvre, BrunnelManoeuvre
      end
    end
  end
end