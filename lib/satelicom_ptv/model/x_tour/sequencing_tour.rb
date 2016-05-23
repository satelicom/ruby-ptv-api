module SatelicomPtv
  module Model 
    module XTour
      class SequencingTour < SatelicomPtv::Model::Base
        property 'result'
        property 'tourPoints'

        coerce_key :capacities, SequencingTourResult
        coerce_key :capacities, Array[SequencingTourPoint]
      end
    end
  end
end