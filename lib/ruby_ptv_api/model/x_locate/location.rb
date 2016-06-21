module RubyPtvApi
  module Model
    module XLocate
      class Location < RubyPtvApi::Model::Base
        property 'coordinate'
        
        coerce_key :coordinate, RubyPtvApi::Model::Point
      end
    end
  end
end