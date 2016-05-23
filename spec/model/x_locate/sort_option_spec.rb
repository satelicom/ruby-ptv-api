require 'spec_helper'

describe SatelicomPtv::Model::XLocate::SortOption do
  it 'valid parameter' do 
    sort_option = SatelicomPtv::Model::XLocate::SortOption.new('field' => :COUNTRY, 'order' => :DESCENDING)
    expect(sort_option.class).to eq(SatelicomPtv::Model::XLocate::SortOption)
  end

  it 'raise if invalid parameter' do 
    expect { SatelicomPtv::Model::XLocate::SortOption.new('field' => :PIPPO, 'order' => :DESCENDING) }.to raise_error(SatelicomPtv::WrongParameterFormat)
    expect { SatelicomPtv::Model::XLocate::SortOption.new('field' => :COUNTRY, 'order' => :PIPPO) }.to raise_error(SatelicomPtv::WrongParameterFormat)
  end
end