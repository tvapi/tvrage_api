require 'spec_helper'

describe TvrageApi::Recap do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.recap }

  let(:all_data) { File.read('spec/fixtures/all_recaps.xml') }
  let(:show_data) { File.read('spec/fixtures/show_recaps.xml') }
  let(:last_data) { File.read('spec/fixtures/last_recaps.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/recaps/all_recaps.php') { [200, { content_type: 'xml' }, all_data] }
      stub.get('/recaps/show_recaps.php?show=5410') { [200, { content_type: 'xml' }, show_data] }
      stub.get('/recaps/last_recaps.php?days=30') { [200, { content_type: 'xml' }, last_data] }
    end
  end

  describe '.all' do
    it 'should return Faraday::Response class' do
      expect(model.all).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.all.body).to be_a(Hash)
    end
  end

  describe '.all_url' do
    it 'should return correct url' do
      expect(model.all_url).to eq('http://services.tvrage.com/recaps/all_recaps.php')
    end
  end

  describe '.show' do
    context 'hash attributes' do
      it 'should return Faraday::Response class' do
        expect(model.show(id: 5410)).to be_a(Faraday::Response)
      end

      it 'should return Hash class for body reponse' do
        expect(model.show(id: 5410).body).to be_a(Hash)
      end
    end

    context 'normal attributes' do
      it 'should return Faraday::Response class' do
        expect(model.show(5410)).to be_a(Faraday::Response)
      end

      it 'should return Hash class for body reponse' do
        expect(model.show(5410).body).to be_a(Hash)
      end
    end
  end

  describe '.show_url' do
    context 'hash attributes' do
      it 'should return correct url' do
        expect(model.show_url(id: 5410)).to eq('http://services.tvrage.com/recaps/show_recaps.php?show=5410')
      end
    end

    context 'normal attributes' do
      it 'should return correct url' do
        expect(model.show_url(5410)).to eq('http://services.tvrage.com/recaps/show_recaps.php?show=5410')
      end
    end
  end

  describe '.last' do
    context 'hash attributes' do
      it 'should return Faraday::Response class' do
        expect(model.last(days: 30)).to be_a(Faraday::Response)
      end

      it 'should return Hash class for body reponse' do
        expect(model.last(days: 30).body).to be_a(Hash)
      end
    end

    context 'normal attributes' do
      it 'should return Faraday::Response class' do
        expect(model.last(30)).to be_a(Faraday::Response)
      end

      it 'should return String class for body reponse' do
        expect(model.last(30).body).to be_a(Hash)
      end
    end
  end

  describe '.last_url' do
    context 'hash attributes' do
      it 'should return correct url' do
        expect(model.last_url(days: 30)).to eq('http://services.tvrage.com/recaps/last_recaps.php?days=30')
      end
    end

    context 'normal attributes' do
      it 'should return correct url' do
        expect(model.last_url(30)).to eq('http://services.tvrage.com/recaps/last_recaps.php?days=30')
      end
    end
  end
end
