require 'spec_helper'

describe TvrageApi::Request::Search do
  let(:klass) { TvrageApi::Request::Search }
  let(:model) { klass.new('http://example.com', name: 'buffy') }

  describe '#find' do
    it 'should call new with specific params' do
      klass.should_receive(:new).with('search.php', show: 'buffy')

      klass.find('buffy')
    end
  end

  describe '#find_full' do
    it 'should call new with specific params' do
      klass.should_receive(:new).with('full_search.php', show: 'buffy')

      klass.find_full('buffy')
    end
  end

  describe '#result' do
    it 'should call collection_response method' do
      model.should_receive(:collection_response)

      model.result
    end
  end
end