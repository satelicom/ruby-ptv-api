module SatelicomPtv
  module Operation
    module XLocate
      class FindLocation < SatelicomPtv::Operation::XLocate::Base
        attr_reader :location

        def initialize(location)
          @location = location
        end

        def ptv_function
          'findLocation'
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
end