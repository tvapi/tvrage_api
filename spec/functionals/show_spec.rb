require 'spec_helper'

describe TvrageApi::Show do
  let(:client) { TvrageApi::Client.new(adapter: :test, adapter_options: faraday_stubs) }
  let(:model) { client.show }

  let(:find_data) { File.read('spec/fixtures/show_info.xml') }
  let(:find_full_data) { File.read('spec/fixtures/full_show_info.xml') }
  let(:episodes_data) { File.read('spec/fixtures/episode_list.xml') }
  let(:episode_data) { File.read('spec/fixtures/episode_info.xml') }
  let(:all_data) { File.read('spec/fixtures/show_list.xml') }

  let(:faraday_stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('/feeds/showinfo.php?sid=2930') { [200, { content_type: 'xml' }, find_data] }
      stub.get('/feeds/full_show_info.php?sid=2930') { [200, { content_type: 'xml' }, find_full_data] }
      stub.get('/feeds/episode_list.php?sid=2930') { [200, { content_type: 'xml' }, episodes_data] }
      stub.get('/feeds/episodeinfo.php?sid=2930&ep=2x04') { [200, { content_type: 'xml' }, episode_data] }
      stub.get('/feeds/show_list.php') { [200, { content_type: 'xml' }, all_data] }
    end
  end

  describe '.find' do
    it 'should return Faraday::Response class' do
      expect(model.find(sid: 2930)).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.find(sid: 2930).body).to be_a(Hash)
    end
  end

  describe '.find_url' do
    it 'should return correct url' do
      expect(model.find_url(sid: 2930)).to eq('http://services.tvrage.com/feeds/showinfo.php?sid=2930')
    end
  end

  describe '.find_full' do
    it 'should return Faraday::Response class' do
      expect(model.find_full(sid: 2930)).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.find_full(sid: 2930).body).to be_a(Hash)
    end
  end

  describe '.find_full_url' do
    it 'should return correct url' do
      expect(model.find_full_url(sid: 2930)).to eq('http://services.tvrage.com/feeds/full_show_info.php?sid=2930')
    end
  end

  describe '.episodes' do
    it 'should return Faraday::Response class' do
      expect(model.episodes(sid: 2930)).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.episodes(sid: 2930).body).to be_a(Hash)
    end
  end

  describe '.episodes_url' do
    it 'should return correct url' do
      expect(model.episodes_url(sid: 2930)).to eq('http://services.tvrage.com/feeds/episode_list.php?sid=2930')
    end
  end

  describe '.episode' do
    it 'should return Faraday::Response class' do
      expect(model.episode(sid: 2930, ep: '2x04')).to be_a(Faraday::Response)
    end

    it 'should return Hash class for body reponse' do
      expect(model.episode(sid: 2930, ep: '2x04').body).to be_a(Hash)
    end
  end

  describe '.episode_url' do
    it 'should return correct url' do
      expect(model.episode_url(sid: 2930, ep: '2x04')).to eq('http://services.tvrage.com/feeds/episodeinfo.php?sid=2930&ep=2x04')
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

  describe '.find_url' do
    it 'should return correct url' do
      expect(model.all_url).to eq('http://services.tvrage.com/feeds/show_list.php')
    end
  end
end
