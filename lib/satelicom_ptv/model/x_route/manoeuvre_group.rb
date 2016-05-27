module SatelicomPtv
  module Model
    module XRoute
      class ManoeuvreGroup < SatelicomPtv::Model::Base
        property 'fromIdx'
        property 'toIdx'
        property 'type', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::MANOEUVRE_GROUP_TYPE, value)
        end
        property 'extend'
        
        coerce_key :extend, BoundingRectangle
      end
    end
  end
end