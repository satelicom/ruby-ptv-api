module SatelicomPtv
  module Model
    module XRoute
      class RoutingOption < SatelicomPtv::Model::Base
        property 'parameter', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::ROUTING_PARAMETER, value)
        end
        property 'value'
      end
    end
  end
end