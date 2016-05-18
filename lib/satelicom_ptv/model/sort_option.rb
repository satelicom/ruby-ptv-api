module SatelicomPtv
  module Model
    class SortOption < Base
      include Hashie::Extensions::Dash::PropertyTranslation

      property 'field', transform_with: ->(value) do 
        value = value.to_sym
        if SatelicomPtv::Constant::RESULT_FIELD.include?(value)
          value
        else
          raise  WrongParameterFormat.new("#{value} is valid RESULT_FIELD")
        end
      end
      property 'order', transform_with: ->(value) do 
        value = value.to_sym
        if SatelicomPtv::Constant::SORT_ORDER.include?(value)
          value
        else
          raise  WrongParameterFormat.new("#{value} is valid SORT_ORDER")
        end
      end
    end
  end
end