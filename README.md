# RubyPtvApi [![Gem Version](https://badge.fury.io/rb/ruby_ptv_api.svg)](https://badge.fury.io/rb/ruby_ptv_api)

Unofficial PTV API client

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_ptv_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_ptv_api

## Setup

Setup configuration parameters

```ruby
RubyPtvApi.configure do |c|
  c.x_locate_endpoint = "http://<your PTV server>"
  c.x_route_endpoint  = "http://<your PTV server>"
  c.x_tour_endpoint   = "http://<your PTV server>"
end
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/satelicom/ruby-ptv-api/.

