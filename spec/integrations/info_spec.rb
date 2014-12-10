require 'spec_helper'

describe TvrageApi::Info do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.info }

  describe 'real request' do
    describe '.find' do
      it 'should return response class' do
        response = model.find(show: 'buffy')
        ap response.body

        expect(response).to be_a(Faraday::Response)
        expect(response.status).to eq(200)
        expect(response.body).to be_a(String)
      end
    end
  end
end
