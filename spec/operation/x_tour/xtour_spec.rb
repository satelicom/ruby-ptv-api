require 'spec_helper'

describe RubyPtvApi::XTour do
  it 'plan_sequence wrapper' do 
    from = Time.utc(1970, 1, 1, 1)
    to =   Time.utc(1970, 1, 1, 10)

    points = [
      OpenStruct.new({
        uuid: "1",
        name: "Satelicom",
        longitude: 11.575433,
        latitude: 45.549526, 
        interval: nil
      }),
      OpenStruct.new({
        uuid: "2",
        name: "Modena",
        longitude: 10.902138,
        latitude: 44.636963, 
        interval: nil
      }),
      OpenStruct.new({
        uuid: "3",
        name: "Arena di Verona",
        longitude: 10.994400,
        latitude: 45.439169, 
        interval: nil
      }),
      OpenStruct.new({
        uuid: "4",
        name: "Bologna",
        longitude: 11.343356,
        latitude: 44.491015, 
        interval: nil
      }),
      OpenStruct.new({
        uuid: "5",
        name: "Ferrara",
        longitude: 11.619491,
        latitude: 44.837330, 
        interval: nil
      }),
    ]


    garage = OpenStruct.new({
      uuid: "0", 
      name: "Leanbit",
      longitude: 11.918910,
      latitude: 45.412983, 
      interval: (from..to)
    })

    VCR.use_cassette("xtour_wrapper") do
      response = RubyPtvApi::XTour.plan_sequence(points, garage)
      expect(response[:sequence].map{|p| p[:name]}).to eq(["Satelicom", "Arena di Verona", "Modena", "Bologna", "Ferrara"])
      expect(response[:unmanaged]).to eq([])

      fake_garage = OpenStruct.new({
        uuid: "100", 
        longitude: 45.918910, # not real position
        latitude: 45.412983, 
        interval: (from..to)
      })
      response2 = RubyPtvApi::XTour.plan_sequence(points, fake_garage)
      expect(response2[:unmanaged].size).to eq(points.size)
    end
  end
end

    # points = [
    #   {
    #     uuid: "1",
    #     name: "Bernardi",
    #     longitude:  11.864371,
    #     latitude: 45.417392,
    #     interval: nil
    #   }),
    #   {
    #     uuid: "2",
    #     name: "Fiera",
    #     longitude: 11.888628,
    #     latitude: 45.413957, 
    #     interval: nil
    #   }),
    #   {
    #     uuid: "3",
    #     name: "Hotel Biri",
    #     longitude: 11.902292,
    #     latitude: 45.409851, 
    #     interval: nil
    #   }),
    #   {
    #     uuid: "4",
    #     name: "Prato della valle",
    #     longitude: 11.876883,
    #     latitude: 45.399260, 
    #     interval: nil
    #   }
    # ]
