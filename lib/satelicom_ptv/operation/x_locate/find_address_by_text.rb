module SatelicomPtv
  module Operation
    module XLocate
      class FindAddressByText < SatelicomPtv::Operation::XLocate::Base
        attr_reader :text, :country

        def initialize(text, country)
          @text    = text
          @country = country
        end

        def ptv_function
          'findAddressByText'
        end

        def params
          { 
            address: text,
            country: country,
            options: options,
            sorting: sorting,
            additionalFields: additional_fields
          }
        end
      end
    end
  end
end