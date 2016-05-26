module SatelicomPtv
  module Model 
    module XTour
      class AbstractCosts < SatelicomPtv::Model::Base
        property 'costsPerKm'
        property 'fixedCosts'
      end
    end
  end
end