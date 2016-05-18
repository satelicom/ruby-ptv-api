require 'spec_helper'

describe SatelicomPtv::XLocate::FindAddress do
  let(:address){ create(:address) }
  let(:generic_address) { create(:address, street: "strada") }
  
  it 'call' do
    VCR.use_cassette("find_address") do
      function = SatelicomPtv::XLocate::FindAddress.new(address)
      result_list = function.call.resultList
      expect(result_list.count).to eq(1)
      expect(result_list.first.postCode).to eq("35129")
    end
  end

  it 'sorting' do
    VCR.use_cassette("find_address_sorting") do
      function = SatelicomPtv::XLocate::FindAddress.new(generic_address)
      function.sorting = [SatelicomPtv::Model::SortOption.new('field' => :STREET, 'order' => :ASCENDING)]
      found_addresses = function.call
      result_list = found_addresses.resultList
      streets = result_list.map{|a| a.street}
      expect(streets).to eq(streets.sort)
    end
  end

  it 'additional_fields' do
    VCR.use_cassette("find_address_additional_fields") do
      function = SatelicomPtv::XLocate::FindAddress.new(address)
      found_addresses = function.call(additional_fields: [:POPULATION])
      result_list = found_addresses.resultList
      expect(result_list.count).to eq(1)
      expect(result_list.first.additionalFields.count).to eq(1)
      expect(result_list.first.additionalFields.first['field']).to eq(:POPULATION.to_s)
    end
  end

  it 'call multiple response' do
    VCR.use_cassette("find_address_multiple") do
      function = SatelicomPtv::XLocate::FindAddress.new(generic_address)
      result_list = function.call.resultList
      expect(result_list.count).to eq(25)
    end
  end
end