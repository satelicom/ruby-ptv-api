module SatelicomPtv
  module Model
    module XRoute
      class DetailDescriptionOption < SatelicomPtv::Model::Base
        property 'radius'
        property 'minLevel', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::DETAIL_LEVEL, value)
        end
      end
    end
  end
end