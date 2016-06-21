module RubyPtvApi
  module Model
    module XRoute
      class RoutingOption < RubyPtvApi::Model::Base
        property 'parameter', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::ROUTING_PARAMETER, value)
        end
        property 'value'
      end
    end
  end
end