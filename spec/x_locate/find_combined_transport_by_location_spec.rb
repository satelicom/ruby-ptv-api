require 'spec_helper'

describe SatelicomPtv::XLocate::FindCombinedTransportByLocation do
  let(:location){ create(:location) }
  
  it 'call' do
    VCR.use_cassette("find_combined_transport_by_location") do
      function = SatelicomPtv::XLocate::FindCombinedTransportByLocation.new(location)
      address_responses = function.call
      result_list = address_responses.resultList
      expect(result_list.first.name).to eq('Venezia Terminal Fusina-Patrasso')
      expect(result_list.first.start.country).to eq('I')
    end
  end
end