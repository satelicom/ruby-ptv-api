$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'satelicom_ptv'
require 'vcr'
require 'factory_girl'
Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f }

SatelicomPtv.configure do |c|
  c.x_locate_endpoint = "http://ptv.dev.satelicom.com:50020"
  c.x_route_endpoint  = "http://ptv.dev.satelicom.com:50030"
  c.x_tour_endpoint   = "http://ptv.dev.satelicom.com:50090"
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/cassettes"
  config.default_cassette_options = { :match_requests_on => [:query, :uri, :body], :record => :new_episodes }
  config.allow_http_connections_when_no_cassette = true
  config.hook_into :faraday # or :fakeweb
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl.find_definitions
  end
end