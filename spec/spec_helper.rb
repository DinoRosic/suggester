require 'suggester'
require 'rspec'
require 'faraday'

Dir['spec/support/**/*.rb'].each { |f| require File.expand_path(f) }

RSpec.configure do |config|
  config.include ApiStubHelper
end
