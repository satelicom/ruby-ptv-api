module SatelicomPtv
  module Constant
    RESULT_FIELD = [
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
    
    SORT_ORDER = [:ASCENDING, :DESCENDING]

    CO_DRIVER_STATUS = [:NEVER, :ALWAYS, :IF_REQUIRED]

    UNSCHEDULED_STOP_STATUS = [:FEASIBLE, :UNSCHEDULED_DUE_TO_PLAN, :UNSCHEDULED_DUE_TO_VEHICLES]

    COORD_FORMAT = [:OG_GEODECIMAL, :PTV_MERCATOR, :PTV_GEOMINSEC, :PTV_GEODECIMAL, :PTV_CONFORM, :PTV_SUPERCONFORM, :PTV_SMARTUNITS, :OG_SRID]

    OPENING_INTERVAL_CONTRAINT = [:START_OF_SERVICE, :COMPLETE_SERVICE]

    PRODUCT_INCOMPATIBILITY_TYPE = [:NOT_ON_SAME_TOUR, :NOT_AT_SAME_TIME]

    TOUR_POINT_FIXATION = [:NONE, :NO_TOUR_POINT_OUT, :NO_TOUR_POINT_IN_AND_OUT, :COMPLETELY_FIXED]

    TOUR_POINT_TYPE = [:TRANSPORT_POINT, :DEPOT]

    LINK_TYPE = [:NEXT_NODE, :NEXT_SEGMENT, :NEXT_MAIN_NODE, :FUZZY_LINKING, :AUTO_LINKING, :NEXT_MAIN_TOLL_NODE, :TOLL_STATION, :TI_LINKING]

    ROUTING_PARAMETER = [
      :OPTIMIZATION, :SPEED_PROFILE, :AVOID_NATIONALNAMEDTOLL_ROADS, :AVOID_TOLLROADS, :AVOID_VIGNETTEROADS, 
      :AVOID_HIGHWAYS, :AVOID_FERRIES, :AVOID_RESIDENTS_ONLY, :AVOID_URBAN_AREAS, :AVOID_RAMPS, :AVOID_LOW_EMISSION_ZONES, 
      :ALLOW_SEGMENT_VIOLATIONS, :COST_OF_SEGMENT_VIOLATIONS, :EXCLUDE_COUNTRIES , :ROUTING_COUNTRIES, 
      :ROUTING_RECTANGLE, :AUTO, :ROUTE_LANGUAGE, :START_TIME, :IS_DESTTIME, :DYNAMIC_PROFILE, :ENABLE_DYNAMIC, 
      :DYNAMIC_PROFILE, :ENABLE_ROADEDITOR, :ROADEDITOR_LAYERNAME, :START_TIME_ROADEDITOR, :ROADEDITOR_LAYERNAME, 
      :ROADEDITOR_ATTRIBUTESET, :ROADEDITOR_ADDITIONAL_OPTIONS, :DISTANCE_MEASURE, :COUNTRY_ENCODING, 
      :GENERATE_EXTWAYPOINTS, :EXPERT_OPTIONS, :ALT, :REQUEST_VERSION, :LOW_EMISSION_ZONE_TYPE, 
      :DYNAMIC_TIME_ON_STATICROUTE, :DYNAMIC_TRAVEL_TIME_STEP_SIZE, :DYNAMIC_TRAVEL_TIME_STEP_COUNT, 
      :SPEED_INFOS, :ENABLE_DYNAMIC_WITH_FREE_FLOW_SPEED, :GEODATASOURCE_LAYER, :REMAINING_DRIVING_TIMES 
    ]

    VIA_TYPE_ENUM = [:VIA, :VIA_STOP, :FUZZY, :COMBINED_TRANSPORT]

    DETAIL_LEVEL = [:BORDERS, :VERY_IMPORTANT, :STANDARD, :LESS_IMPORTANT, :OTHER_OPPORTUNITIES, :ORTHOGONAL , :ALL]

    EMISSION_LEVEL = [:NONE, :BASIC, :SEGMENTS, :STATIONS, :ALL]

    HBEFA_VERSION = [:HBEFA_2_1, :HBEFA_3_1, :NO_HBEFA, :HBEFA_3_2, :COPERT_AUS_1_2]

    CEN_VERSION = [:CEN_2011, :CEN_2012, :CO2_DECREE_FRANCE_2011, :AUSTRALIA_NGA_2011, :UK_DEFRA_2014]

    WAY_POINT_TYPE = [:START, :VIA, :DEST]

    TURN_WEIGHT = [:NORMAL, :HALF, :STRONG]

    TURN_ORIENT = [:STRAIGHT, :LEFT, :RIGHT]

    MANOEUVRE_TYPE = [
      :FURTHER, :KEEP , :TURN , :UTURN, :ENTER, :EXIT , :ENTER_RA , :STAY_RA, :EXIT_RA, 
      :CHANGE , :ENTER_FERRY , :EXIT_FERRY  , :EXIT_RA_ENTER , :EXIT_RA_ENTER_FERRY
    ]

    INFO_NODE_TYPE = [:NORMAL , :AE , :AS , :AD , :AK , :BORDER , :BUILT_UP , :FERRY, :TOLL_ROAD, :SIGN]

    NETWORK_CLASS = [
      :MOTORWAY, :HIGHWAY, :TRUNK_ROAD, :COUNTRY_ROAD, :CITY_ROAD, :RESIDENTIAL_ROAD, 
      :SPECIAL_ROAD, :CYCLE_AND_WALKWAY 
    ]

    NORM_SPEED_TYPE = [:FREE_FLOW, :MAX_DYNAMIC, :STATIC]

    BRUNNEL_CODE = [
      :NOTHING, :OVER_WATER , :UNDER_WATER, :OVER_TRAIN , :UNDER_TRAIN, :OVER_STREET,
      :UNDER_STREET , :BRIDGE , :TUNNEL
    ]

    MANOEUVRE_GROUP_TYPE = [:MG_TYPE1, :MG_TYPE2]

    EXPANSION_TYPE = [:EXP_TIME, :EXP_DIST]

    def self.constant_by_value( val )
      constants.find{ |name| const_get(name)==val }
    end

    def self.validate(constant, value)
      value = value.to_sym
      if constant.include?(value)
        value
      else
        raise WrongParameterFormat.new("#{value} is not a valid #{constant_by_value(constant)}")
      end
    end
  end
end
