module SatelicomPtv
  module Model
    module XRoute
      class LineString < EncodedGeometry
        property 'lineString'
        
        coerce_key :nodes, PlainLineString
      end
    end
  end
end