# Freegeoip

Freegeoip is a library for accessing freegeoip.net API simply in Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'freegeoip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freegeoip

## Usage

### Using it on Rails 3.x

Include the following code in config/initializer/freegeoip.rb

    Freegeoip.setup :host => '127.0.0.1', :port => '8080', :protocol => 'http'

Or if the above settings is true to your setup just write the code
below:

    Freegeoip.setup

### Location lookup

    l = Freegeoip.lookup('8.8.8.8')

The variable l is a hash that contains the following [[keys:]]

* ip - the ip address that you wanted to lookup
* country_code
* country_name
* region_code
* region_name
* city
* zipcode
* latitude
* longitude
* metro_code
* areacode

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
