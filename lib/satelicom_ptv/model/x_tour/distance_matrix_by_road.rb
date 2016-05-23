module SatelicomPtv
  module Model 
    module XLocate
      class DistanceMatrixByRoad < DistanceMatrixCalculation
        property 'deleteBeforeUsage'
        property 'deleteAfterUsage'
        property 'profileName'
        property 'referenceTime'
      end
    end
  end
end