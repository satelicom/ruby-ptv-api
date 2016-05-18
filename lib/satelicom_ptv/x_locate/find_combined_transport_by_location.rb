module SatelicomPtv
  module XLocate
    class FindCombinedTransportByLocation < SatelicomPtv::XLocate::Base
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
          SatelicomPtv::Model::CombinedTransportResponse
        end
    end
  end
end