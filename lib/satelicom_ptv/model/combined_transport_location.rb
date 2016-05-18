module SatelicomPtv
  module Model
    class CombinedTransportLocation < Base
      property 'coordinate'
      property 'country'
      property 'name'
      
      coerce_key :coordinate, Point
    end
  end
end