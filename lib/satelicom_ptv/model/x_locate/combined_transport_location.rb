module SatelicomPtv
  module Model 
    module XLocate
      class CombinedTransportLocation < Base
        property 'coordinate'
        property 'country'
        property 'name'
        
        coerce_key :coordinate, Point
      end
    end
  end
end