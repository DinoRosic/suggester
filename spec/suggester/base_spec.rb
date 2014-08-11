require 'spec_helper'

describe Suggester::Base, '#base_url' do
  it 'raises exception when base url is missing' do
    dummy = Suggester::Base.new('dog')

    expect{ dummy.get }.to raise_exception NotImplementedError
  end
end

describe Suggester::Base, '#options' do
  it 'raises exception when base url is missing' do
    dummy = Suggester::Base.new('dog')

    expect(dummy).to receive(:base_url).and_return('http://example.com')
    expect{ dummy.get }.to raise_exception NotImplementedError
  end
end
