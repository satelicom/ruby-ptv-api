module RubyPtvApi
  module Model
    module XRoute
      class Route < RubyPtvApi::Model::Base
        property 'info'
        property 'dynamicInfo'
        property 'stations'
        property 'manoeuvres'
        property 'texts'
        property 'segments'
        property 'nodes'
        property 'polygon'
        property 'binaryPathDesc'
        property 'manoeuvreGroup'
        property 'boundingRectangles'
        property 'totalRectangle'
        property 'extSegments'
        property 'emissions'
        property 'vehicleRelatedEmissions'
        property 'cenEmissions'

        coerce_key :info, RouteInfo
        coerce_key :dynamicInfo, DynamicInfo
        coerce_key :stations, Array[WayPoint]
        coerce_key :manoeuvres, Array[RouteManoeuvre]
        coerce_key :segments, Array[RouteListSegment]
        coerce_key :nodes, Array[UniqueGeoID]
        coerce_key :polygon, LineString
        coerce_key :manoeuvreGroup, Array[ManoeuvreGroup]
        coerce_key :boundingRectangles, Array[BoundingRectangle]
        coerce_key :totalRectangle, BoundingRectangle
        coerce_key :emissions, Emissions
        coerce_key :vehicleRelatedEmissions, Emissions
        coerce_key :cenEmissions, CENEmissionScenarios
      end
    end
  end
end