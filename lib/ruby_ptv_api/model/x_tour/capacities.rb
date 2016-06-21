module RubyPtvApi
  module Model 
    module XTour
      class Capacities < RubyPtvApi::Model::Base
        property 'capacities'

        coerce_key :capacities, Array[Quantities]
      end
    end
  end
end