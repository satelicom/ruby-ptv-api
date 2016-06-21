require 'oj'
require 'hashie'
require 'faraday'

require "ruby_ptv_api/base"
require "ruby_ptv_api/constant"
require "ruby_ptv_api/version"

require "ruby_ptv_api/model/base"
require "ruby_ptv_api/model/plain_point"
require "ruby_ptv_api/model/point"

require "ruby_ptv_api/model/x_locate/address"
require "ruby_ptv_api/model/x_locate/result_address"
require "ruby_ptv_api/model/x_locate/address_response"
require "ruby_ptv_api/model/x_locate/location"
require "ruby_ptv_api/model/x_locate/sort_option"
require "ruby_ptv_api/model/x_locate/additional_field"
require "ruby_ptv_api/model/x_locate/combined_transport_location"
require "ruby_ptv_api/model/x_locate/result_combined_transport"
require "ruby_ptv_api/model/x_locate/combined_transport_response"
require "ruby_ptv_api/model/x_locate/suggestion"
require "ruby_ptv_api/model/x_locate/suggestion_response"

require "ruby_ptv_api/model/x_tour/abstract_transport_order.rb"
require "ruby_ptv_api/model/x_tour/quantities.rb"
require "ruby_ptv_api/model/x_tour/capacities.rb"
require "ruby_ptv_api/model/x_tour/interval.rb"
require "ruby_ptv_api/model/x_tour/maximum_tour_period_restriction.rb"
require "ruby_ptv_api/model/x_tour/driver_settings.rb"
require "ruby_ptv_api/model/x_tour/tour_restrictions.rb"
require "ruby_ptv_api/model/x_tour/restrictions.rb"
require "ruby_ptv_api/model/x_tour/quantity_dependent_periods.rb"
require "ruby_ptv_api/model/x_tour/loading_function.rb"
require "ruby_ptv_api/model/x_tour/distance_matrix_calculation.rb"
require "ruby_ptv_api/model/x_tour/distance_matrix_by_road.rb"
require "ruby_ptv_api/model/x_tour/product_incompatibility.rb"
require "ruby_ptv_api/model/x_tour/goal_importance.rb"
require "ruby_ptv_api/model/x_tour/planning_params.rb"
require "ruby_ptv_api/model/x_tour/standard_params.rb"
require "ruby_ptv_api/model/x_tour/sequencing_params.rb"
require "ruby_ptv_api/model/x_tour/abstract_costs.rb"
require "ruby_ptv_api/model/x_tour/total_costs.rb"
require "ruby_ptv_api/model/x_tour/abstract_tour.rb"
require "ruby_ptv_api/model/x_tour/sequencing_tour_result.rb"
require "ruby_ptv_api/model/x_tour/tour_point_result.rb"
require "ruby_ptv_api/model/x_tour/sequencing_tour_point.rb"
require "ruby_ptv_api/model/x_tour/sequencing_tour.rb"
require "ruby_ptv_api/model/x_tour/tour_event.rb"
require "ruby_ptv_api/model/x_tour/vehicle_violations.rb"
require "ruby_ptv_api/model/x_tour/tour_violations.rb"
require "ruby_ptv_api/model/x_tour/unscheduled_order_analysis_result.rb"
require "ruby_ptv_api/model/x_tour/sequencing_plan_result.rb"
require "ruby_ptv_api/model/x_tour/sequencing_plan.rb"
require "ruby_ptv_api/model/x_tour/vehicle_costs.rb"
require "ruby_ptv_api/model/x_tour/abstract_vehicle.rb"
require "ruby_ptv_api/model/x_tour/base_vehicle.rb"
require "ruby_ptv_api/model/x_tour/sequencing_vehicle.rb"
require "ruby_ptv_api/model/x_tour/logistic_point.rb"
require "ruby_ptv_api/model/x_tour/depot.rb"
require "ruby_ptv_api/model/x_tour/transport_point.rb"
require "ruby_ptv_api/model/x_tour/sequencing_transport_order.rb"
require "ruby_ptv_api/model/x_tour/sequencing_transport_depot.rb"
require "ruby_ptv_api/model/x_tour/loading_area.rb"
require "ruby_ptv_api/model/x_tour/transport_order.rb"
require "ruby_ptv_api/model/x_tour/transport_depot.rb"
require "ruby_ptv_api/model/x_tour/vehicle_restrictions.rb"
require "ruby_ptv_api/model/x_tour/vehicle.rb"
require "ruby_ptv_api/model/x_tour/abstract_tour_point.rb"
require "ruby_ptv_api/model/x_tour/chain_result.rb"
require "ruby_ptv_api/model/x_tour/tour_point.rb"
require "ruby_ptv_api/model/x_tour/abstract_tour_result.rb"
require "ruby_ptv_api/model/x_tour/tour_result.rb"
require "ruby_ptv_api/model/x_tour/tour.rb"
require "ruby_ptv_api/model/x_tour/chain.rb"
require "ruby_ptv_api/model/x_tour/plan_result.rb"
require "ruby_ptv_api/model/x_tour/plan.rb"
require "ruby_ptv_api/model/x_tour/trailer.rb"
require "ruby_ptv_api/model/x_tour/costs.rb"
require "ruby_ptv_api/model/x_tour/train.rb"
require "ruby_ptv_api/model/x_tour/fleet.rb"
require "ruby_ptv_api/model/x_tour/loading_area.rb"
require "ruby_ptv_api/model/x_tour/plan_result.rb"
require "ruby_ptv_api/model/x_tour/plan.rb"
require "ruby_ptv_api/model/x_tour/transport_order.rb"
require "ruby_ptv_api/model/x_tour/vehicle_restrictions.rb"
require "ruby_ptv_api/model/x_tour/vehicle.rb"

