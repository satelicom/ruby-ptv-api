module RubyPtvApi
  module Model
    module XRoute
      class ExpansionDescription < RubyPtvApi::Model::Base
        property 'horizons'
        property 'expansionType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::EXPANSION_TYPE, value)
        end
      end
    end
  end
end