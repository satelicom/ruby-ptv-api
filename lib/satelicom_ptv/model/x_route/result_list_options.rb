module SatelicomPtv
  module Model
    module XRoute
      class ResultListOptions < SatelicomPtv::Model::Base
        property 'manoeuvres'
        property 'texts'
        property 'nodes'
        property 'binaryPathDesc'
        property 'polygon'
        property 'polygonElevations'
        property 'detailLevel', transform_with: ->(value) do 
          SatelicomPtv::Constant.validate(SatelicomPtv::Constant::DETAIL_LEVEL, value)
        end
        property 'dynamicInfo'
        property 'segments'
        property 'segmentAttributes'
        property 'segmentAttributePiggyback'
        property 'segmentAttributeNamedToll'
        property 'manoeuvreAttributes'
        property 'brunnelManoeuvres'
        property 'urbanManoeuvres'
        property 'startDetail'
        property 'destDetail'
        property 'manoeuvreGroups'
        property 'manoeuvreGroupRatio'
        property 'tollManoeuvres'
        property 'boundingRectanglesC'
        property 'boundingRectanglesOffset'
        property 'totalRectangle'
        property 'extSegments'
        property 'emissions'
        property 'hbefaType'
        property 'cenEmissionConfiguration'
        property 'speedLimits'
        property 'featureDescriptions'
        property 'utcOffsets'
        
        coerce_key :startDetail             ,  DetailDescriptionOption
        coerce_key :destDetail              ,  DetailDescriptionOption
        coerce_key :emissions               ,  EmissionType
        coerce_key :hbefaType               ,  HBEFAType
        coerce_key :cenEmissionConfiguration,  CenEmissionConfiguration
      end
    end
  end
end