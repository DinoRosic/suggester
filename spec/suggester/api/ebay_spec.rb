require 'spec_helper'

describe Suggester::Api::Ebay, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    ebay = Suggester::Api::Ebay.new('dog')
    api_stub(ebay, ['dog', response])
    expect(ebay.get).to eql(response)
  end
end
