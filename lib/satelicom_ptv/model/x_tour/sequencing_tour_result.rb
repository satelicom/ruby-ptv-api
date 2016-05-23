module SatelicomPtv
  module Model 
    module XTour
      class SequencingTourResult < SatelicomPtv::Model::Base
        property 'period'
        property 'drivingPeriod'
        property 'distance'
        property 'distanceFromFirstToLastTransportPoint'
        property 'maxDistanceBetweenTransportPoints'
        property 'servicePeriod'
        property 'restPeriod'
        property 'breakPeriod'
        property 'earliness'
        property 'waitingPeriod'
        property 'transportPointCount'
        property 'startTime'
        property 'startTimeLatest'
        property 'coDriverRequired'
        property 'totalCosts'
        property 'pickupQuantities'
        property 'deliveryQuantities'
        property 'maxQuantities'
        property 'depotUploadingPeriod'
        property 'depotUnloadingPeriod'
        property 'depotAvailabilityForDeliveries'
        property 'depotAvailabilityForPickups'
        property 'tourChanged'
        property 'violations'
        property 'remainingPeriods'
        
        coerce_key :totalCosts, TotalCosts
        coerce_key :pickupQuantities, Quantities
        coerce_key :deliveryQuantities, Quantities
        coerce_key :maxQuantities, Quantities
      end
    end
  end
end