require 'oj'
require 'hashie'
require 'faraday'

require "satelicom_ptv/base"
require "satelicom_ptv/constant"
require "satelicom_ptv/version"

require "satelicom_ptv/model/base"
require "satelicom_ptv/model/plain_point"
require "satelicom_ptv/model/point"

require "satelicom_ptv/model/x_locate/address"
require "satelicom_ptv/model/x_locate/result_address"
require "satelicom_ptv/model/x_locate/address_response"
require "satelicom_ptv/model/x_locate/location"
require "satelicom_ptv/model/x_locate/sort_option"
require "satelicom_ptv/model/x_locate/additional_field"
require "satelicom_ptv/model/x_locate/combined_transport_location"
require "satelicom_ptv/model/x_locate/result_combined_transport"
require "satelicom_ptv/model/x_locate/combined_transport_response"
require "satelicom_ptv/model/x_locate/suggestion"
require "satelicom_ptv/model/x_locate/suggestion_response"

require "satelicom_ptv/model/x_tour/abstract_transport_order.rb"
require "satelicom_ptv/model/x_tour/quantities.rb"
require "satelicom_ptv/model/x_tour/capacities.rb"
require "satelicom_ptv/model/x_tour/interval.rb"
require "satelicom_ptv/model/x_tour/maximum_tour_period_restriction.rb"
require "satelicom_ptv/model/x_tour/driver_settings.rb"
require "satelicom_ptv/model/x_tour/tour_restrictions.rb"
require "satelicom_ptv/model/x_tour/restrictions.rb"
require "satelicom_ptv/model/x_tour/quantity_dependent_periods.rb"
require "satelicom_ptv/model/x_tour/loading_function.rb"
require "satelicom_ptv/model/x_tour/distance_matrix_calculation.rb"
require "satelicom_ptv/model/x_tour/distance_matrix_by_road.rb"
require "satelicom_ptv/model/x_tour/product_incompatibility.rb"
require "satelicom_ptv/model/x_tour/goal_importance.rb"
require "satelicom_ptv/model/x_tour/planning_params.rb"
require "satelicom_ptv/model/x_tour/standard_params.rb"
require "satelicom_ptv/model/x_tour/sequencing_params.rb"
require "satelicom_ptv/model/x_tour/abstract_costs.rb"
require "satelicom_ptv/model/x_tour/total_costs.rb"
require "satelicom_ptv/model/x_tour/abstract_tour.rb"
require "satelicom_ptv/model/x_tour/sequencing_tour_result.rb"
require "satelicom_ptv/model/x_tour/tour_point_result.rb"
require "satelicom_ptv/model/x_tour/sequencing_tour_point.rb"
require "satelicom_ptv/model/x_tour/sequencing_tour.rb"
require "satelicom_ptv/model/x_tour/tour_event.rb"
require "satelicom_ptv/model/x_tour/vehicle_violations.rb"
require "satelicom_ptv/model/x_tour/tour_violations.rb"
require "satelicom_ptv/model/x_tour/unscheduled_order_analysis_result.rb"
require "satelicom_ptv/model/x_tour/sequencing_plan_result.rb"
require "satelicom_ptv/model/x_tour/sequencing_plan.rb"
require "satelicom_ptv/model/x_tour/vehicle_costs.rb"
require "satelicom_ptv/model/x_tour/abstract_vehicle.rb"
require "satelicom_ptv/model/x_tour/base_vehicle.rb"
require "satelicom_ptv/model/x_tour/sequencing_vehicle.rb"
require "satelicom_ptv/model/x_tour/logistic_point.rb"
require "satelicom_ptv/model/x_tour/depot.rb"
require "satelicom_ptv/model/x_tour/transport_point.rb"
require "satelicom_ptv/model/x_tour/sequencing_transport_order.rb"
require "satelicom_ptv/model/x_tour/sequencing_transport_depot.rb"
require "satelicom_ptv/model/x_tour/loading_area.rb"
require "satelicom_ptv/model/x_tour/transport_order.rb"
require "satelicom_ptv/model/x_tour/transport_depot.rb"
require "satelicom_ptv/model/x_tour/vehicle_restrictions.rb"
require "satelicom_ptv/model/x_tour/vehicle.rb"
require "satelicom_ptv/model/x_tour/abstract_tour_point.rb"
require "satelicom_ptv/model/x_tour/chain_result.rb"
require "satelicom_ptv/model/x_tour/tour_point.rb"
require "satelicom_ptv/model/x_tour/abstract_tour_result.rb"
require "satelicom_ptv/model/x_tour/tour_result.rb"
require "satelicom_ptv/model/x_tour/tour.rb"
require "satelicom_ptv/model/x_tour/chain.rb"
require "satelicom_ptv/model/x_tour/plan_result.rb"
require "satelicom_ptv/model/x_tour/plan.rb"
require "satelicom_ptv/model/x_tour/trailer.rb"
require "satelicom_ptv/model/x_tour/costs.rb"
require "satelicom_ptv/model/x_tour/train.rb"
require "satelicom_ptv/model/x_tour/fleet.rb"
require "satelicom_ptv/model/x_tour/loading_area.rb"
require "satelicom_ptv/model/x_tour/plan_result.rb"
require "satelicom_ptv/model/x_tour/plan.rb"
require "satelicom_ptv/model/x_tour/transport_order.rb"
require "satelicom_ptv/model/x_tour/vehicle_restrictions.rb"
require "satelicom_ptv/model/x_tour/vehicle.rb"

