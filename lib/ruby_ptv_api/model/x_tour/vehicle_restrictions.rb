module RubyPtvApi
  module Model 
    module XTour
      class VehicleRestrictions < RubyPtvApi::Model::Base
        property 'maxTransportPointCountPerTour'
        property 'maxDrivingPeriodPerChain'
        property 'maxTourCountPerChain'
      end
    end
  end
end