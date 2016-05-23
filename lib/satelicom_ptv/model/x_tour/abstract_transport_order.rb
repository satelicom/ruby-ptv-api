module SatelicomPtv
  module Model 
    module XLocate
      class AbstractTransportOrder < SatelicomPtv::Model::Base
        property 'id', required: true
        property 'priority'
        property 'productId'
      end
    end
  end
end