require "satelicom_ptv/model/x_route/bounding_rectangle.rb"
require "satelicom_ptv/model/x_route/brunnel_manoeuvre.rb"
require "satelicom_ptv/model/x_route/cen_emissions.rb"
require "satelicom_ptv/model/x_route/cen_emission_configuration.rb"
require "satelicom_ptv/model/x_route/cen_emission_conversion_factors.rb"
require "satelicom_ptv/model/x_route/cen_emission_scenarios.rb"
require "satelicom_ptv/model/x_route/commuter_travel_trend.rb"
require "satelicom_ptv/model/x_route/detail_description_option.rb"
require "satelicom_ptv/model/x_route/dynamic_info.rb"
require "satelicom_ptv/model/x_route/emission_type.rb"
require "satelicom_ptv/model/x_route/emissions.rb"
require "satelicom_ptv/model/x_route/unique_geo_id.rb"
require "satelicom_ptv/model/x_route/plain_geometry_base.rb"
require "satelicom_ptv/model/x_route/klm.rb"
require "satelicom_ptv/model/x_route/encoded_geometry.rb"
require "satelicom_ptv/model/x_route/plain_line_string.rb"
require "satelicom_ptv/model/x_route/line_string.rb"
require "satelicom_ptv/model/x_route/exception_path.rb"
require "satelicom_ptv/model/x_route/feauture_description.rb"
require "satelicom_ptv/model/x_route/hbefa_type.rb"
require "satelicom_ptv/model/x_route/manoeuvre_attr.rb"
require "satelicom_ptv/model/x_route/manoeuvre_group.rb"
require "satelicom_ptv/model/x_route/norm_speed.rb"
require "satelicom_ptv/model/x_route/result_list_options.rb"
require "satelicom_ptv/model/x_route/segment_attributes.rb"
require "satelicom_ptv/model/x_route/speed_limit.rb"
require "satelicom_ptv/model/x_route/speed_limits.rb"
require "satelicom_ptv/model/x_route/urban_manoeuvre.rb"
require "satelicom_ptv/model/x_route/vehicle_option.rb"
require "satelicom_ptv/model/x_route/via_type.rb"
require "satelicom_ptv/model/x_route/way_point.rb"
require "satelicom_ptv/model/x_route/routing_option.rb"
require "satelicom_ptv/model/x_route/waypoint_desc.rb"
require "satelicom_ptv/model/x_route/route_info.rb"
require "satelicom_ptv/model/x_route/route_list_segment.rb"
require "satelicom_ptv/model/x_route/route_manoeuvre.rb"
require "satelicom_ptv/model/x_route/route.rb"
require "satelicom_ptv/model/x_route/expansion_description.rb"
require "satelicom_ptv/model/x_route/reach_info.rb"
require "satelicom_ptv/model/x_route/reach.rb"

require "satelicom_ptv/operation/x_locate/base"
require "satelicom_ptv/operation/x_locate/find_address"
require "satelicom_ptv/operation/x_locate/find_addresses"
require "satelicom_ptv/operation/x_locate/find_location"
require "satelicom_ptv/operation/x_locate/find_locations"
require "satelicom_ptv/operation/x_locate/find_combined_transport_by_location"
require "satelicom_ptv/operation/x_locate/find_address_by_text"
require "satelicom_ptv/operation/x_locate/find_suggestion"

require "satelicom_ptv/operation/x_tour/base"
require "satelicom_ptv/operation/x_tour/plan_sequence"
require "satelicom_ptv/operation/x_tour/plan_basic_tours"

require "satelicom_ptv/operation/x_route/base"
require "satelicom_ptv/operation/x_route/calculate_route"
require "satelicom_ptv/operation/x_route/calculate_route_info"
require "satelicom_ptv/operation/x_route/calculate_reachable_objects"

require "satelicom_ptv/id_manager"
require "satelicom_ptv/x_tour"

module SatelicomPtv
  
  # Class method to set up configuration parameters
  #
  # @example
  #   SatelicomPtv.configure do |c|
  #     c.x_locate_endpoint = "http://..."
  #   end
  #
  def self.configure(&block)
    Oj.default_options = { :mode => :compat }
    yield @config ||= Configuration.new
  end

  # Return configuration parameters
  #
  # @example
  #   SatelicomPtv.config.x_locate_endpoint
  #
  def self.config
    @config
  end

  # Container for configuration parameters
  #
  class Configuration
    attr_accessor :x_locate_endpoint, :x_route_endpoint, :x_tour_endpoint
  end

  # Exception raised for connection error
  #  
  class BadResponse < Exception; end

  # Exception raised when a mandatory parameter is missing
  #  
  class MissingParameter < Exception; end

  # Exception raised when more than one require parameter is given
  #  
  class TooManyParameters < Exception; end

  # Exception raised when a parameter is in the wrong format
  #  
  class WrongParameterFormat < Exception; end

  def self.cast_coordinate(coord)
    coord.to_i.to_s.size != 7 ? (coord * 100000).to_i : coord
  end
end