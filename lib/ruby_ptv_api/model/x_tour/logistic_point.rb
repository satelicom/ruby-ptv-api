module RubyPtvApi
  module Model 
    module XTour
      class LogisticPoint < RubyPtvApi::Model::Base
        property 'id', required: true
        property 'description'
        property 'location', required: true
        property 'openingIntervals'
        property 'siteId'
        property 'extraSitePeriod'
        property 'uploadingFunctionId'
        property 'unloadingFunctionId'

        coerce_key :location, RubyPtvApi::Model::Point
        coerce_key :openingIntervals, Array[Interval]
      end
    end
  end
end