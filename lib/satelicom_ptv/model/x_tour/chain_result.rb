module SatelicomPtv
  module Model 
    module XTour
      class ChainResult < SatelicomPtv::Model::Base
        property 'vehicleDescription'
        property 'chainCosts'
        property 'tourEvents'
        property 'remainingPeriods'
        property 'drivingPeriod'
        property 'endTime'
        property 'periodFromStartLocation'
        property 'distanceFromStartLocation'
        property 'periodToEndLocation'
        property 'distanceToEndLocation'
        
        coerce_key :tourEvents, Array[TourEvent]
      end
    end
  end
end