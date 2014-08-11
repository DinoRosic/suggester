require 'spec_helper'

describe Suggester::Api::Google, '.get' do
  let(:response) { ['dog house', 'dog cat', 'dog food'] }

  it 'returns array of suggestions' do
    google = Suggester::Api::Google.new('dog')
    api_stub(google, ['dog', response])
    expect(google.get).to eql(response)
  end
end
