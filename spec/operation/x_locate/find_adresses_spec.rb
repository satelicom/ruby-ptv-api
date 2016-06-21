require 'spec_helper'

describe RubyPtvApi::Operation::XLocate::FindAddresses do
  let(:address){ create(:address) }
  let(:address2){ create(:address, street: "via cengio") }
  
  it 'call' do
    VCR.use_cassette("find_addresses") do
      function = RubyPtvApi::Operation::XLocate::FindAddresses.new([address, address2])
      address_responses = function.call
      expect(address_responses.first.class).to eq(RubyPtvApi::Model::XLocate::AddressResponse)
      expect(address_responses.last.class).to eq(RubyPtvApi::Model::XLocate::AddressResponse)
      result_list = address_responses.first.resultList
      expect(result_list.first.postCode[0..1]).to eq('35')
      expect(result_list.last.postCode[0..1]).to eq('35')
    end
  end
end