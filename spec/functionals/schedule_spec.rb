require 'spec_helper'

describe TvrageApi::Schedule do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.schedule }

  let(:quick_data) { File.read('spec/fixtures/quick_schedule.txt') }
  let(:full_data) { File.read('spec/fixtures/full_schedule.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/tools/quickschedule.php') { [200, { content_type: 'text' }, quick_data] }
      stub.get('/feeds/fullschedule.php?country=US') { [200, { content_type: 'xml' }, full_data] }
    end
  end

  describe '.quick' do
    it 'should return Faraday::Response class' do
      model.quick.class.should == Faraday::Response
    end

    it 'should return String class for body reponse' do
      model.quick.body == String
    end
  end

  describe '.quick_url' do
    it 'should return correct url' do
      model.quick_url.should == 'http://services.tvrage.com/tools/quickschedule.php'
    end
  end

  describe '.full' do
    it 'should return Faraday::Response class' do
      model.full(country: 'US').class.should == Faraday::Response
    end

    it 'should return Hash class for body reponse' do
      model.full(country: 'US').body == Hash
    end
  end

  describe '.quick_url' do
    it 'should return correct url' do
      model.full_url(country: 'US').should == 'http://services.tvrage.com/feeds/fullschedule.php?country=US'
    end
  end
end
