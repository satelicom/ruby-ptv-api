module RubyPtvApi
  module Model
    module XLocate
      # id  String  The unique key to identify the combined transport.
      # name  String  The name of the combined transport.
      # duration  int The duration in seconds of the combined transport.
      # distance  double  The distance to the input location in meters.
      # type  int The type of the combined transport. Legal values are:
      #   1 - ferry: The combined transport is a ferry boat connection.
      #   2 - piggyback: The combined transport is a piggyback train connection.
      # start CombinedTransportLocation The start of the combined transport.
      # destination CombinedTransportLocation The destination of the combined transport.
      # combinedTransportFields AdditionalField[] Additional combined transport result fields. The fields are returned in the same order as they have been requested.
      class ResultCombinedTransport < RubyPtvApi::Model::Base
        property 'id'
        property 'name'
        property 'duration'
        property 'distance'
        property 'type'
        property 'start'
        property 'destination'
        property 'combinedTransportFields'

        coerce_key :start, CombinedTransportLocation
        coerce_key :destination, CombinedTransportLocation
        coerce_key :combinedTransportFields, Array[AdditionalField]
      end
    end
  end
end