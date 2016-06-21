module RubyPtvApi
  module Model 
    module XTour
      class AbstractTransportOrder < RubyPtvApi::Model::Base
        property 'id', required: true
        property 'priority'
        property 'productId'
      end
    end
  end
end