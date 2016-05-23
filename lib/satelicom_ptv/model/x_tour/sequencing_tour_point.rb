module SatelicomPtv
  module Model 
    module XTour
      class SequencingTourPoint < SatelicomPtv::Model::Base
        property 'id'
        property 'description'
        property 'type', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::TOUR_POINT_TYPE, value)
        end
        property 'result'

        coerce_key :result, TourPointResult
      end
    end
  end
end