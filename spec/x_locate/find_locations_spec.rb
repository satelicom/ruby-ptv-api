require 'spec_helper'

describe SatelicomPtv::XLocate::FindLocations do
  let(:location){ create(:location) }
  let(:location2){ create(:location,  coordinate: create(:point, point: create(:plain_point, x: 681426.2394831667, y: 6372253.889732955)) ) }
  
  it 'call' do
    VCR.use_cassette("find_locations") do
      function = SatelicomPtv::XLocate::FindLocations.new([location, location2])
      address_responses = function.call
      expect(address_responses.first.class).to eq(SatelicomPtv::Model::AddressResponse)
      expect(address_responses.last.class).to eq(SatelicomPtv::Model::AddressResponse)
      result_list = address_responses.first.resultList
      expect(result_list.first.city).to eq('Padova')
      expect(result_list.last.city).to eq('Padova')
      result_list2 = address_responses.last.resultList
      expect(result_list2.first.city).to eq('Luxemburg')
    end
  end
end