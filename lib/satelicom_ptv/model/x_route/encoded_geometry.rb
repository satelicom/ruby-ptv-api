module SatelicomPtv
  module Model
    module XRoute
      class EncodedGeometry < SatelicomPtv::Model::Base
        property 'wkb'
        property 'wkt'
        property 'kml'
        
        coerce_key :klm, KLM
      end
    end
  end
end