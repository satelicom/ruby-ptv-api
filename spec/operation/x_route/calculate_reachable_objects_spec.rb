require 'spec_helper'

describe SatelicomPtv::Operation::XRoute::CalcutateReachableObjects do
  let(:details) do 
    SatelicomPtv::Model::XRoute::ResultListOptions.new(
      "binaryPathDesc" => true,
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
  let(:plain_points) { [create(:venice_plain_point), create(:satelicom_plain_point)] }
  let(:waypoints){ XTourTest.create_waypoint_descs(plain_points) }
  let(:leanbit_waypoint_desc){ XTourTest.create_waypoint_desc(create(:leanbit_plain_point)) }
  let(:expansionDesc) do
    SatelicomPtv::Model::XRoute::ExpansionDescription.new({
      "expansionType" => "EXP_TIME",
      "horizons" => [
        3000
      ]
    })
  end

  it 'call' do
    VCR.use_cassette("calculate_reachable_objects") do
      route_function = SatelicomPtv::Operation::XRoute::CalcutateRoute.new(
        waypoints: waypoints, 
        options: [], 
        exceptionPaths: [], 
        details: details
      )
      route = route_function.call
      expect(route.info.distance).to be_between(66000, 68000)
      
      function = SatelicomPtv::Operation::XRoute::CalcutateReachableObjects.new(
        binaryPathDesc: route.binaryPathDesc, 
        locations: [leanbit_waypoint_desc],
        expansionDesc: expansionDesc
      )
      reach = function.call
      expect(reach.reachInfo.count).to eq(1)
      expect(reach.reachInfo.first.reachable).to eq(true)
    end
  end
end
