require 'spec_helper'

describe RubyPtvApi::Operation::XLocate::FindLocations do
  let(:location){  create(:location) }
  let(:location2){ create(:location,  coordinate: create(:point, point: create(:plain_point, x: 1341412, y: 5250303 ))) }
  
  it 'call' do
    VCR.use_cassette("find_locations") do
      function = RubyPtvApi::Operation::XLocate::FindLocations.new([location, location2])
      address_responses = function.call
      expect(address_responses.first.class).to eq(RubyPtvApi::Model::XLocate::AddressResponse)
      expect(address_responses.last.class).to eq(RubyPtvApi::Model::XLocate::AddressResponse)
      result_list = address_responses.first.resultList
      expect(result_list.first.city).to eq('Padova')
      expect(result_list.last.city).to eq('Padova')
      result_list2 = address_responses.last.resultList
      expect(result_list2.first.city).to eq('Berlin')
    end
  end
end