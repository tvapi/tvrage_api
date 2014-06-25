require 'spec_helper'

describe TvrageApi::Update do
  let(:client) { TvrageApi::Client.new }
  let(:model) { client.update }

  describe 'real request' do
    describe '.all' do
      it 'should return response class' do
        model.all.class.should == Faraday::Response
      end
    end
  end
end
