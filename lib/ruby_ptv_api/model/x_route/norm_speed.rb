module RubyPtvApi
  module Model
    module XRoute
      class NormSpeed < RubyPtvApi::Model::Base
        property 'normSpeed'
        property 'normSpeedType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::NORM_SPEED_TYPE, value)
        end
      end
    end
  end
end