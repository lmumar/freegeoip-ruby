require "yajl"
require "httparty"

module Freegeoip
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
      @parser = Yajl::Parser.new
    end

    def lookup(ip)
      if ip.valid?
        query = compute_path(ip)
        fetch_data(query)
      else
        raise ArgumentError, "Invalid ip address"
      end
    end

    private

    def fetch_data(query)
      timeout(config[:timeout]) do
        response = HTTParty.get(query)
        body = response.body
        code = response.code
        if (200..399).include?(code.to_i)
          parse_json body
        else
          raise "request failed with status code %s" % code
        end
      end
    end

    def compute_path(ip)
      "%s://%s:%i/json/%s" % [config[:protocol], config[:host], config[:port], ip]
    end

    def parse_json(data)
      @parser.parse(data)
    end
  end
end

