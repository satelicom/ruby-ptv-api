require 'spec_helper'

describe RubyPtvApi::Operation::XLocate::FindAddressByText do
  it 'call' do
    VCR.use_cassette("find_address_by_text") do
      function = RubyPtvApi::Operation::XLocate::FindAddressByText.new('via prima strada, Padova', 'I')
      result_list = function.call.resultList
      expect(result_list.count).to eq(1)
      expect(result_list.first.postCode).to eq("35129")
    end
  end
end
