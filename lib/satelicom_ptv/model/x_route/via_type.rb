module SatelicomPtv
  module Model
    module XRoute
      class ViaType < SatelicomPtv::Model::Base
        property 'viaType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::VIA_TYPE_ENUM, value)
        end
      end
    end
  end
end