module SatelicomPtv
  module Model
    module XLocate
      class AdditionalField < SatelicomPtv::Model::Base
        include Hashie::Extensions::Dash::PropertyTranslation

        property 'field', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::RESULT_FIELD, value)
        end

        property 'value'
      end
    end
  end
end