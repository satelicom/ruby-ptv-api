module RubyPtvApi
  module Model
    module XRoute
      class CenEmissionConfiguration < RubyPtvApi::Model::Base
        property 'fleetSpecificAverageFuelConsumption'
        property 'routeSpecificAverageFuelConsumption'
        property 'actualFuelConsumptionForThisRoute'
        property 'cenVersion', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::CEN_VERSION, value)
        end
      end
    end
  end
end