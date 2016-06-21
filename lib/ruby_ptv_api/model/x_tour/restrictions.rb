module RubyPtvApi
  module Model 
    module XTour
      class Restrictions < RubyPtvApi::Model::Base
        property 'maxTourCount'
        property 'maxTransportPointCountPerTour'
        property 'tourRestrictions'
        
        coerce_key :restrictions, TourRestrictions
      end
    end
  end
end
