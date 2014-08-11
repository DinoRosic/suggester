module Suggester
  module Api
    class Yahoo < Base

      private

      def base_url
        'http://ff.search.yahoo.com/gossip'
      end

      def options
        { output: 'fxjson', command: term }
      end

    end
  end
end
