module RubyPtvApi
  module Model 
    module XTour
      class SequencingTourPoint < RubyPtvApi::Model::Base
        property 'id'
        property 'description'
        property 'type', transform_with: ->(value) do 
          RubyPtvApi::Constant.validate(RubyPtvApi::Constant::TOUR_POINT_TYPE, value)
        end
        property 'result'

        coerce_key :result, TourPointResult
      end
    end
  end
end