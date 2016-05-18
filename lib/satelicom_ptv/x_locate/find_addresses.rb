module SatelicomPtv
  module XLocate
    class FindAddresses < SatelicomPtv::XLocate::Base
      attr_reader :addresses

      def initialize(addresses)
        raise 'Use FindAddress for single address' unless addresses.is_a? Array
        @addresses = addresses
      end

      def ptv_function
        'findAddresses'
      end

      def call(options: nil, sorting: nil, additional_fields: nil)
        extra_params(options, sorting, additional_fields)
        responses = post(params)
        lists = []
        responses.each do |response|
          lists << SatelicomPtv::Model::AddressResponse.new(response)
        end
        lists
      end

      def params
        { 
          addrs: addresses,
          options: options,
          sorting: sorting,
          additionalFields: additional_fields
        }
      end
    end
  end
end