module SatelicomPtv
  module Model
    module XLocate
      class SortOption < SatelicomPtv::Model::Base
        include Hashie::Extensions::Dash::PropertyTranslation

        property 'field', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::RESULT_FIELD, value)
        end
        property 'order', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::SORT_ORDER, value)
        end
      end
    end
  end
end