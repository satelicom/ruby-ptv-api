module SatelicomPtv
  module Model 
    module XLocate
      class SequencingTransportDepot < AbstractTransportOrder
        property 'transportPoint'
        property 'pickupQuantities'
        property 'deliveryQuantities'
        property 'maxTransportPeriodForDeliveries'
        property 'maxTransportPeriodForPickups'
        property 'depotAvailabilityForDeliveries'
        property 'depotAvailabilityForPickups'

        coerce_key :transportPoint, TransportPoint
        coerce_key :pickupQuantities, Quantities
        coerce_key :deliveryQuantities, Quantities
      end
    end
  end
end