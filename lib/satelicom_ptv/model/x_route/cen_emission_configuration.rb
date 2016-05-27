module SatelicomPtv
  module Model
    module XRoute
      class CenEmissionConfiguration < SatelicomPtv::Model::Base
        property 'fleetSpecificAverageFuelConsumption'
        property 'routeSpecificAverageFuelConsumption'
        property 'actualFuelConsumptionForThisRoute'
        property 'cenVersion', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::CEN_VERSION, value)
        end
      end
    end
  end
end