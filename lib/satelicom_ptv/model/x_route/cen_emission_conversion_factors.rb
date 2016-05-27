module SatelicomPtv
  module Model
    module XRoute
      class CENEmissionConversionFactors < SatelicomPtv::Model::Base
        property 'biofuelPercent'
        property 'conversionFactors'
        coerce_key :conversionFactors, CENEmissions
      end
    end
  end
end