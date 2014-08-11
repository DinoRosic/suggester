module Suggester
  module Api
    class Google < Base

      private

      def base_url
        'http://suggestqueries.google.com/complete/search'
      end

      def options
        { output: 'firefox', client: 'firefox', q: term }
      end

    end
  end
end
