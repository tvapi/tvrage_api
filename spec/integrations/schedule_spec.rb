require 'spec_helper'

describe TvrageApi::Schedule do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.schedule }

  describe 'real request' do
    describe '.quick' do
      it 'should return response class' do
        response = model.quick(country: 'US')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(String)
      end
    end

    describe '.full' do
      it 'should return response class' do
        response = model.full(country: 'US')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end
  end
end
