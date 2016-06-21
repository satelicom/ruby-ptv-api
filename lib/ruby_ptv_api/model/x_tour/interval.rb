module RubyPtvApi
  module Model 
    module XTour
      # A time window specified by start time and end time. The attributes must be specified in [sec] from a consistent reference point in time on (for example 0:00 next day or 0:00 1 January 1970).
      # Attribute Name  Type  Description
      # from            int   Start of the interval ([sec] from a reference point in time on, 0 <= from).
      # till            int   End of the interval ([sec] from a reference point in time on, 0 < till and from <= till).
      class Interval < RubyPtvApi::Model::Base
        property 'from'
        property 'till'
        
      end
    end
  end
end