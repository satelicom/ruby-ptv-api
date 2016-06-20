module SatelicomPtv
  module XTour
    class << self
      def plan_sequence(points, garage)
        required_keys = [:uuid, :latitude, :longitude]
        raise "garage has to include the  keys #{required_keys}" unless (required_keys - garage.methods).empty?

        dimaId = 1
        id_manager = SatelicomPtv::IdManager.new
        depot = SatelicomPtv::Model::XTour::Depot.new(
          'id' => id_manager.add(garage.uuid), 
          'location' => SatelicomPtv::Model::Point.new(
            'point' => SatelicomPtv::Model::PlainPoint.new(
              'x' => SatelicomPtv.cast_coordinate(garage.longitude),
              'y' => SatelicomPtv.cast_coordinate(garage.latitude)
            )
          )
        ) 
        depot.openingIntervals = [
          SatelicomPtv::Model::XTour::Interval.new(
            'from' => garage.interval.first.to_i,
            'till' => garage.interval.last.to_i
          )
        ] if garage.interval
        
        sequencing_transport_depots = []
        vehicle = SatelicomPtv::Model::XTour::SequencingVehicle.new( 
          'dimaId' => dimaId, 
          'depotIdStart' => depot.id,
          'depotIdEnd' => depot.id, 
          'isPreloaded' => true, 
          'ignoreTransportPointServicePeriod' => false,
          'coDriverStatus' => :NEVER,
          'toursMustFitIntoSingleOperatingInterval' => true
        ) 
        vehicle.operatingIntervals = [
          SatelicomPtv::Model::XTour::Interval.new(
            'from' => garage.interval.first.to_i,
            'till' => garage.interval.last.to_i
          )
        ] if garage.interval

        points.each do |point|
          raise "each point has to include the keys #{required_keys}" unless (required_keys - point.methods).empty?
          sequencing_transport_depots << create_sequencing_transport_depot(
            uuid: point.uuid,
            latitude:  SatelicomPtv.cast_coordinate(point.latitude),
            longitude: SatelicomPtv.cast_coordinate(point.longitude), 
            interval:  point.interval,
            id_manager: id_manager
          )
        end
        function = SatelicomPtv::Operation::XTour::PlanSequence.new(
          transport_orders: sequencing_transport_depots, 
          depots: [depot], 
          vehicle: vehicle
        )
        response = function.call
        sequence = response.tour.tourPoints ? response.tour.tourPoints.map{|tp| id_manager.uuid(tp.id.to_i)} : []
        unmanaged_list = response.result.unscheduledOrderIds ? response.result.unscheduledOrderIds.map{|id| id_manager.uuid(id)} : []
        hash = Hash[points.map{|e| [e.uuid, e]}]
        {
          sequence: sequence.map{|e| hash[e]}.compact,
          unmanaged: unmanaged_list.map{|e| hash[e]},
          raw_response: response
        }
      end

      def create_sequencing_transport_depot(uuid:, id_manager:, latitude:, longitude:, interval:)
        transport_point = SatelicomPtv::Model::XTour::TransportPoint.new(
          'id' => id_manager.add(uuid),
          'location' => SatelicomPtv::Model::Point.new(
            'point' => SatelicomPtv::Model::PlainPoint.new(
              'x' => longitude,
              'y' => latitude
            )
          )
        )
        transport_point.openingIntervals = [
          SatelicomPtv::Model::XTour::Interval.new(
            'from' => interval.first.to_i,
            'till' => interval.last.to_i
          )
        ] if interval
        
        std = SatelicomPtv::Model::XTour::SequencingTransportDepot.new(
          'id' => id_manager.add(uuid),          
          'transportPoint' => transport_point
        )
        std
      end
    end
  end
end