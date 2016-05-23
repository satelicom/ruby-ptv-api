module SatelicomPtv
  module Model 
    module XLocate
      class Suggestion < SatelicomPtv::Model::Base
        property 'text'
        property 'additionalFields'
        
        coerce_key :suggestionList, Array[AdditionalField]
      end
    end
  end
end