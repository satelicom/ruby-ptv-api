module SatelicomPtv
  module Model 
    module XTour
      class AbstractVehicle < BaseVehicle 
        property 'depotIdStart'
        property 'depotIdEnd'
        property 'operatingIntervals'
        
        coerce_key :operatingIntervals, Array[Interval]        
      end
    end
  end
end
        