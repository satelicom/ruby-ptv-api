module SatelicomPtv
  module Model 
    module XTour
      class AbstractTransportOrder < SatelicomPtv::Model::Base
        property 'id', required: true
        property 'priority'
        property 'productId'
      end
    end
  end
end