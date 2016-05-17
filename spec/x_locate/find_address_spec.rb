require 'spec_helper'

describe SatelicomPtv::XLocate::FindAddress do
  let(:address){ create(:address) }
  
  it 'find address' do
    VCR.use_cassette("find_address") do
      addresses = SatelicomPtv::XLocate::FindAddress.new(address).call
      expect(addresses.count).to eq(1)
    end
  end


  # it 'model' do 
  #   address = SatelicomPtv::Model::Address.new(country: 'I')

  # end
end