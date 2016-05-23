module SatelicomPtv
  module Model 
    module XTour
      class SequencingParams < PlanningParams
        property 'fixedStartTransportPoints'
        property 'fixedEndTransportPoints'
        property 'availableMachineTime'
        property 'maximumNumberOfUnscheduledOrdersToBeAnalyzed'
      end
    end
  end
end