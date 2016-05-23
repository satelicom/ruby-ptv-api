module SatelicomPtv
  module Model 
    module XTour
      class Capacities < SatelicomPtv::Model::Base
        property 'capacities'

        coerce_key :capacities, Array[Quantities]
      end
    end
  end
end