require 'spec_helper'

describe Suggester::Api::Yahoo, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    yahoo = Suggester::Api::Yahoo.new('dog')
    api_stub(yahoo, ['dog', response])
    expect(yahoo.get).to eql(response)
  end
end
