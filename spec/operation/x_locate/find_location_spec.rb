require 'spec_helper'

describe SatelicomPtv::Operation::XLocate::FindLocation do
  let(:location){ create(:location) }
  
  it 'call' do
    VCR.use_cassette("find_location") do
      function = SatelicomPtv::Operation::XLocate::FindLocation.new(location)
      address_responses = function.call
      result_list = address_responses.resultList
      expect(result_list.first.city).to eq('Padova')
    end
  end
end