module SatelicomPtv
  module Model
    class Point < Base
      coerce_key :point, PlainPoint
    end
  end
end