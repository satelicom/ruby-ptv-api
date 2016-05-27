module SatelicomPtv
  module Model 
    module XTour
      class StandardParams < PlanningParams
        property 'startSequencingStep'
        property 'constructionStep'
        property 'middleSequencingStep'
        property 'tourReductionStep'
        property 'improvementStep'
        property 'endSequencingStep'
        property 'availableMachineTime'
        property 'maximumNumberOfUnscheduledOrdersToBeAnalyzed'
        property 'goalImportance'
        property 'basicConstructionMethod'
        property 'improvementMethod'
        property 'sequencingMethod'

        coerce_key :goalImportance, GoalImportance
      end
    end
  end
end
