module SatelicomPtv
  module Model
    module XLocate
      # adminRegion String   The administrative address supplement of the address.
      # appendix  String   The appendix of the address.
      # countryCapital  String   The capital of the country.
      # totalScore  int  The quality score of the address candidate. Indicates the overall quality of the resultlist candidate. Does not indicate the match quality of the input address to the result (for this szenario use the classification). In location based search modes, this value is the distance in meter.
      # detailLevelDescription  DetailLevelDescription   The detail level of the candidate. See DetailLevelDescription for possible values.
      # classificationDescription ClassificationDescription  The classification of the address candidate based on the quality of the match. See ClassificationDescription for possible values.
      # coordinates Point  The coordinates of the address candidate.
      # additionalFields  AdditionalField[]  Additional result fields. The fields are returned in the same order as they have been requested.

      class ResultAddress < Address
        property 'adminRegion'
        property 'appendix'
        property 'countryCapital'
        property 'totalScore'
        property 'detailLevelDescription'
        property 'classificationDescription'
        property 'coordinates'
        property 'additionalFields'

        coerce_key :coordinates, Point
      end
    end
  end
end