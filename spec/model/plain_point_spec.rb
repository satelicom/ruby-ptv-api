require 'spec_helper'

describe RubyPtvApi::Model::PlainPoint do
  it 'conversion' do 
    plain_point = RubyPtvApi::Model::PlainPoint.new(
      'x' => RubyPtvApi.convert_coordinate(9.1521919),
      'y' => RubyPtvApi.convert_coordinate(45.41299)
    )
    expect(plain_point.x.to_i).to eq(915219)
    expect(plain_point.y.to_i).to eq(4541299)
  end
end