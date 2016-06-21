module RubyPtvApi
  module Model 
    module XTour
      class Train < RubyPtvApi::Model::Base
        property 'id'
        property 'description'
        property 'vehicleIds'
        property 'trailerIds'
        property 'capacities'
        property 'costs'
        property 'dimaId'
        property 'minLoadingArea'
        property 'maxLoadingArea'
        property 'category'
        property 'drivingPeriodFactor'
        property 'transportEquipments'
        property 'maxTransportPointCountPerTour'
        
        coerce_key :capacities, Capacities
        coerce_key :costs, Costs
        coerce_key :minLoadingArea, LoadingArea
        coerce_key :maxLoadingArea, LoadingArea
      end
    end
  end
end