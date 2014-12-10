require 'spec_helper'

describe TvrageApi::Update do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.update }

  describe 'real request' do
    describe '.last' do
      it 'should return response class' do
        response = model.last(hours: 48, sort: 'episodes', since: 1418056721)
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(Hash)
      end
    end
  end
end
