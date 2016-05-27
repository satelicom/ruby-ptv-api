module SatelicomPtv
  module Model 
    module XTour
      class BaseVehicle < AbstractVehicle 
        property 'drivingPeriodFactor'
        property 'servicePeriodFactor'
        property 'transportPointUploadingFunctionId'
        property 'transportPointUnloadingFunctionId'
        property 'depotUploadingFunctionId'
        property 'depotUnloadingFunctionId'
        property 'departureTimeFixed'
        property 'isPreloaded'
        property 'capacities'
        property 'costs'
        property 'dimaId'#, required: true #depot id
        property 'ignoreTransportPointServicePeriod'
        property 'coDriverStatus', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::CO_DRIVER_STATUS, value)
        end
        property 'toursMustFitIntoSingleOperatingInterval'
        property 'driverSettings'
        
        coerce_key :capacities, Capacities
        coerce_key :costs, VehicleCosts
        coerce_key :driverSettings, DriverSettings        
      end
    end
  end
end
        