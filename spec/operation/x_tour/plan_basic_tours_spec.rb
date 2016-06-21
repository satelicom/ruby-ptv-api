require 'spec_helper'

describe RubyPtvApi::Operation::XTour::PlanBasicTours do
  let(:depot) { RubyPtvApi::Model::XTour::Depot.new('id' => 1, 'location' => create(:point)) }
  let(:vehicle) do 
    RubyPtvApi::Model::XTour::Vehicle.new(
      'id' => 2,
      'dimaId' => 1, 
      'depotIdStart' => depot.id,
      'depotIdEnd' => depot.id
    ) 
  end

  let(:fleet){ RubyPtvApi::Model::XTour::Fleet.new('vehicles' => [vehicle])}
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:transport_orders){ XTourTest.create_transport_depots(plain_points) }
  it 'call', focus: true do
    VCR.use_cassette("plan_basic_tours") do
      function = RubyPtvApi::Operation::XTour::PlanBasicTours.new(
        transport_orders: transport_orders, 
        depots: [depot], 
        fleet: fleet
      )
      chains = function.call.chains
      expect(chains.count).to eq(1)
      expect(chains.first.tours.count).to eq(1)
      expect(chains.first.tours.first.tourPoints.count).to eq(transport_orders.count + 2) #points + start depot and end depot
    end
  end
end
