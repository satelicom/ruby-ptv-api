require 'spec_helper'

describe SatelicomPtv::Operation::XTour::PlanSequence do
  let(:depot) { SatelicomPtv::Model::XTour::Depot.new('id' => 17, 'location' => create(:point)) }
  let(:vehicle) { create(:vehicle) }
  it 'call' do
    VCR.use_cassette("plan_sequence") do
      p vehicle
      # function = SatelicomPtv::Oper ation::XTour::PlanSequence.new('via prima strada, Padova', 'I')
      # result_list = function.call.resultList
      # expect(result_list.count).to eq(1)
      # expect(result_list.first.postCode).to eq("35129")
    end
  end
end
