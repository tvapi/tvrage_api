require 'spec_helper'

describe TvrageApi::Search do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.search }

  let(:search_data) { File.read('spec/fixtures/search.xml') }
  let(:full_search_data) { File.read('spec/fixtures/full_search.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/feeds/search.php?show=buffy') { [200, { content_type: 'xml' }, search_data] }
      stub.get('/feeds/full_search.php?show=buffy') { [200, { content_type: 'xml' }, full_search_data] }
    end
  end

  describe '.by_name' do
    it 'should return Faraday::Response class' do
      expect(model.by_name(show: 'buffy')).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.by_name(show: 'buffy').body).to be_a(Hash)
    end
  end

  describe '.by_name_url' do
    it 'should return correct url' do
      expect(model.by_name_url(show: 'buffy')).to eq('http://services.tvrage.com/feeds/search.php?show=buffy')
    end
  end

  describe '.full_by_name' do
    it 'should return Faraday::Response class' do
      expect(model.full_by_name(show: 'buffy')).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.full_by_name(show: 'buffy').body).to be_a(Hash)
    end
  end

  describe '.full_by_name_url' do
    it 'should return correct url' do
      expect(model.full_by_name_url(show: 'buffy')).to eq('http://services.tvrage.com/feeds/full_search.php?show=buffy')
    end
  end
end
