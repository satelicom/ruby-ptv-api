module SatelicomPtv
  module Model 
    module XTour
      class TourPointResult < SatelicomPtv::Model::Base
        property 'orderId'
        property 'arrivalTime'
        property 'startServiceTime'
        property 'endServiceTime'
        property 'departureTime'
        property 'drivingPeriod'
        property 'waitingPeriod'
        property 'servicePeriod'
        property 'breakPeriodOnRoad'
        property 'breakPeriodAtTourPoint'
        property 'restPeriodOnRoad'
        property 'restPeriodAtTourPoint'
        property 'earliness'
        property 'delay'
        property 'startDistance'
        property 'drivingDistance'
        property 'currentQuantities'
        property 'tourPointViolations'

        coerce_key :currentQuantities, Quantities
      end
    end
  end
end