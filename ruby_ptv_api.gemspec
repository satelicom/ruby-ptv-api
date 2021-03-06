# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_ptv_api/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_ptv_api"
  spec.version       = RubyPtvApi::VERSION
  spec.authors       = ["Leanbit srl", "Satelicom srl"]
  spec.email         = ["info@leanbit.it"]
  spec.licenses      = ['MIT']
  spec.summary       = "Unofficial PVT ruby client"
  spec.description   = "PTV client, incomplete implementation of x_route, x_locate, x_tour"
  spec.homepage      = "https://github.com/satelicom/ruby-ptv-api"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", '~> 0.9'
  spec.add_dependency "oj", '~> 2.16'
  spec.add_dependency "hashie", '~> 3.4'
  
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard", "~> 2.13"
  spec.add_development_dependency "guard-rspec", "~> 4.6"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "factory_girl", "~> 4.5"
end
