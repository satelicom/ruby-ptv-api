module SatelicomPtv
  module Model
    module XRoute
      class RouteListSegment < SatelicomPtv::Model::Base
        property 'firstPolyIdx'
        property 'polyC'
        property 'firstNodeIdx'
        property 'nodeC'
        property 'streetNoIdx'
        property 'streetNameIdx'
        property 'dirInfoIdx'
        property 'accTime'
        property 'accDist'
        property 'nC', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::NETWORK_CLASS, value)
        end
        property 'vNorm'
        property 'normSpeed'
        property 'vCalc'
        property 'iuCode'
        property 'segmentAttr'
        property 'countryCode'
        property 'emissions'
        property 'cenEmissions'
        property 'speedLimits'
        property 'violations'
        property 'featureDescriptions'
        property 'utcOffset'

        coerce_key :normSpeed, NormSpeed
        coerce_key :segmentAttr, SegmentAttributes
        coerce_key :emissions, Emissions
        coerce_key :cenEmissions, CENEmissionScenarios
        coerce_key :speedLimits, SpeedLimits
        coerce_key :featureDescriptions, Array[FeatureDescription]
      end
    end
  end
end