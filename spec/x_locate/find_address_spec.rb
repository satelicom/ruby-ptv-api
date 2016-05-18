require 'spec_helper'

describe SatelicomPtv::XLocate::FindAddress do
  let(:address){ create(:address) }
  
  it 'call' do
    VCR.use_cassette("find_address") do
      find_address = SatelicomPtv::XLocate::FindAddress.new(address)
      found_addresses = find_address.call
      expect(found_addresses.count).to eq(1)
      expect(found_addresses.first.postCode).to eq("35129")
    end
  end

  it 'additional_fields' do
    VCR.use_cassette("find_address_additional_fields") do
      find_address = SatelicomPtv::XLocate::FindAddress.new(address)
      found_addresses = find_address.call(additional_fields: [:POPULATION])
      expect(found_addresses.count).to eq(1)
      expect(found_addresses.first.additionalFields.count).to eq(1)
      expect(found_addresses.first.additionalFields.first['field']).to eq(:POPULATION.to_s)
    end
  end

  it 'call multiple response' do
    VCR.use_cassette("find_address_multiple") do
      found_addresses = SatelicomPtv::XLocate::FindAddress.new(create(:address, street: "strada")).call
      expect(found_addresses.count).to eq(25)
    end
  end
end