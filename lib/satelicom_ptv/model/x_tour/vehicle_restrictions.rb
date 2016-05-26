module SatelicomPtv
  module Model 
    module XTour
      class VehicleRestrictions < SatelicomPtv::Model::Base
        property 'maxTransportPointCountPerTour'
        property 'maxDrivingPeriodPerChain'
        property 'maxTourCountPerChain'
      end
    end
  end
end