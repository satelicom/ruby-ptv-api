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

      def call
        response = post(params)
        addresses = []
        response['resultList'].each do |result_address|
          addresses << SatelicomPtv::Model::ResultAddress.new(result_address)
        end
        addresses
      end

      def params
        { 
          addr: address,
          options: [],
          sorting: [],
          additionalFields: []
        }
      end
    end
  end
end