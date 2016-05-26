module SatelicomPtv
  module Model 
    module XTour
      class Tour < SatelicomPtv::Model::Base
        property 'id'
        property 'description'
        property 'trailerId'
        property 'trainId'
        property 'tourPointFixation', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::TOUR_POINT_FIXATION, value)
        end
        property 'vehicleFixed'
        property 'trailerFixed'
        property 'areaNumber'
        property 'ignoreIntermediatePeriodOfPreviousTour'
        property 'restrictions'
        property 'tourPoints'
        property 'result'
        
        coerce_key :restrictions, TourRestrictions
        coerce_key :tourPoints, Array[TourPoint]
        coerce_key :result, TourResult
      end
    end
  end
end