module SatelicomPtv
  module Model 
    module XLocate
      class SuggestionResponse < SatelicomPtv::Model::Base
        property 'suggestionList'
        property 'errorcode'
        property 'errorDescription'

        coerce_key :suggestionList, Array[Suggestion]
      end
    end
  end
end