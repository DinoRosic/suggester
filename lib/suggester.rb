require 'faraday'
require 'faraday_middleware'

module Suggester
  autoload :Connection, 'suggester/connection'
  autoload :Base,       'suggester/base'
  autoload :Client,     'suggester/client'
  module Api
    autoload :Google,    'suggester/api/google'
    autoload :Bing,      'suggester/api/bing'
    autoload :Yahoo,     'suggester/api/yahoo'
    autoload :Amazon,    'suggester/api/amazon'
    autoload :Ebay,      'suggester/api/ebay'
    autoload :Wikipedia, 'suggester/api/wikipedia'
  end
end
