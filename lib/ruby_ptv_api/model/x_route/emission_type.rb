module RubyPtvApi
  module Model
    module XRoute
      class EmissionType < RubyPtvApi::Model::Base
        property 'emissionLevel', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::DETAIL_LEVEL, value)
        end
      end
    end
  end
end