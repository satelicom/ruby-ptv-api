module SatelicomPtv
  module Model
    module XLocate
      class Location < Base
        property 'coordinate'
        
        coerce_key :coordinate, Point
      end
    end
  end
end