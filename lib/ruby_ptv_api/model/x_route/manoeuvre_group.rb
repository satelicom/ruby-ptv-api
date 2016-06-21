module RubyPtvApi
  module Model
    module XRoute
      class ManoeuvreGroup < RubyPtvApi::Model::Base
        property 'fromIdx'
        property 'toIdx'
        property 'type', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::MANOEUVRE_GROUP_TYPE, value)
        end
        property 'extend'
        
        coerce_key :extend, BoundingRectangle
      end
    end
  end
end