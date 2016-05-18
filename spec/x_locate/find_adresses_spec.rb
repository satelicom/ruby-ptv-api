require 'spec_helper'

describe SatelicomPtv::XLocate::FindAddresses do
  let(:address){ create(:address) }
  let(:address2){ create(:address, street: "via cengio") }
  
  it 'call' do
    VCR.use_cassette("find_addresses") do
      function = SatelicomPtv::XLocate::FindAddresses.new([address, address2])
      address_responses = function.call
      expect(address_responses.first.class).to eq(SatelicomPtv::Model::AddressResponse)
      expect(address_responses.last.class).to eq(SatelicomPtv::Model::AddressResponse)
      result_list = address_responses.first.resultList
      expect(result_list.first.postCode[0..1]).to eq('35')
      expect(result_list.last.postCode[0..1]).to eq('35')
    end
  end
end