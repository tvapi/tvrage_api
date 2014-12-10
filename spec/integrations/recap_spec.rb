require 'spec_helper'

describe TvrageApi::Recap do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.recap }

  describe 'real request' do
    describe '.all' do
      it 'should return response class' do
        response = model.all
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.show' do
      it 'should return response class' do
        response = model.show(id: 5410)
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.last' do
      it 'should return response class' do
        response = model.last(30)
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end
  end
end
