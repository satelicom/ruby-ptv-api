module SatelicomPtv
  module Model 
    module XTour
      class Plan < SatelicomPtv::Model::Base
        property 'chains'
        property 'result'
        
        coerce_key :chains, Array[Chain]
        coerce_key :result, PlanResult
      end
    end
  end
end
