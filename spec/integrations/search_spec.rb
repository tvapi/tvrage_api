require 'spec_helper'

describe TvrageApi::Search do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.search }

  describe 'real request' do
    describe '.by_name' do
      it 'should return response class' do
        response = model.by_name(name: 'buffy')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end

    describe '.full_by_name' do
      it 'should return response class' do
        response = model.full_by_name(name: 'buffy')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end
  end
end
