module Suggester
  class Base
    attr_accessor :term

    def initialize(term)
      @term = term
    end

    def get
      response = Suggester::Connection.get(base_url, options)
      map_response(response)
    end

    private

    def map_response(response)
      response.shift
      response.flatten
    end

    def base_url
      raise NotImplementedError
    end

    def options
      raise NotImplementedError
    end
  end
end
