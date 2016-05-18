module SatelicomPtv
  module XLocate
    class FindAddressByText < SatelicomPtv::XLocate::Base
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
          address: address,
          country: country
          options: options,
          sorting: sorting,
          additionalFields: additional_fields
        }
      end
    end
  end
end