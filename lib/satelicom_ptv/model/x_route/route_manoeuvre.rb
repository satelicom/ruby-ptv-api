module SatelicomPtv
  module Model
    module XRoute
      class RouteManoeuvre < SatelicomPtv::Model::Base
        property 'exitAngle'
        property 'exitAngleNorth'
        property 'turnWeight', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::TURN_WEIGHT, value)
        end
        property 'turnOrient', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::TURN_ORIENT, value)
        end
        property 'exitNr'
        property 'manoeuvreType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::MANOEUVRE_TYPE, value)
        end
        property 'detailLevel', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::DETAIL_LEVEL, value)
        end
        property 'dirInfoNodeType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::INFO_NODE_TYPE, value)
        end
        property 'dirInfoIdx'
        property 'locInfoNodeType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::INFO_NODE_TYPE, value)
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