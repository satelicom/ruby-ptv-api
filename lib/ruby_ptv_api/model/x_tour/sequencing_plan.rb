module RubyPtvApi
  module Model 
    module XTour
      class SequencingPlan < RubyPtvApi::Model::Base
        property 'tour'
        property 'result'

        coerce_key :tour, SequencingTour
        coerce_key :result, SequencingPlanResult
      end
    end
  end
end