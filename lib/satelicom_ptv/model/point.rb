module SatelicomPtv
  module Model
    class Point < Base
      property 'point'
      coerce_key :point, PlainPoint
    end
  end
end