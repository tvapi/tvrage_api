require 'spec_helper'

describe TvrageApi::Show do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.show }

  describe 'real request' do
    describe '.find' do
      it 'should return response class' do
        response = model.find(id: '2930')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.find_full' do
      it 'should return response class' do
        response = model.find_full(id: '2930')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.episodes' do
      it 'should return response class' do
        response = model.episodes(id: '2930')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.episode' do
      it 'should return response class' do
        response = model.episode(show_id: '2930', episode: '2x04')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.all' do
      it 'should return response class' do
        response = model.all
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end
  end
end
