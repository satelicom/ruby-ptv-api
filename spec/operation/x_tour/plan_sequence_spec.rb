require 'spec_helper'

describe SatelicomPtv::Operation::XTour::PlanSequence do
  let(:depot) { SatelicomPtv::Model::XTour::Depot.new('id' => 1, 'location' => create(:point)) }
  let(:vehicle) do 
    SatelicomPtv::Model::XTour::SequencingVehicle.new( 
      'dimaId' => 1, 
      'depotIdStart' => depot.id,
      'depotIdEnd' => depot.id
    ) 
  end
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:transport_orders){ XtourTest.create_sequencing_transport_depots(plain_points) }
  it 'call' do
    VCR.use_cassette("plan_sequence") do
      function = SatelicomPtv::Operation::XTour::PlanSequence.new(
        transport_orders: transport_orders, 
        depots: [depot], 
        vehicle: vehicle
      )
      tour = function.call.tour
      expect(tour.tourPoints.count).to eq(transport_orders.count + 2) #points + start depot and end depot
      # expect(result_list.first.postCode).to eq("35129")
    end
  end
end
