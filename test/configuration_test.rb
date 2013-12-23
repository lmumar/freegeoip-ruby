require 'test_helper'

class ConfigurationTest < Test::Unit::TestCase
  def test_use_default_if_configuration_is_empty
    Freegeoip.setup({}).tap do |config|
      assert_equal config[:host], "127.0.0.1"
      assert_equal config[:port], 8080
      assert_equal config[:timeout], 2
    end
  end

  def test_use_provided_settings_if_specified
    Freegeoip.setup(:host => '10.0.0.3').tap do |config|
      assert_equal config[:host], "10.0.0.3"
      assert_equal config[:port], 8080
      assert_equal config[:timeout], 2
    end

    Freegeoip.setup(:port => 8081).tap do |config|
      assert_equal config[:host], "127.0.0.1"
      assert_equal config[:port], 8081
      assert_equal config[:timeout], 2
    end

    Freegeoip.setup(:timeout => 10, :port => 8090).tap do |config|
      assert_equal config[:host], "127.0.0.1"
      assert_equal config[:port], 8090
      assert_equal config[:timeout], 10
    end
  end
end

