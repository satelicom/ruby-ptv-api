module XTourTest
  class << self
    def create_sequencing_transport_depot(plain_point, id = 1)
      SatelicomPtv::Model::XTour::SequencingTransportDepot.new(
        'id' => id,          
        'transportPoint' => SatelicomPtv::Model::XTour::TransportPoint.new(
          'id' => id,
          'location' => FactoryGirl.create(:point, point: plain_point)
        )
      )
    end

    def create_sequencing_transport_depots(plain_points)
      orders = []
      id = 0
      plain_points.each do |plain_point|
        id += 1
        orders << create_sequencing_transport_depot(plain_point, id)
      end
      orders
    end

    def create_transport_depot(plain_point, id = 1)
      SatelicomPtv::Model::XTour::TransportDepot.new(
        'id' => id,          
        'transportPoint' => SatelicomPtv::Model::XTour::TransportPoint.new(
          'id' => id,
          'location' => FactoryGirl.create(:point, point: plain_point)
        )
      )
    end

    def create_transport_depots(plain_points)
      orders = []
      id = 0
      plain_points.each do |plain_point|
        id += 1
        orders << create_transport_depot(plain_point, id)
      end
      orders
    end
  end
end