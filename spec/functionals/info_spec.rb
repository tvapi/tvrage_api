require 'spec_helper'

describe TvrageApi::Info do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.info }

  let(:data) { File.read('spec/fixtures/quick_info.txt') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/tools/quickinfo.php?show=Alias') { [200, { content_type: 'text' }, data] }
    end
  end

  describe '.find' do
    it 'should return Faraday::Response class' do
      model.find(show: 'Alias').class.should == Faraday::Response
    end

    it 'should return String class for body reponse' do
      model.find(show: 'Alias').body == String
    end
  end

  describe '.find_url' do
    it 'should return correct url' do
      model.find_url(show: 'Alias').should == 'http://services.tvrage.com/tools/quickinfo.php?show=Alias'
    end
  end
end
