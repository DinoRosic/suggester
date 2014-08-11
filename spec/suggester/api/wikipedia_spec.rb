require 'spec_helper'

describe Suggester::Api::Wikipedia, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    wikipedia = Suggester::Api::Wikipedia.new('dog')
    api_stub(wikipedia, ['dog', response])
    expect(wikipedia.get).to eql(response)
  end
end