require "ruby_ptv_api/model/x_route/bounding_rectangle.rb"
require "ruby_ptv_api/model/x_route/brunnel_manoeuvre.rb"
require "ruby_ptv_api/model/x_route/cen_emissions.rb"
require "ruby_ptv_api/model/x_route/cen_emission_configuration.rb"
require "ruby_ptv_api/model/x_route/cen_emission_conversion_factors.rb"
require "ruby_ptv_api/model/x_route/cen_emission_scenarios.rb"
require "ruby_ptv_api/model/x_route/commuter_travel_trend.rb"
require "ruby_ptv_api/model/x_route/detail_description_option.rb"
require "ruby_ptv_api/model/x_route/dynamic_info.rb"
require "ruby_ptv_api/model/x_route/emission_type.rb"
require "ruby_ptv_api/model/x_route/emissions.rb"
require "ruby_ptv_api/model/x_route/unique_geo_id.rb"
require "ruby_ptv_api/model/x_route/plain_geometry_base.rb"
require "ruby_ptv_api/model/x_route/klm.rb"
require "ruby_ptv_api/model/x_route/encoded_geometry.rb"
require "ruby_ptv_api/model/x_route/plain_line_string.rb"
require "ruby_ptv_api/model/x_route/line_string.rb"
require "ruby_ptv_api/model/x_route/exception_path.rb"
require "ruby_ptv_api/model/x_route/feauture_description.rb"
require "ruby_ptv_api/model/x_route/hbefa_type.rb"
require "ruby_ptv_api/model/x_route/manoeuvre_attr.rb"
require "ruby_ptv_api/model/x_route/manoeuvre_group.rb"
require "ruby_ptv_api/model/x_route/norm_speed.rb"
require "ruby_ptv_api/model/x_route/result_list_options.rb"
require "ruby_ptv_api/model/x_route/segment_attributes.rb"
require "ruby_ptv_api/model/x_route/speed_limit.rb"
require "ruby_ptv_api/model/x_route/speed_limits.rb"
require "ruby_ptv_api/model/x_route/urban_manoeuvre.rb"
require "ruby_ptv_api/model/x_route/vehicle_option.rb"
require "ruby_ptv_api/model/x_route/via_type.rb"
require "ruby_ptv_api/model/x_route/way_point.rb"
require "ruby_ptv_api/model/x_route/routing_option.rb"
require "ruby_ptv_api/model/x_route/waypoint_desc.rb"
require "ruby_ptv_api/model/x_route/route_info.rb"
require "ruby_ptv_api/model/x_route/route_list_segment.rb"
require "ruby_ptv_api/model/x_route/route_manoeuvre.rb"
require "ruby_ptv_api/model/x_route/route.rb"
require "ruby_ptv_api/model/x_route/expansion_description.rb"
require "ruby_ptv_api/model/x_route/reach_info.rb"
require "ruby_ptv_api/model/x_route/reach.rb"

require "ruby_ptv_api/operation/x_locate/base"
require "ruby_ptv_api/operation/x_locate/find_address"
require "ruby_ptv_api/operation/x_locate/find_addresses"
require "ruby_ptv_api/operation/x_locate/find_location"
require "ruby_ptv_api/operation/x_locate/find_locations"
require "ruby_ptv_api/operation/x_locate/find_combined_transport_by_location"
require "ruby_ptv_api/operation/x_locate/find_address_by_text"
require "ruby_ptv_api/operation/x_locate/find_suggestion"

require "ruby_ptv_api/operation/x_tour/base"
require "ruby_ptv_api/operation/x_tour/plan_sequence"
require "ruby_ptv_api/operation/x_tour/plan_basic_tours"

require "ruby_ptv_api/operation/x_route/base"
require "ruby_ptv_api/operation/x_route/calculate_route"
require "ruby_ptv_api/operation/x_route/calculate_route_info"
require "ruby_ptv_api/operation/x_route/calculate_reachable_objects"

require "ruby_ptv_api/id_manager"
require "ruby_ptv_api/x_tour"

module RubyPtvApi
  
  # Class method to set up configuration parameters
  #
  # @example
  #   RubyPtvApi.configure do |c|
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
  #   RubyPtvApi.config.x_locate_endpoint
  #
  def self.config
    if @config.nil? or @config.instance_variables.count != 3
      raise 'RubyPtvApi gem uncompleted config'
    end
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

  def self.convert_coordinate(coord)
    coord * RubyPtvApi::Model::PlainPoint::GEODECIMAL_COSTANT
  end
end