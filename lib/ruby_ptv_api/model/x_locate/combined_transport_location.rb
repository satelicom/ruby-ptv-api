module RubyPtvApi
  module Model 
    module XLocate
      class CombinedTransportLocation < RubyPtvApi::Model::Base
        property 'coordinate'
        property 'country'
        property 'name'
        
        coerce_key :coordinate, Point
      end
    end
  end
end