module RubyPtvApi
  module Model
    module XRoute
      class SegmentAttributes < RubyPtvApi::Model::Base
        property 'brunnelCode', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::BRUNNEL_CODE, value)
        end

        property 'isFerry'
        property 'isBlockedCar'
        property 'isBlockedTruck'
        property 'hasTollCar'
        property 'hasTollTruck'
        property 'hasVignetteCar'
        property 'hasVignetteTruck'
        property 'hasExtraToll'
        property 'hasNamedToll'
        property 'hasSeparator'
        property 'isPedestrianZone'
        property 'additionalRE'
        property 'additionalInfo'
        property 'lowEmissionZoneType'
        property 'isPiggyback'
      end
    end
  end
end