require 'spec_helper'

describe Suggester::Client, '.suggestions' do
  let(:suggestions) {{
      google: ['dog'],
      bing: ['mouse'],
      wikipedia: ['cow'],
      ebay: ['spam'],
      yahoo: ['dog'],
      amazon: ['cat'] }}

  it 'returns suggestions from all providers' do
    api_stubs(suggestions)

    client = Suggester::Client.new
    expect(client.suggestions('dog')).to match_array(suggestions.values.flatten)
  end

  it 'returns suggestions from selected providers' do
    selected_apis = [:google, :bing]
    expected_suggestions = suggestions.select do |api,suggestions|
        selected_apis.include?(api)
      end

    api_stubs(expected_suggestions)

    client = Suggester::Client.new(selected_apis)
    expect(client.suggestions('dog')).to match_array(expected_suggestions.values.flatten)
  end
end
