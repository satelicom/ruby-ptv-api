module SatelicomPtv
  module Model
    module XRoute
      class SegmentAttributes < SatelicomPtv::Model::Base
        property 'brunnelCode', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::BRUNNEL_CODE, value)
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