module RubyPtvApi
  module Model 
    module XTour
      class UnscheduledOrderAnalysisResult < RubyPtvApi::Model::Base
        property 'orderId'
        property 'status'
        property 'vehicleViolations'
        property 'tourViolations'

        coerce_key :vehicleViolations, Array[VehicleViolations]
        coerce_key :tourViolations, Array[TourViolations]
      end
    end
  end
end