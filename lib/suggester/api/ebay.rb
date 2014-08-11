module Suggester
  module Api
    class Ebay < Base

      private

      def base_url
        'http://anywhere.ebay.com/services/suggest/'
      end

      def options
        { q: term }
      end

    end
  end
end
