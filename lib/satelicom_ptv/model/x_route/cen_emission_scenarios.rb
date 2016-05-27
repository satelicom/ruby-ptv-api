module SatelicomPtv
  module Model
    module XRoute
      class CENEmissionScenarios < SatelicomPtv::Model::Base
        property 'vehicleSpecific'
        property 'fleetSpecific'
        property 'routeSpecific'
        property 'actualFuelConsumption'
        property 'basedOnHBEFA'
        property 'vehicleSpecificConversionFactors'
        
        coerce_key :vehicleSpecific, CENEmissions
        coerce_key :fleetSpecific, CENEmissions
        coerce_key :routeSpecific, CENEmissions
        coerce_key :actualFuelConsumption, CENEmissions
        coerce_key :basedOnHBEFA, CENEmissions
        coerce_key :vehicleSpecificConversionFactors, Array[CENEmissionConversionFactors]
      end
    end
  end
end