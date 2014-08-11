require 'spec_helper'

describe Suggester::Connection, '.connection' do
  it 'parses json' do
    connection = Suggester::Connection.connection
    expect(connection.builder.handlers).to include(FaradayMiddleware::ParseJson)
  end
end

describe Suggester::Connection, '.get' do
  it 'makes request and returns body' do
    stub_request('http://example.com', { success: true })
    expect(Suggester::Connection.get('http://example.com', {query: 'abc'})).to eql(success: true)
  end

  def stub_request(url, response)
    connection = Faraday.new do |builder|
      builder.adapter :test, Faraday::Adapter::Test::Stubs.new do |stub|
        stub.get(url) {[ 200, {}, response ]}
      end
    end
    expect(Suggester::Connection).to receive(:connection).and_return(connection)
  end
end
