require 'faraday'
require 'faraday_middleware'

module Suggester
  autoload :Connection, 'suggester/connection'
  autoload :Base, 'suggester/base'
  module Api
    autoload :Google, 'suggester/api/google'
  end
end
