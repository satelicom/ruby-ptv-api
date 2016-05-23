module SatelicomPtv
  module Model 
    module XTour
      class TourEvent < SatelicomPtv::Model::Base
        property 'logisticPointId'
        property 'startTime'
        property 'period'
        property 'descriptions'
        property 'violations'
        property 'tourIndex'
      end
    end
  end
end