require 'spec_helper'

describe Suggester::Api::Bing, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    bing = Suggester::Api::Bing.new('dog')
    api_stub(bing, ['dog', response])
    expect(bing.get).to eql(response)
  end
end
