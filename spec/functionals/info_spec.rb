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
    context 'hash attributes' do
      it 'should return Faraday::Response class' do
        expect(model.find(show: 'Alias')).to be_a(Faraday::Response)
      end

      it 'should return String class for body reponse' do
        expect(model.find(show: 'Alias').body).to be_a(String)
      end
    end

    context 'normal attributes' do
      it 'should return Faraday::Response class' do
        expect(model.find('Alias')).to be_a(Faraday::Response)
      end

      it 'should return String class for body reponse' do
        expect(model.find('Alias').body).to be_a(String)
      end
    end
  end

  describe '.find_url' do
    context 'hash attributes' do
      it 'should return correct url' do
        expect(model.find_url(show: 'Alias')).to eq('http://services.tvrage.com/tools/quickinfo.php?show=Alias')
      end
    end

    context 'normal attributes' do
      it 'should return correct url' do
        expect(model.find_url('Alias')).to eq('http://services.tvrage.com/tools/quickinfo.php?show=Alias')
      end
    end
  end
end
