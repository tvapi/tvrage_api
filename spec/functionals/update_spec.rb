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
      model.last.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.last.body == Hash
    end
  end

  describe '.last_url' do
    it 'should return correct url' do
      model.last_url.should == 'http://services.tvrage.com/feeds/last_updates.php'
    end
  end
end
