require "faraday"
require 'oj'
require 'hashie'
require "satelicom_ptv/base"
require "satelicom_ptv/version"
require "satelicom_ptv/model/base"
require "satelicom_ptv/model/plain_point"
require "satelicom_ptv/model/point"
require "satelicom_ptv/model/address"
require "satelicom_ptv/model/result_address"
require "satelicom_ptv/x_locate/base"
require "satelicom_ptv/x_locate/find_address"

module SatelicomPtv
   # Class method to set up configuration parameters
  #
  # @example
  #   SatelicomPtv.configure do |c|
  #     c.app_id = "test"
  #   end
  #
  def self.configure(&block)
    Oj.default_options = { :mode => :compat }
    yield @config ||= Configuration.new
  end

  # Return configuration parameters
  #
  # @example
  #   SatelicomPtv.config.app_id
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
