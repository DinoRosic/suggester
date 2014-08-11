module Suggester
  class Client
    attr_reader :providers

    def initialize(providers=[])
      @providers = if providers.any?
                     providers
                   else
                     default_providers
                   end
    end

    def suggestions(query)
      providers.map do |provider|
        klass = provider_class(provider)
        klass.new(query).get
      end.flatten
    end

    def provider_class(provider)
      Api.const_get(provider.capitalize)
    end

    def default_providers
      Api.constants.map(&:downcase)
    end
  end
end
