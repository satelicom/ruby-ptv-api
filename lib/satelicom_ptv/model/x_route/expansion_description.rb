module SatelicomPtv
  module Model
    module XRoute
      class ExpansionDescription < SatelicomPtv::Model::Base
        property 'horizons'
        property 'expansionType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::EXPANSION_TYPE, value)
        end
      end
    end
  end
end