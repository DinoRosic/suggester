module Suggester
  module Api
    class Amazon < Base

      private

      def map_response(response)
        response.shift
        response.first
      end

      def base_url
        'http://completion.amazon.com/search/complete'
      end

      def options
        { 'search-alias' => 'aps', client: 'amazon-search-ui', mkt: 1, q: term }
      end

    end
  end
end
