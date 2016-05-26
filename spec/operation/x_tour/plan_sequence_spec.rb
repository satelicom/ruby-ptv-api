require 'spec_helper'

describe SatelicomPtv::Operation::XTour::PlanSequence do
  let(:depot) { SatelicomPtv::Model::XTour::Depot.new('id' => 17, 'location' => create(:point)) }
  let(:vehicle) { create(:vehicle) }
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:transport_orders){ XtourTest.create_sequencing_transport_depots(plain_points) }
  it 'call' do
    VCR.use_cassette("plan_sequence") do
      function = SatelicomPtv::Operation::XTour::PlanSequence.new(
        transport_orders: transport_orders, 
        depots: [depot], 
        vehicle: vehicle
      )
      result_list = function.call
      # expect(result_list.count).to eq(1)
      # expect(result_list.first.postCode).to eq("35129")
    end
  end
end
