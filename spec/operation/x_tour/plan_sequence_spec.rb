require 'spec_helper'

describe RubyPtvApi::Operation::XTour::PlanSequence do
  let(:depot) { RubyPtvApi::Model::XTour::Depot.new('id' => 1, 'location' => create(:point)) }
  let(:vehicle) do 
    RubyPtvApi::Model::XTour::SequencingVehicle.new(
      'dimaId' => 1, 
      'depotIdStart' => depot.id,
      'depotIdEnd' => depot.id
    ) 
  end
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:transport_orders){ XTourTest.create_sequencing_transport_depots(plain_points) }
  it 'call' do
    VCR.use_cassette("plan_sequence") do
      function = RubyPtvApi::Operation::XTour::PlanSequence.new(
        transport_orders: transport_orders, 
        depots: [depot], 
        vehicle: vehicle
      )
      tour = function.call.tour
      expect(tour.tourPoints.count).to eq(transport_orders.count + 2) #points + start depot and end depot
    end
  end
end
