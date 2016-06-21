module RubyPtvApi
  module Model
    module XLocate
      class CombinedTransportResponse < RubyPtvApi::Model::Base
        property 'errorCode'
        property 'errorDescription'
        property 'resultList'

        coerce_key :resultList, Array[RubyPtvApi::Model::XLocate::ResultCombinedTransport] # Do not work if String 'resultList'
      end
    end
  end
end