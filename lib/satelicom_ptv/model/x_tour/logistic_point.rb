module SatelicomPtv
  module Model 
    module XTour
      class LogisticPoint < SatelicomPtv::Model::Base
        property 'id', required: true
        property 'description'
        property 'location'
        property 'openingIntervals'
        property 'siteId'
        property 'extraSitePeriod'
        property 'uploadingFunctionId'
        property 'unloadingFunctionId'

        coerce_key :location, SatelicomPtv::Model::Point
        coerce_key :openingIntervals, Array[Interval]
      end
    end
  end
end