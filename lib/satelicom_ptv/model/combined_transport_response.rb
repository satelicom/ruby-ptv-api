module SatelicomPtv
  module Model
    class CombinedTransportResponse < Base
      property 'errorCode'
      property 'errorDescription'
      property 'resultList'

      coerce_key :resultList, Array[SatelicomPtv::Model::ResultCombinedTransport] # Do not work if String 'resultList'
    end
  end
end