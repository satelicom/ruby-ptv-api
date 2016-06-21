module RubyPtvApi
  module Model 
    module XLocate
      class Suggestion < RubyPtvApi::Model::Base
        property 'text'
        property 'additionalFields'
        
        coerce_key :suggestionList, Array[AdditionalField]
      end
    end
  end
end