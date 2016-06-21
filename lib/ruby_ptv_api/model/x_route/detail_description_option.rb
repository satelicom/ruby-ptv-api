module RubyPtvApi
  module Model
    module XRoute
      class DetailDescriptionOption < RubyPtvApi::Model::Base
        property 'radius'
        property 'minLevel', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::DETAIL_LEVEL, value)
        end
      end
    end
  end
end