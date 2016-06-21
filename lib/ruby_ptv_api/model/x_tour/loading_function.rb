module RubyPtvApi
  module Model 
    module XTour
      class LoadingFunction < RubyPtvApi::Model::Base
        property 'id'
        property 'quantityDependentPeriods'
        property 'fixedPeriod'
        property 'fixedSitePeriod'
        property 'exponent'
        property 'maxPeriod'

        coerce_key :quantityDependentPeriods, QuantityDependentPeriods
      end
    end
  end
end
