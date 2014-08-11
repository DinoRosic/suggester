module Suggester
  module Api
    class Wikipedia < Base

      private

      def base_url
        'http://en.wikipedia.org/w/api.php'
      end

      def options
        { action: 'opensearch', search: term }
      end

    end
  end
end
