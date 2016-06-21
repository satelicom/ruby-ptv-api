module RubyPtvApi
  module Model 
    module XTour
      class DriverSettings < RubyPtvApi::Model::Base
        property 'regulationsId'
        property 'breakRuleActive'
        property 'dailyRestRuleActive'
        property 'weeklyRestRuleActive'
        property 'workingRuleActive'
        property 'remainingPeriods'
        property 'maximumTourPeriodRestriction'

        coerce_key :maximumTourPeriodRestriction, MaximumTourPeriodRestriction
      end
    end
  end
end