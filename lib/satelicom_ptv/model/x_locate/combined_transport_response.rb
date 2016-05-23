module SatelicomPtv
  module Model
    module XLocate
      class CombinedTransportResponse < SatelicomPtv::Model::Base
        property 'errorCode'
        property 'errorDescription'
        property 'resultList'

        coerce_key :resultList, Array[SatelicomPtv::Model::XLocate::ResultCombinedTransport] # Do not work if String 'resultList'
      end
    end
  end
end