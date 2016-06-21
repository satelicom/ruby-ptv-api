module RubyPtvApi
  module Operation
    module XLocate
      class FindCombinedTransportByLocation < RubyPtvApi::Operation::XLocate::Base
        attr_reader :location

        def initialize(location)
          @location = location
        end

        def ptv_function
          'findCombinedTransportByLocation'
        end

        def params
          { 
            location: location,
            options: options,
            additionalFields: additional_fields
          }
        end

        protected

          def response_class
            RubyPtvApi::Model::XLocate::CombinedTransportResponse
          end
      end
    end
  end
end