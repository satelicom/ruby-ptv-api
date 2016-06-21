module RubyPtvApi
  module Model 
    module XTour
      class TransportPoint < LogisticPoint
        property 'tourSection', default: 0
        property 'servicePeriod', default: 0
        property 'useServicePeriodForRecreation', default: false
        property 'allowServiceSplit', default: false
        property 'openingIntervalConstraint', default: :START_OF_SERVICE, transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::OPENING_INTERVAL_CONTRAINT, value)
        end
        property 'areaNumberPosition'
        property 'coDriverRequired', default: false
      end
    end
  end
end