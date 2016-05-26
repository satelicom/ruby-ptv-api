module SatelicomPtv
  module Model 
    module XTour
      class DistanceMatrixByRoad < DistanceMatrixCalculation
        property 'deleteBeforeUsage'
        property 'deleteAfterUsage'
        property 'profileName'
        property 'referenceTime'
      end
    end
  end
end