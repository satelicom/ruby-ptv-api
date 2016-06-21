module RubyPtvApi
  module Model
    module XRoute
      class EncodedGeometry < RubyPtvApi::Model::Base
        property 'wkb'
        property 'wkt'
        property 'kml'
        
        coerce_key :klm, KLM
      end
    end
  end
end