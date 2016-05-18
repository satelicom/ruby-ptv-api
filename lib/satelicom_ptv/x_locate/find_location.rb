module SatelicomPtv
  module XLocate
    class FindLocation < SatelicomPtv::XLocate::Base
      attr_reader :location

      def initialize(location)
        @location = location
      end

      def ptv_function
        'findLocation'
      end

      def call(options: nil, sorting: nil, additional_fields: nil)
        extra_params(options, sorting, additional_fields)
        response = post(params)
        SatelicomPtv::Model::AddressResponse.new(response)
      end

      def params
        { 
          location: location,
          options: options,
          sorting: sorting,
          additionalFields: additional_fields
        }
      end
    end
  end
end