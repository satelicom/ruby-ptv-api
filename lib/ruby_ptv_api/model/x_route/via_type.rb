module RubyPtvApi
  module Model
    module XRoute
      class ViaType < RubyPtvApi::Model::Base
        property 'viaType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::VIA_TYPE_ENUM, value)
        end
      end
    end
  end
end