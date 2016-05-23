module SatelicomPtv
  module Model 
    module XTour
      class LoadingFunction < SatelicomPtv::Model::Base
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
