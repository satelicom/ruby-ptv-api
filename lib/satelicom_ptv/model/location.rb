module SatelicomPtv
  module Model
    class Location < Base
      property :coordinate
      coerce_key 'coordinate', Point
    end
  end
end