require 'spec_helper'

describe RubyPtvApi::Model::XLocate::SortOption do
  it 'valid parameter' do 
    sort_option = RubyPtvApi::Model::XLocate::SortOption.new('field' => :COUNTRY, 'order' => :DESCENDING)
    expect(sort_option.class).to eq(RubyPtvApi::Model::XLocate::SortOption)
  end

  it 'raise if invalid parameter' do 
    expect { RubyPtvApi::Model::XLocate::SortOption.new('field' => :PIPPO, 'order' => :DESCENDING) }.to raise_error(RubyPtvApi::WrongParameterFormat)
    expect { RubyPtvApi::Model::XLocate::SortOption.new('field' => :COUNTRY, 'order' => :PIPPO) }.to raise_error(RubyPtvApi::WrongParameterFormat)
  end
end