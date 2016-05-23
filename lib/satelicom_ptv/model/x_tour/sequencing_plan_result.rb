module SatelicomPtv
  module Model 
    module XTour
      class SequencingPlanResult < SatelicomPtv::Model::Base
        property 'tourEvents'
        property 'remainingPeriods'
        property 'scheduledOrderIds'
        property 'unscheduledOrderIds'
        property 'unscheduledOrderAnalysisResults'

        coerce_key :tourEvents, Array[TourEvent]
        coerce_key :result, Array[UnscheduledOrderAnalysisResult]
      end
    end
  end
end