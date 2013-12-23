require 'test_helper'

class FreegeoipTest < Test::Unit::TestCase
  def setup
    Freegeoip.setup(:host=>"127.0.0.1", :port=>8080, :timeout=>1)
  end

  def test_lookup_returns_hash
    assert Freegeoip.lookup("121.54.11.205").is_a?(Hash)
  end

  def test_lookup_returns_non_empty_hash
    result = Freegeoip.lookup("121.54.11.205")
    assert !result.empty?
  end
end

