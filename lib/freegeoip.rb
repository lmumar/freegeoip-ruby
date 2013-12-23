require "freegeoip/version"
require "freegeoip/ip_address"
require "freegeoip/client"

module Freegeoip
  DEFAULT = {
    :protocol => 'http',
    :host     => '127.0.0.1',
    :port     => 8080,
    :timeout  => 2 #seconds
  }.freeze

  def self.setup(config={})
    @@config = DEFAULT.merge(config)
  end

  def self.lookup(ip)
    client = Client.new(config)
    client.lookup(IpAddress.new(ip))
  end

  def self.config
    @@config || setup
  end
end

