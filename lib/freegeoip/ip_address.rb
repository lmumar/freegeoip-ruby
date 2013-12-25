# Code below borrowed from geocoder gem https://github.com/alexreisner/geocoder
module Freegeoip
  class IpAddress < String

    def loopback?
      valid? && (self == "0.0.0.0" || !self.match(/\A127\./).nil?)
    end

    def valid?
      !!self.match(/\A(::ffff:)?(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\z/)
    end
  end
end

