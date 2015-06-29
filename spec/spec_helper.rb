$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "semaphore_api"
require "byebug"
require "vcr"
require "webmock"

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.allow_http_connections_when_no_cassette = false
  config.default_cassette_options = { :record => :once }
  config.configure_rspec_metadata!
end
