module RubyPtvApi
  module Model 
    module XTour
      class Chain < RubyPtvApi::Model::Base
        property 'vehicleId'
        property 'tours'
        property 'result'
        
        coerce_key :tours, Array[Tour]
        coerce_key :result, ChainResult
      end
    end
  end
end