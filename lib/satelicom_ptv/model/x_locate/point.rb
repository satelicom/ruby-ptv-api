module SatelicomPtv
  module Model
    module XLocate
      class Point < Base
        property 'point'
        coerce_key :point, PlainPoint
      end
    end
  end
end