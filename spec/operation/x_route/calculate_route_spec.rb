require 'spec_helper'

describe RubyPtvApi::Operation::XRoute::CalcutateRoute do
  let(:details) do 
    RubyPtvApi::Model::XRoute::ResultListOptions.new(
      "binaryPathDesc" => false,
      "boundingRectanglesC" =>  5,
      "boundingRectanglesOffset" =>  300,
      "brunnelManoeuvres" =>  false,
      "detailLevel" =>  :STANDARD,
      "dynamicInfo" =>  false,
      "manoeuvreAttributes" =>  false,
      "manoeuvreGroupRatio" =>  1,
      "manoeuvreGroups" => true,
      "manoeuvres" => true,
      "nodes" => false,
      "polygon" => true,
      "segmentAttributes" => false,
      "segments" => true,
      "texts" => true,
      "totalRectangle" =>  true,
      "urbanManoeuvres" =>  false
    )
  end
  let(:plain_points) { [create(:leanbit_plain_point), create(:satelicom_plain_point)] }
  let(:waypoints){ XTourTest.create_waypoint_descs(plain_points) }
  it 'call' do
    VCR.use_cassette("calculate_route") do
      function = RubyPtvApi::Operation::XRoute::CalcutateRoute.new(
        waypoints: waypoints, 
        options: [], 
        exceptionPaths: [], 
        details: details
      )
      route = function.call
      expect(route.info.distance).to be_between(35000, 37000) # more or less 36km between companies
    end
  end
end
