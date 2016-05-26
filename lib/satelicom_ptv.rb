require "faraday"
require 'oj'
require 'hashie'
require 'facets'
require "satelicom_ptv/base"
require "satelicom_ptv/constant"
require "satelicom_ptv/version"

#Dir[File.join(File.dirname(__FILE__), 'satelicom_ptv/model/x_locate/**/*.rb')].sort.each {|file| require file}
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
require "satelicom_ptv/model/x_tour/planning_params.rb"
require "satelicom_ptv/model/x_tour/sequencing_params.rb"
require "satelicom_ptv/model/x_tour/total_costs.rb"
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
require "satelicom_ptv/model/x_tour/base_vehicle.rb"
require "satelicom_ptv/model/x_tour/abstract_vehicle.rb"
require "satelicom_ptv/model/x_tour/sequencing_vehicle.rb"
require "satelicom_ptv/model/x_tour/logistic_point.rb"
require "satelicom_ptv/model/x_tour/depot.rb"
require "satelicom_ptv/model/x_tour/transport_point.rb"
require "satelicom_ptv/model/x_tour/sequencing_transport_order.rb"
require "satelicom_ptv/model/x_tour/sequencing_transport_depot.rb"
require "satelicom_ptv/model/x_tour/loading_area.rb"
require "satelicom_ptv/model/x_tour/transport_order.rb"
require "satelicom_ptv/model/x_tour/vehicle_restrictions.rb"
require "satelicom_ptv/model/x_tour/vehicle.rb"
require "satelicom_ptv/model/x_tour/abstract_tour.rb"
require "satelicom_ptv/model/x_tour/abstract_tour_point.rb"
require "satelicom_ptv/model/x_tour/chain_result.rb"
require "satelicom_ptv/model/x_tour/tour_point.rb"
require "satelicom_ptv/model/x_tour/tour_result.rb"
require "satelicom_ptv/model/x_tour/tour.rb"
require "satelicom_ptv/model/x_tour/chain.rb"
require "satelicom_ptv/model/x_tour/plan_result.rb"
require "satelicom_ptv/model/x_tour/plan.rb"
require "satelicom_ptv/model/x_tour/trailer.rb"
require "satelicom_ptv/model/x_tour/abstract_costs.rb"
require "satelicom_ptv/model/x_tour/costs.rb"
require "satelicom_ptv/model/x_tour/train.rb"
require "satelicom_ptv/model/x_tour/fleet.rb"
require "satelicom_ptv/model/x_tour/loading_area.rb"
require "satelicom_ptv/model/x_tour/plan_result.rb"
require "satelicom_ptv/model/x_tour/plan.rb"
require "satelicom_ptv/model/x_tour/transport_order.rb"
require "satelicom_ptv/model/x_tour/vehicle_restrictions.rb"
require "satelicom_ptv/model/x_tour/vehicle.rb"

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

end
