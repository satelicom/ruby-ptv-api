require 'spec_helper'

describe RubyPtvApi::Operation::XRoute::CalcutateRouteInfo do
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:waypoints){ XTourTest.create_waypoint_descs(plain_points) }
  it 'call' do
    VCR.use_cassette("calculate_route_info") do
      function = RubyPtvApi::Operation::XRoute::CalcutateRouteInfo.new(
        waypoints: waypoints,
      )
      route_info = function.call
      expect(route_info.distance).to be_between(35000, 37000) # more or less 36km between companies
    end
  end
end
