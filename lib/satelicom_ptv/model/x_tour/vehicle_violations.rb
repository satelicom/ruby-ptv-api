module SatelicomPtv
  module Model
    module XTour
      class VehicleViolations < SatelicomPtv::Model::Base
        property 'vehicleId'
        property 'trailerId'
        property 'trainId'
        property 'violations'
      end
    end
  end
end
