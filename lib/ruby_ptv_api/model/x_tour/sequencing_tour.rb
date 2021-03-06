module RubyPtvApi
  module Model 
    module XTour
      class SequencingTour < AbstractTour
        property 'result'
        property 'tourPoints'

        coerce_key :result, SequencingTourResult
        coerce_key :tourPoints, Array[SequencingTourPoint]
      end
    end
  end
end