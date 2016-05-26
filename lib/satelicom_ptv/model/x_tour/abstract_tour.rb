module SatelicomPtv
  module Model 
    module XTour
      class AbstractTour < SatelicomPtv::Model::Base
        property 'startTimeFixed'
        property 'startTimeEarliest'
      end
    end
  end
end