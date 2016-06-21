module RubyPtvApi
  module Model
    module XRoute
      class CENEmissionConversionFactors < RubyPtvApi::Model::Base
        property 'biofuelPercent'
        property 'conversionFactors'
        coerce_key :conversionFactors, CENEmissions
      end
    end
  end
end