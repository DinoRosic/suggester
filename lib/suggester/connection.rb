module Suggester
  class Connection
    class << self

      def get(url, params)
        connection.get(url, params).body
      end

      def connection
        Faraday.new do |conn|
          conn.response :json
          conn.adapter Faraday.default_adapter
        end
      end

    end
  end
end
