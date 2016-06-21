module RubyPtvApi
  module Model 
    module XTour
      class Vehicle < BaseVehicle
        property 'id'
        property 'description'
        property 'category'
        property 'transportEquipments'
        property 'areaNumbers'
        property 'intermediatePeriod'
        property 'startLocation'
        property 'endLocation'
        property 'restrictions'
        property 'minLoadingArea'
        property 'maxLoadingArea'
        property 'ignoreIntermediatePeriodBeforeFirstTour'
        
        coerce_key :startLocation , RubyPtvApi::Model::Point
        coerce_key :endLocation   , RubyPtvApi::Model::Point
        coerce_key :restrictions  , VehicleRestrictions
        coerce_key :minLoadingArea, LoadingArea
        coerce_key :maxLoadingArea, LoadingArea
        
      end
    end
  end
end