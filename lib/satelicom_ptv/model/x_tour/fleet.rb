module SatelicomPtv
  module Model 
    module XTour
      class Fleet < SatelicomPtv::Model::Base
        property 'vehicles'
        property 'trailers'
        property 'trains'
        
        coerce_key :vehicles, Array[Vehicle]
        coerce_key :trailers, Array[Trailer]
        coerce_key :trains  , Array[Train]
      end
    end
  end
end