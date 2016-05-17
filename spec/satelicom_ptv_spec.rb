require 'spec_helper'

describe SatelicomPtv do
  
  it 'does something useful' do
    VCR.use_cassette("leanbit") do
      address = SatelicomPtv::Model::Address.new
      address.country =  'I'
      address.postCode =  ''
      address.city =  'Padova'
      address.city2 =  ''
      address.street =  'Via prima strada 11'
      address.houseNumber =  ''
      addresses = SatelicomPtv::XLocate::FindAddress.new(address).call
      p addresses.count
    end
  end


  # it 'model' do 
  #   address = SatelicomPtv::Model::Address.new(country: 'I')

  # end
end
