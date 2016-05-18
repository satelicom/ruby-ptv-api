module SatelicomPtv
  module XLocate
    class FindAddress < SatelicomPtv::XLocate::Base
      attr_reader :address

      def initialize(address)
        @address = address
      end

      def ptv_function
        'findAddress'
      end

      def call(options: nil, sorting: nil, additional_fields: nil)
        extra_params(options, sorting, additional_fields)
        response = post(params)
        SatelicomPtv::Model::AddressResponse.new(response)
      end

      def params
        { 
          addr: address,
          options: options,
          sorting: sorting,
          additionalFields: additional_fields
        }
      end
    end
  end
end