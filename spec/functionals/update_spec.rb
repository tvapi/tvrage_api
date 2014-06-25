require 'spec_helper'

describe TvrageApi::Update do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.update }

  let(:all_data) { File.read('spec/fixtures/show_list.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/feeds/show_list.php') { [200, { content_type: 'xml' }, all_data] }
    end
  end

  describe '.all' do
    it 'should return Faraday::Response class' do
      model.all.class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.all.body == Hash
    end
  end

  describe '.find_url' do
    it 'should return correct url' do
      model.all_url.should == 'http://services.tvrage.com/feeds/show_list.php'
    end
  end
end
