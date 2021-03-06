module RubyPtvApi
  module Operation
    module XLocate
      class FindSuggestion < RubyPtvApi::Operation::XLocate::Base
        attr_reader :text, :country, :state

        def initialize(text:, country: "", state: "")
          @text    = text
          @country = country
          @state   = state
        end

        def ptv_function
          'findSuggestion'
        end

        def params
          { 
            text: text,
            country: country,
            state: state,
            options: options,
            sorting: sorting,
            additionalFields: additional_fields
          }
        end

      protected

          def response_class
            RubyPtvApi::Model::XLocate::SuggestionResponse
          end
      end
    end
  end
end