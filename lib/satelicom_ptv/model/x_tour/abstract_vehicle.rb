module SatelicomPtv
  module Model 
    module XTour
      class AbstractVehicle < SatelicomPtv::Model::Base
        property 'depotIdStart', required: true
        property 'depotIdEnd'  , required: true
        property 'operatingIntervals'
        
        coerce_key :operatingIntervals, Array[Interval]        
      end
    end
  end
end
        