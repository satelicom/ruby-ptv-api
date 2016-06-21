module RubyPtvApi
  module Model
    module XLocate
      class SortOption < RubyPtvApi::Model::Base
        property 'field', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::RESULT_FIELD, value)
        end
        property 'order', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::SORT_ORDER, value)
        end
      end
    end
  end
end