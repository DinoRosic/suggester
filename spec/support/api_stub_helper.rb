module ApiStubHelper
  def api_stub(suggestion, response)
    connection = Faraday.new do |builder|
      builder.adapter :test, Faraday::Adapter::Test::Stubs.new do |stub|
        stub.get(suggestion.send(:base_url)) {[ 200, {}, response ]}
      end
    end

    expect(Suggester::Connection).to receive(:connection).and_return(connection)
  end
end
