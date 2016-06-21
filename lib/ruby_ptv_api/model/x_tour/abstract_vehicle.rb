module RubyPtvApi
  module Model 
    module XTour
      class AbstractVehicle < RubyPtvApi::Model::Base
        property 'depotIdStart', required: true
        property 'depotIdEnd'  , required: true
        property 'operatingIntervals'
        
        coerce_key :operatingIntervals, Array[Interval]        
      end
    end
  end
end
        