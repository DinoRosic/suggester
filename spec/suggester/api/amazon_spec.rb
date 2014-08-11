require 'spec_helper'

describe Suggester::Api::Amazon, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    amazon = Suggester::Api::Amazon.new('dog')
    api_stub(amazon, ['dog', response, [{nodes: ['dog']}, {}, {}], []])
    expect(amazon.get).to eql(response)
  end
end
