module SatelicomPtv
  module Operation
    module XLocate
      class FindAddresses < SatelicomPtv::Operation::XLocate::Base
        attr_reader :addresses

        def initialize(addresses)
          raise 'Use FindAddress for single address' unless addresses.is_a? Array
          @addresses = addresses
        end

        def ptv_function
          'findAddresses'
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
end