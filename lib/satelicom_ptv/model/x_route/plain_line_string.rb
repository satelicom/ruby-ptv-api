module SatelicomPtv
  module Model
    module XRoute
      class PlainLineString < PlainGeometryBase
        property 'points'
        
        coerce_key :points, Array[PlainPoint]
      end
    end
  end
end