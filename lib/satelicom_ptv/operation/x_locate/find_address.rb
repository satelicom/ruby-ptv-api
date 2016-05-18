module SatelicomPtv
  module Operation
    module XLocate
      class FindAddress < SatelicomPtv::Operation::XLocate::Base
        attr_reader :address

        def initialize(address)
          @address = address
        end

        def ptv_function
          'findAddress'
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
end