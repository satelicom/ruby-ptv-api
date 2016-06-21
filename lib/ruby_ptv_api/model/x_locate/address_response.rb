module RubyPtvApi
  module Model
    module XLocate
      class AddressResponse < RubyPtvApi::Model::Base
        property 'errorCode'
        property 'errorDescription'
        property 'resultList'

        coerce_key :resultList, Array[ResultAddress] # Do not work if String 'resultList'
      end
    end
  end
end