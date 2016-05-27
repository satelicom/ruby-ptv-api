module SatelicomPtv
  module Model
    module XRoute
      class BoundingRectangle < SatelicomPtv::Model::Base
        property 'leftBottom'
        property 'rightTop'
        
        coerce_key :leftBottom,  Point
        coerce_key :rightTop  ,  Point
      end
    end
  end
end