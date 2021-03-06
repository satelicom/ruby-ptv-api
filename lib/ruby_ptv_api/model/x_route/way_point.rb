module RubyPtvApi
  module Model
    module XRoute
      class WayPoint < RubyPtvApi::Model::Base
        property 'accTime'
        property 'accDist'
        property 'iuCode'
        property 'polyIdx'
        property 'nodeIdx'
        property 'segmentIdx'
        property 'manoeuvreIdx'
        property 'locationCoord'
        property 'matchCoord'
        property 'wayPointType', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::WAY_POINT_TYPE, value)
        end
        property 'dynamicInfo'
        property 'countryCode'
        property 'emissions'
        property 'cenEmissions'
        property 'utcOffset'
        
        coerce_key :locationCoord, Point
        coerce_key :matchCoord, Point
        coerce_key :emissions, Emissions
        coerce_key :cenEmissions, CENEmissionScenarios
      end
    end
  end
end