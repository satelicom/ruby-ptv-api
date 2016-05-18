require 'spec_helper'

describe SatelicomPtv::XLocate::FindAddresses do
  let(:address){ create(:address) }
  let(:address2){ create(:address, street: "via cengio") }
  
  it 'call' do
    VCR.use_cassette("find_addresses") do
      found_addresses = SatelicomPtv::XLocate::FindAddresses.new([address, address2]).call
      expect(found_addresses.first.class).to eq(Array)
      expect(found_addresses.last.class).to eq(Array)
      expect(found_addresses.first.first.postCode).to eq('35129')
      expect(found_addresses.last.first.postCode).to eq('35138')
    end
  end
end