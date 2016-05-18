module SatelicomPtv
  module XLocate
    class FindLocations < SatelicomPtv::XLocate::Base
      attr_reader :locations

      def initialize(locations)
        raise 'Use FindLocation for single address' unless locations.is_a? Array
        @locations = locations
      end

      def ptv_function
        'findLocations'
      end

      def params
        { 
          location: locations,
          options: options,
          sorting: sorting,
          additionalFields: additional_fields
        }
      end
    end
  end
end