module SatelicomPtv
  module Model 
    module XTour
      class SequencingPlan < SatelicomPtv::Model::Base
        property 'tour'
        property 'result'

        coerce_key :tour, SequencingTour
        coerce_key :result, SequencingPlanResult
      end
    end
  end
end