module RubyPtvApi
  module Model 
    module XTour
      class PlanResult < RubyPtvApi::Model::Base
        property 'totalTourCount'
        property 'totalTourPeriod'
        property 'totalTourDrivingPeriod'
        property 'totalTourDistance'
        property 'totalTourCosts'
        property 'totalChainCosts'
        property 'scheduledOrderIds'
        property 'unscheduledOrderIds'
        property 'scheduledVehicleIds'
        property 'unscheduledVehicleIds'
        property 'unscheduledOrderAnalysisResults'

        coerce_key :unscheduledOrderAnalysisResults, Array[UnscheduledOrderAnalysisResult]
      end
    end
  end
end