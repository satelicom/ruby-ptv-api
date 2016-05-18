module SatelicomPtv
  module XLocate
    class Base < SatelicomPtv::Base
      attr_reader :search_option_base_array, :sort_option_array, :result_field_array

      def ptv_path
        'xlocate/rs/XLocate'
      end

      def options=(opts)
        @search_option_base_array = opts
      end

      def options
        @search_option_base_array || []
      end

      def sorting=(sort)
        @sort_option_array = sort
      end

      def sorting
        @sort_option_array || []
      end

      def additional_fields=(fields)
        @result_field_array = fields
      end

      def additional_fields 
        @result_field_array || []
      end

      def extra_params(opts, sort, fields)
        self.options = opts if opts
        self.sorting = sort if sort
        self.additional_fields = fields if fields
      end

      def check_sorting(value)
        available = [:ASCENDING, :DESCENDING]
        unless available.include? value.to_sym
          raise "Value #{value} is not a sorting accepted value #{available}"
        end
      end 

      def check_options(value)
        available = [:ASCENDING, :DESCENDING]
        unless available.include? value.to_sym
          raise "Value #{value} is not a options accepted value #{available}"
        end
      end 

      def check_additional_fields(value)
        available = [
          :COUNTRY, :STATE, :ADMINREGION, :CITY, :CITY2, :POSTCODE, :STREET, :HOUSENR, 
          :COORDX, :COORDY, :DETAILLEVEL, :DETAILLEVEL_DESCRIPTION, :POPULATION, :EXTENSIONCLASS,
          :LEVEL, :ISCITYDISTRICT, :COUNTRY_ISO2, :COUNTRY_ISO3, :COUNTRY_COUNTRYCODEPLATE, 
          :COUNTRY_DIALINGCODE, :COUNTRY_CAPITAL, :COUNTRY_NAME, :HOUSENR_SIDE, :HOUSENR_STRUCTURE, 
          :HOUSENR_STARTFORMAT, :HOUSENR_ENDFORMAT, :APPENDIX, :SCORE_TOTALSCORE, :SCORE_FINALPENALTY, 
          :FOUNDBY_CITY, :FOUNDBY_CITY2, :FOUNDBY_POSTCODE, :FOUNDBY_STREET, :CLASSIFICATION, 
          :CLASSIFICATION_DESCRIPTION, :SWAPANDSPLITMODE, :POPUPINFO, :PHONENUMBER, :SEGMENT_ID, 
          :SEGMENT_COUNTRY, :SEGMENT_DIRECTION, :XYN, :POINAME, :POITYPE, :ADDRESS_CLASSIFICATION, 
          :ADDRESS_CLASSIFICATION_DESCRIPTION, :POSTCODE_CLASSIFICATION, :TOWN_CLASSIFICATION, 
          :STREET_CLASSIFICATION, :HOUSENR_CLASSIFICATION, :POSTCODE_CHARACTERISTICS, :TOWN_CHARACTERISTICS, 
          :STREET_CHARACTERISTICS, :HOUSENR_CHARACTERISTICS, :UNMATCHED_WORDS, :UNMATCHED_WORDS_COUNT, 
          :STREETX, :STREETY, :ADMINX, :ADMINY, :DESTINATION_LOCATION_NODE_N, :DESTINATION_LOCATION_NODE_Y,
          :DESTINATION_LOCATION_NODE_X, :DESTINATION_LOCATION_TILE_Y, :DESTINATION_LOCATION_TILE_X, 
          :DESTINATION_LOCATION_COUNTRYCODE, :START_LOCATION_NODE_N, :START_LOCATION_NODE_Y, 
          :START_LOCATION_NODE_X, :START_LOCATION_TILE_Y, :START_LOCATION_TILE_X, :START_LOCATION_COUNTRYCODE, 
          :ISBLOCKEDFORPEDESTRIANS, :ISBLOCKEDFORBICYCLES, :ISBLOCKEDFORMOTORCYCLES, :ISBLOCKEDFORCARS, 
          :ISBLOCKEDFORVANS, :ISBLOCKEDFORCAMPERS, :ISBLOCKEDFORBUSES, :ISBLOCKEDFORHAZARDOUSGOODS, 
          :ISBLOCKEDFORCOMBUSTIBLEGOODS, :ISBLOCKEDFORTRUCKS, :ARTIFICIALTOWNCHARACTERIZATION, 
          :CITY_LEVEL, :STREETNUMBER, :HOUSENR_ATINPUTCOORDINATESIDE, :PROVINCE 
        ]
        unless available.include? value.to_sym
          raise "Value #{value} is not a additional fields accepted value #{available}"
        end
      end 
    end
  end
end