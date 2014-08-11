module ApiStubHelper
  def api_stub(suggestion, response)
    connection = Faraday.new do |builder|
      builder.adapter :test, Faraday::Adapter::Test::Stubs.new do |stub|
        stub.get(suggestion.send(:base_url)) {[ 200, {}, response ]}
      end
    end

    expect(Suggester::Connection).to receive(:connection).and_return(connection)
  end

  def api_stubs(apis)
    apis.each do |provider, value|
      expect(provider_klass(provider)).to receive(:new).and_return(suggester(value))
    end
  end

  private

  def provider_klass(provider)
    Suggester::Api.const_get(provider.capitalize)
  end

  def suggester(value)
    double(:suggester, get: value)
  end
end
