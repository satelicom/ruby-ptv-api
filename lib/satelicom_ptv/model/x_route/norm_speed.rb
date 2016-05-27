module SatelicomPtv
  module Model
    module XRoute
      class NormSpeed < SatelicomPtv::Model::Base
        property 'normSpeed'
        property 'normSpeedType', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::NORM_SPEED_TYPE, value)
        end
      end
    end
  end
end