module SatelicomPtv
  module Model
    class Location < Base
      coerce_key 'coordinate', Point
    end
  end
end