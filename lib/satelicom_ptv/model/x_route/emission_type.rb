module SatelicomPtv
  module Model
    module XRoute
      class EmissionType < SatelicomPtv::Model::Base
        property 'emissionLevel', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::DETAIL_LEVEL, value)
        end
      end
    end
  end
end