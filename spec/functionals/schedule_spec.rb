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
    context 'hash attributes' do
      it 'should return Faraday::Response class' do
        expect(model.quick(country: 'US')).to be_a(Faraday::Response)
      end

      it 'should return String class for body reponse' do
        expect(model.quick(country: 'US').body).to be_a(String)
      end
    end

    context 'normal attributes' do
      it 'should return Faraday::Response class' do
        expect(model.quick('US')).to be_a(Faraday::Response)
      end

      it 'should return String class for body reponse' do
        expect(model.quick('US').body).to be_a(String)
      end
    end
  end

  describe '.quick_url' do
    context 'hash attributes' do
      it 'should return correct url' do
        expect(model.quick_url(country: 'US')).to eq('http://services.tvrage.com/tools/quickschedule.php?country=US')
      end
    end

    context 'normal attributes' do
      it 'should return correct url' do
        expect(model.quick_url('US')).to eq('http://services.tvrage.com/tools/quickschedule.php?country=US')
      end
    end
  end

  describe '.full' do
    context 'hash attributes' do
      it 'should return Faraday::Response class' do
        expect(model.full(country: 'US')).to be_a(Faraday::Response)
      end

      it 'should return Hash class for body reponse' do
        expect(model.full(country: 'US').body).to be_a(Hash)
      end
    end

    context 'normal attributes' do
      it 'should return Faraday::Response class' do
        expect(model.full('US', nil)).to be_a(Faraday::Response)
      end

      it 'should return Hash class for body reponse' do
        expect(model.full('US', nil).body).to be_a(Hash)
      end
    end
  end

  describe '.quick_url' do
    context 'hash attributes' do
      it 'should return correct url' do
        expect(model.full_url(country: 'US')).to eq('http://services.tvrage.com/feeds/fullschedule.php?country=US')
      end
    end

    context 'normal attributes' do
      it 'should return correct url' do
        expect(model.full_url('US', nil)).to eq('http://services.tvrage.com/feeds/fullschedule.php?country=US&')
      end
    end
  end
end
