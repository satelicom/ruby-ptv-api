module RubyPtvApi
  module Model
    module XLocate
      class AdditionalField < RubyPtvApi::Model::Base

        property 'field', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::RESULT_FIELD, value)
        end

        property 'value'
      end
    end
  end
end