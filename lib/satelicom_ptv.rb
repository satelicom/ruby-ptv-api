require "faraday"
require 'oj'
require 'hashie'
require 'facets'
require "satelicom_ptv/base"
require "satelicom_ptv/constant"
require "satelicom_ptv/version"

#Dir[File.join(File.dirname(__FILE__), 'satelicom_ptv/model/x_locate/**/*.rb')].sort.each {|file| require file}
require "satelicom_ptv/model/x_locate/base"
require "satelicom_ptv/model/x_locate/plain_point"
require "satelicom_ptv/model/x_locate/point"
require "satelicom_ptv/model/x_locate/address"
require "satelicom_ptv/model/x_locate/result_address"
require "satelicom_ptv/model/x_locate/address_response"
require "satelicom_ptv/model/x_locate/location"
require "satelicom_ptv/model/x_locate/sort_option"
require "satelicom_ptv/model/x_locate/additional_field"
require "satelicom_ptv/model/x_locate/combined_transport_location"
require "satelicom_ptv/model/x_locate/result_combined_transport"
require "satelicom_ptv/model/x_locate/combined_transport_response"

require "satelicom_ptv/operation/x_locate/base"
require "satelicom_ptv/operation/x_locate/find_address"
require "satelicom_ptv/operation/x_locate/find_addresses"
require "satelicom_ptv/operation/x_locate/find_location"
require "satelicom_ptv/operation/x_locate/find_locations"
require "satelicom_ptv/operation/x_locate/find_combined_transport_by_location"
require "satelicom_ptv/operation/x_locate/find_address_by_text"

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
    attr_accessor :x_locate_endpoint
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
