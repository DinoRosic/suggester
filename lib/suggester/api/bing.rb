module Suggester
  module Api
    class Bing < Base

      private

      def base_url
        'http://api.bing.com/osjson.aspx'
      end

      def options
        { query: term }
      end

    end
  end
end
