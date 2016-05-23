module SatelicomPtv
  module Model
    module XLocate
      class Location < SatelicomPtv::Model::Base
        property 'coordinate'
        
        coerce_key :coordinate, SatelicomPtv::Model::Point
      end
    end
  end
end