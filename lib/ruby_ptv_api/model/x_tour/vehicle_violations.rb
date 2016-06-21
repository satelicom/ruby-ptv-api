module RubyPtvApi
  module Model
    module XTour
      class VehicleViolations < RubyPtvApi::Model::Base
        property 'vehicleId'
        property 'trailerId'
        property 'trainId'
        property 'violations'
      end
    end
  end
end
