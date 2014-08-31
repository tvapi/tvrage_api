require 'spec_helper'

describe TvrageApi::Update do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.update }

  let(:last_data) { File.read('spec/fixtures/last_updates.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/feeds/last_updates.php') { [200, { content_type: 'xml' }, last_data] }
    end
  end

  describe '.last' do
    it 'should return Faraday::Response class' do
      expect(model.last).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.last.body).to be_a(Hash)
    end
  end

  describe '.last_url' do
    it 'should return correct url' do
      expect(model.last_url).to eq('http://services.tvrage.com/feeds/last_updates.php')
    end
  end
end
