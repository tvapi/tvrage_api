require 'spec_helper'

describe TvrageApi::Info do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.info }

  describe 'real request' do
    describe '.find' do
      it 'should return response class' do
        model.find(show: 'buffy').class.should == Faraday::Response
      end
    end
  end
end
